package com.albert.xiaoguyun.ui

import android.content.Context
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.MediaRecorder
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.G711
import com.albert.xiaoguyun.net.RtmpPublisher
import com.albert.xiaoguyun.ws.WsClient
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Full intercom: code 26 switch + mic capture (8 kHz mono PCM16, matching
 * the original app's AudioCapture) -> G.711 A-law -> RTMP publish to the
 * live address with its last char replaced by '3'.
 *
 * Echo handling (mirrors the original app's DGPlayerUtil.initWebRtc):
 * VOICE_COMMUNICATION mic source (platform AEC/NS), AudioManager
 * MODE_IN_COMMUNICATION + speakerphone on while talking, and the local
 * live playback is muted for the duration (restored on stop) so the mic
 * cannot hear the speaker.
 *
 * TODO (unverified): the RTMP publish path and the FLV audio-tag byte have
 * never run against the real server (see RtmpPublisher). The code-26
 * switch frame is sent first either way, so a failed uplink degrades to
 * the v1.0 behaviour (switch only) instead of breaking the call.
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
        ws.sendVolPlay(sn, true)
        prevMode = audioManager.mode
        prevSpeaker = audioManager.isSpeakerphoneOn
        try {
            audioManager.mode = AudioManager.MODE_IN_COMMUNICATION
            audioManager.isSpeakerphoneOn = true
        } catch (_: Exception) { }
        setLocalMuted(true)
        onState("对讲中…按住说话，松开结束")
        recordThread = Thread({
            try {
                val pub = RtmpPublisher(uplink)
                publisher = pub
                if (!pub.start()) {
                    // Degrade to switch-only: the peer side still got code 26.
                    onState("对讲开关已发，但音频上行连接失败（${pub.lastError}）；请先确认直播已跑通")
                }
                val minBuf = AudioRecord.getMinBufferSize(
                    8000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
                )
                val rec = AudioRecord(
                    MediaRecorder.AudioSource.VOICE_COMMUNICATION, 8000,
                    AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
                    (minBuf * 2).coerceAtLeast(3200),
                )
                record = rec
                rec.startRecording()
                val pcm = ShortArray(160) // 20 ms @ 8 kHz
                val pcmBytes = ByteArray(320)
                while (talking.get()) {
                    var got = 0
                    while (got < 320) {
                        val n = rec.read(pcmBytes, got, 320 - got)
                        if (n <= 0) break
                        got += n
                    }
                    if (got < 320) continue
                    for (i in pcm.indices) {
                        val lo = pcmBytes[i * 2].toInt() and 0xFF
                        val hi = pcmBytes[i * 2 + 1].toInt()
                        pcm[i] = ((hi shl 8) or lo).toShort()
                    }
                    pub.sendAudio(G711.encode(pcm))
                }
            } catch (e: Exception) {
                onState("对讲录音异常：${e.message}")
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
        publisher = null
        ws.sendVolPlay(sn, false)
        try {
            audioManager.mode = prevMode
            audioManager.isSpeakerphoneOn = prevSpeaker
        } catch (_: Exception) { }
        setLocalMuted(false)
        // Close the server-side publish path (original app: DGApiPushRepository).
        val ip = extractIp(rtmpAddr())
        if (!ip.isNullOrBlank()) {
            val closeUrl = "http://$ip:7788/closepath?rtmpurl=rtmp://$ip:7768/video/$sn/3"
            CoroutineScope(Dispatchers.IO).launch { api.getPlainQuiet(closeUrl) }
        }
        onState("对讲已关闭")
    }

    private fun extractIp(rtmpUrl: String?): String? {
        if (rtmpUrl.isNullOrBlank() || !rtmpUrl.startsWith("rtmp://")) return null
        return rtmpUrl.removePrefix("rtmp://").substringBefore(':').substringBefore('/')
    }
}
