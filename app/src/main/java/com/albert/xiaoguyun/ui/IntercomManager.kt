package com.albert.xiaoguyun.ui

import android.content.Context
import android.media.AudioDeviceInfo
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.MediaRecorder
import com.albert.xiaoguyun.DebugLog
import com.albert.xiaoguyun.audio.AudioGain
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.G711
import com.albert.xiaoguyun.net.RtmpPublisher
import com.albert.xiaoguyun.ws.WsClient
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Full intercom: code 26 switch + mic capture (8 kHz mono PCM16) ->
 * software AGC -> G.711 A-law -> RTMP publish to the live address with its
 * last char replaced by '3'.
 *
 * v1.2.4 routing fix (measured on the Redmi Pad Pro, HyperOS 3 / Android 16
 * via `dumpsys media.audio_flinger`):
 *  With MODE_IN_COMMUNICATION + speakerphone ON, the audio policy forces
 *  every AudioRecord source onto AUDIO_DEVICE_IN_BACK_MIC (~-60 dBFS, the
 *  user speaks toward the screen so the rear mic hears almost nothing).
 *  Keeping MODE_IN_COMMUNICATION but NOT forcing the speaker on routes the
 *  record to the bottom BUILTIN_MIC, which is also explicitly pinned via
 *  AudioRecord.setPreferredDevice. Local live playback stays muted for the
 *  whole talk, so half-duplex echo is controlled without the platform AEC
 *  that VOICE_COMMUNICATION turns on (measured unstable: one run gated the
 *  talker to digital silence).
 *
 *  A compact software AGC (AudioGain) replaces the WebRTC AGC the original
 *  app runs inside native libdgplayer; it normalises quiet voices and
 *  limits loud ones before the 13-bit G.711 encode.
 *
 *  Other invariants kept from v1.2.3: publish starts only after the code-26
 *  volplay ack (4 s fallback), per-second level logging, and fatal-failure
 *  auto-reset that always sends volplay state=0.
 */
class IntercomManager(
    private val context: Context,
    private val ws: WsClient,
    private val api: ApiClient,
    private val sn: String,
    /** Current live RTMP address, or null if not playing yet. */
    private val rtmpAddr: () -> String?,
    /** Called with true while talking so the UI can mute local playback. */
    private val setLocalMuted: (Boolean) -> Unit,
    private val onState: (String) -> Unit,
) {
    private val audioManager: AudioManager =
        context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private val talking = AtomicBoolean(false)
    private var publisher: RtmpPublisher? = null
    private var recordThread: Thread? = null
    private var record: AudioRecord? = null
    private var prevMode = AudioManager.MODE_NORMAL
    private var prevSpeaker = false

    private var audioFramesSent = 0
    private var talkStartMs = 0L
    /** Peak |PCM| over the whole talk; 0 means the mic never delivered audio. */
    private var sessionPeak = 0

    val isTalking: Boolean get() = talking.get()

    /** Uplink address: live RTMP URL with its last char replaced by '3'. */
    fun uplinkAddr(): String? = rtmpAddr()?.dropLast(1)?.plus("3")

    fun start() {
        if (talking.getAndSet(true)) return
        val uplink = uplinkAddr()
        if (uplink.isNullOrBlank()) {
            talking.set(false)
            onState("对讲失败：还没有直播地址，先等画面出来")
            return
        }
        // 1) Switch the camera side into talk mode first; publish only after
        //    the ack (4 s fallback — original app ordering, no hard block).
        val ackLatch = CountDownLatch(1)
        ws.requestVolPlay(sn, true, timeoutMs = 4000) { ok ->
            DebugLog.log("TALK", "volplay state=1 回包=${if (ok) "收到" else "4秒超时/失败，按兜底继续"}")
            ackLatch.countDown()
        }
        val uplinkHost = uplink.substringAfter("://").substringBefore("/")
        DebugLog.log("TALK", "开始对讲 uplink=$uplinkHost")
        audioFramesSent = 0
        sessionPeak = 0
        talkStartMs = System.currentTimeMillis()
        prevMode = audioManager.mode
        prevSpeaker = audioManager.isSpeakerphoneOn
        try {
            // v1.2.4: MODE_IN_COMMUNICATION without forcing speakerphone on.
            // Speaker-on in this ROM reroutes the mic to the rear BACK_MIC;
            // speaker-off keeps the bottom main mic selected. Downlink is
            // muted while talking anyway, so the earpiece routing is moot.
            audioManager.mode = AudioManager.MODE_IN_COMMUNICATION
        } catch (_: Exception) { }
        setLocalMuted(true)
        onState("对讲中…按住说话，松开结束")
        recordThread = Thread({
            try {
                // Quick press-and-release: stop() already flipped talking off.
                if (!talking.get()) return@Thread
                // Wait up to 4 s for the volplay ack (original app ordering);
                // a timeout simply falls through and publishes anyway.
                ackLatch.await(4, TimeUnit.SECONDS)
                if (!talking.get()) return@Thread
                val pub = RtmpPublisher(uplink)
                publisher = pub
                if (!pub.start()) {
                    failReset("音频上行连接失败（${pub.lastError}），对讲已关闭")
                    return@Thread
                }
                DebugLog.log("TALK", "音频上行已连接")
                val minBuf = AudioRecord.getMinBufferSize(
                    8000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
                )
                val rec = AudioRecord(
                    // MIC source (original AudioCapture.DEFAULT_SOURCE = 1).
                    // Not VOICE_COMMUNICATION: its platform AEC measured
                    // unstable on this ROM and once gated speech to silence.
                    MediaRecorder.AudioSource.MIC, 8000,
                    AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
                    (minBuf * 2).coerceAtLeast(3200),
                )
                record = rec
                if (rec.state != AudioRecord.STATE_INITIALIZED) {
                    failReset("麦克风初始化失败（被占用或权限异常），对讲已关闭")
                    return@Thread
                }
                // Belt-and-suspenders: pin the bottom built-in mic even if a
                // ROM update changes the policy routing again.
                val mainMic = audioManager.getDevices(AudioManager.GET_DEVICES_INPUTS)
                    .firstOrNull { it.type == AudioDeviceInfo.TYPE_BUILTIN_MIC }
                if (mainMic != null) {
                    val pinned = rec.setPreferredDevice(mainMic)
                    DebugLog.log("TALK", "setPreferredDevice(底部主麦)=$pinned 设备=${mainMic.productName}")
                }
                rec.startRecording()
                DebugLog.log(
                    "TALK",
                    "录音已启动 实际路由=${rec.routedDevice?.let { deviceName(it.type) } ?: "未知"}",
                )
                val gain = AudioGain()
                val pcm = ShortArray(160) // 20 ms @ 8 kHz
                val pcmBytes = ByteArray(320)
                var windowRawPeak = 0
                var windowOutPeak = 0
                var windowSum = 0L
                while (talking.get()) {
                    var got = 0
                    while (got < 320 && talking.get()) {
                        val n = rec.read(pcmBytes, got, 320 - got)
                        if (n < 0) {
                            failReset("麦克风读取错误 code=$n，对讲已关闭")
                            return@Thread
                        }
                        got += n
                    }
                    if (got < 320) continue
                    var rawPeak = 0
                    for (i in pcm.indices) {
                        val lo = pcmBytes[i * 2].toInt() and 0xFF
                        val hi = pcmBytes[i * 2 + 1].toInt()
                        pcm[i] = ((hi shl 8) or lo).toShort()
                        val v = kotlin.math.abs(pcm[i].toInt())
                        if (v > rawPeak) rawPeak = v
                        windowSum += v
                    }
                    if (rawPeak > windowRawPeak) windowRawPeak = rawPeak
                    if (rawPeak > sessionPeak) sessionPeak = rawPeak
                    // Software AGC (replaces the original's WebRTC AGC).
                    gain.process(pcm)
                    if (gain.lastOutPeak > windowOutPeak) windowOutPeak = gain.lastOutPeak
                    pub.sendAudio(G711.encode(pcm))
                    audioFramesSent++
                    // One diagnostic line per second (50 x 20 ms frames).
                    if (audioFramesSent % 50 == 0) {
                        val avg = windowSum / (50 * 160)
                        DebugLog.log(
                            "TALK",
                            "麦克风电平 原始峰值=$windowRawPeak 均值=$avg " +
                                "AGC后峰值=$windowOutPeak（原始峰值长期<300 基本是静音）",
                        )
                        windowRawPeak = 0
                        windowOutPeak = 0
                        windowSum = 0L
                    }
                    // The relay rejected/closed the publish mid-talk.
                    if (!pub.isAlive) {
                        failReset("音频上行中断（${pub.lastError ?: "连接关闭"}），对讲已关闭")
                        return@Thread
                    }
                }
            } catch (e: Exception) {
                DebugLog.log("TALK", "对讲录音异常：${e.message}")
                failReset("对讲异常：${e.message}")
            } finally {
                try { record?.stop() } catch (_: Exception) {}
                try { record?.release() } catch (_: Exception) {}
                record = null
            }
        }, "intercom-mic").apply { isDaemon = true; start() }
    }

    fun stop() {
        if (!talking.getAndSet(false)) return
        try { recordThread?.join(800) } catch (_: Exception) {}
        recordThread = null
        try { publisher?.stop() } catch (_: Exception) {}
        val accepted = publisher?.publishAccepted
        publisher = null
        DebugLog.log(
            "TALK",
            "结束对讲 时长=${System.currentTimeMillis() - talkStartMs}ms " +
                "已发音频帧=$audioFramesSent 全程峰值=$sessionPeak " +
                "服务端onStatus=${if (accepted == true) "已确认" else "未观测到"}",
        )
        if (sessionPeak < 300 && audioFramesSent > 0) {
            DebugLog.log("TALK", "警告：整段对讲麦克风峰值仅 $sessionPeak，设备端可能收不到人声（检查音源/权限/占用）")
        }
        ws.sendVolPlay(sn, false)
        restoreAudio()
        // Close the server-side publish path (original app: DGApiPushRepository).
        val ip = extractIp(rtmpAddr())
        if (!ip.isNullOrBlank()) {
            val closeUrl = "http://$ip:7788/closepath?rtmpurl=rtmp://$ip:7768/video/$sn/3"
            CoroutineScope(Dispatchers.IO).launch { api.getPlainQuiet(closeUrl) }
        }
        onState("对讲已关闭")
    }

    /** Fatal-failure teardown: mirrors stop() but always sends state=0 so the
     *  camera side leaves talk mode even if the uplink never came up. */
    private fun failReset(msg: String) {
        if (!talking.getAndSet(false)) return
        DebugLog.log("TALK", "对讲失败复位：$msg")
        try { publisher?.stop() } catch (_: Exception) {}
        publisher = null
        ws.sendVolPlay(sn, false)
        restoreAudio()
        val ip = extractIp(rtmpAddr())
        if (!ip.isNullOrBlank()) {
            val closeUrl = "http://$ip:7788/closepath?rtmpurl=rtmp://$ip:7768/video/$sn/3"
            CoroutineScope(Dispatchers.IO).launch { api.getPlainQuiet(closeUrl) }
        }
        onState(msg)
    }

    private fun restoreAudio() {
        try {
            audioManager.mode = prevMode
            audioManager.isSpeakerphoneOn = prevSpeaker
        } catch (_: Exception) { }
        setLocalMuted(false)
    }

    private fun extractIp(rtmpUrl: String?): String? {
        if (rtmpUrl.isNullOrBlank() || !rtmpUrl.startsWith("rtmp://")) return null
        return rtmpUrl.removePrefix("rtmp://").substringBefore(':').substringBefore('/')
    }

    private fun deviceName(type: Int): String = when (type) {
        AudioDeviceInfo.TYPE_BUILTIN_MIC -> "底部主麦"
        27 -> "后置麦" // AudioDeviceInfo.TYPE_BUILTIN_BACK_MIC (API 31)
        AudioDeviceInfo.TYPE_WIRED_HEADSET -> "有线耳机麦"
        AudioDeviceInfo.TYPE_BLUETOOTH_SCO -> "蓝牙麦"
        else -> "type=$type"
    }
}
