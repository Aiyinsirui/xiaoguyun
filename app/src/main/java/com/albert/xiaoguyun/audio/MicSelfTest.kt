package com.albert.xiaoguyun.audio

import android.content.Context
import android.media.AudioDeviceInfo
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import com.albert.xiaoguyun.DebugLog
import kotlin.math.abs
import kotlin.math.log10
import kotlin.math.sqrt

/**
 * Temporary on-device microphone probe (v1.2.3 intercom diagnosis).
 *
 * Triggered over ADB while the live page is open — no UI changes:
 *   adb shell am broadcast -a com.albert.xiaoguyun.MIC_SELF_TEST \
 *     -p com.albert.xiaoguyun
 *
 * Why it exists: on the Redmi Pad Pro (HyperOS 3 / Android 16), an
 * AudioRecord opened with source MIC while the app is in
 * MODE_IN_COMMUNICATION gets routed by the audio policy to
 * AUDIO_DEVICE_IN_BACK_MIC (the rear mic, ~-60 dBFS, voice inaudible),
 * instead of the bottom built-in mic the user actually speaks into.
 * The original app's intercom captures entirely in native code
 * (OpenSL ES @48 kHz + WebRTC APM), so there is no Java reference for
 * the right source on this ROM — it has to be measured.
 *
 * Each probe opens a real AudioRecord under the same mode/speakerphone
 * conditions as [com.albert.xiaoguyun.ui.IntercomManager], reads ~1.5 s
 * of PCM, and reports the routed physical device + peak/RMS/dBFS. Speak
 * normally while it runs and compare which configuration actually
 * carries the voice.
 */
object MicSelfTest {
    const val ACTION = "com.albert.xiaoguyun.MIC_SELF_TEST"
    private const val TAG = "MICTEST"
    private const val PROBE_MS = 2000L

    private data class Source(val label: String, val id: Int)

    private val sources8k = listOf(
        Source("DEFAULT(0)", MediaRecorder.AudioSource.DEFAULT),
        Source("MIC(1)", MediaRecorder.AudioSource.MIC),
        Source("VOICE_RECOGNITION(6)", MediaRecorder.AudioSource.VOICE_RECOGNITION),
        Source("VOICE_COMMUNICATION(7)", MediaRecorder.AudioSource.VOICE_COMMUNICATION),
        Source("CAMCORDER(5)", MediaRecorder.AudioSource.CAMCORDER),
        Source("UNPROCESSED(9)", MediaRecorder.AudioSource.UNPROCESSED),
    )

    @Volatile
    private var running = false

    fun run(context: Context) {
        if (running) {
            log("自检已在运行，忽略重复触发")
            return
        }
        Thread({ doRun(context) }, "mic-self-test").apply { isDaemon = true }.start()
    }

    private fun doRun(context: Context) {
        running = true
        val am = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val prevMode = am.mode
        val prevSpeaker = am.isSpeakerphoneOn
        try {
            log("==== 麦克风自检开始（请对着平板持续说话，约 40 秒）====")
            am.getDevices(AudioManager.GET_DEVICES_INPUTS).forEach {
                log("可用输入设备: type=${deviceTypeName(it.type)} name=${it.productName}")
            }

            // Phase 1: the current production routing context.
            am.mode = AudioManager.MODE_IN_COMMUNICATION
            am.isSpeakerphoneOn = true
            log("阶段1 MODE_IN_COMMUNICATION + 扬声器开（当前对讲环境）")
            for (s in sources8k) {
                probe(am, "P1 ${s.label}", s.id, 8000, forceBottomMic = false)
            }
            probe(am, "P1 MIC(1)@48k", MediaRecorder.AudioSource.MIC, 48000, false)

            // Phase 2: normal mode — does the policy keep the bottom mic?
            am.mode = AudioManager.MODE_NORMAL
            am.isSpeakerphoneOn = false
            log("阶段2 MODE_NORMAL + 扬声器关")
            probe(am, "P2 MIC(1)@48k", MediaRecorder.AudioSource.MIC, 48000, false)
            probe(am, "P2 MIC(1)@8k", MediaRecorder.AudioSource.MIC, 8000, false)
            probe(
                am, "P2 VOICE_RECOG(6)@48k",
                MediaRecorder.AudioSource.VOICE_RECOGNITION, 48000, false,
            )
            probe(
                am, "P2 CAMCORDER(5)@48k",
                MediaRecorder.AudioSource.CAMCORDER, 48000, false,
            )
            probe(
                am, "P2 VOICE_COMM(7)@48k",
                MediaRecorder.AudioSource.VOICE_COMMUNICATION, 48000, false,
            )

            // Phase 3: communication mode without speakerphone.
            am.mode = AudioManager.MODE_IN_COMMUNICATION
            am.isSpeakerphoneOn = false
            log("阶段3 MODE_IN_COMMUNICATION + 扬声器关")
            probe(am, "P3 MIC(1)@48k", MediaRecorder.AudioSource.MIC, 48000, false)
            probe(
                am, "P3 VOICE_COMM(7)@48k",
                MediaRecorder.AudioSource.VOICE_COMMUNICATION, 48000, false,
            )
            log("==== 麦克风自检结束 ====")
        } catch (e: Exception) {
            log("自检异常：${e.javaClass.simpleName} ${e.message}")
        } finally {
            try {
                am.mode = prevMode
                am.isSpeakerphoneOn = prevSpeaker
            } catch (_: Exception) {
            }
            running = false
        }
    }

    private fun probe(
        am: AudioManager,
        label: String,
        source: Int,
        sampleRate: Int,
        forceBottomMic: Boolean,
    ) {
        val minBuf = AudioRecord.getMinBufferSize(
            sampleRate, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
        )
        if (minBuf <= 0) {
            log("[$label] getMinBufferSize 失败=$minBuf，跳过")
            return
        }
        val rec: AudioRecord = try {
            AudioRecord(
                source, sampleRate,
                AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
                minBuf * 2,
            )
        } catch (e: SecurityException) {
            log("[$label] 无录音权限：${e.message}")
            return
        } catch (e: Exception) {
            log("[$label] 构造失败：${e.javaClass.simpleName} ${e.message}")
            return
        }
        try {
            if (rec.state != AudioRecord.STATE_INITIALIZED) {
                log("[$label] state=${rec.state} 初始化失败，跳过")
                return
            }
            if (forceBottomMic) {
                val bottom = am.getDevices(AudioManager.GET_DEVICES_INPUTS)
                    .firstOrNull { it.type == AudioDeviceInfo.TYPE_BUILTIN_MIC }
                if (bottom == null) {
                    log("[$label] 没找到 TYPE_BUILTIN_MIC 设备，跳过强制路由")
                } else {
                    val ok = rec.setPreferredDevice(bottom)
                    log("[$label] setPreferredDevice(主麦 ${bottom.productName})=$ok")
                }
            }
            rec.startRecording()
            // Give the HAL a moment to settle the route before measuring.
            Thread.sleep(150)
            val buf = ByteArray(minBuf * 2)
            var bytesRead = 0
            var peak = 0
            var sumSq = 0.0
            var samples = 0L
            val start = System.currentTimeMillis()
            while (System.currentTimeMillis() - start < PROBE_MS) {
                val n = rec.read(buf, 0, buf.size)
                if (n <= 0) continue
                bytesRead += n
                var i = 0
                while (i + 1 < n) {
                    val lo = buf[i].toInt() and 0xFF
                    val hi = buf[i + 1].toInt()
                    val s = (hi shl 8) or lo
                    val a = abs(s)
                    if (a > peak) peak = a
                    sumSq += s.toDouble() * s
                    samples++
                    i += 2
                }
            }
            val rms = if (samples > 0) sqrt(sumSq / samples) else 0.0
            val dbfs = if (rms > 0.0) 20.0 * log10(rms / 32767.0) else -96.0
            val routed = rec.routedDevice
            log(
                "[$label] 路由=${deviceTypeName(routed?.type ?: -1)} " +
                    "读取=${bytesRead}B 峰值=$peak RMS=${rms.toInt()} " +
                    "电平=${"%.1f".format(dbfs)}dBFS",
            )
        } catch (e: Exception) {
            log("[$label] 探测异常：${e.javaClass.simpleName} ${e.message}")
        } finally {
            try {
                if (rec.state == AudioRecord.STATE_INITIALIZED) rec.stop()
            } catch (_: Exception) {
            }
            rec.release()
            // Avoid "device busy" races between consecutive opens.
            Thread.sleep(200)
        }
    }

    private fun deviceTypeName(type: Int): String = when (type) {
        AudioDeviceInfo.TYPE_BUILTIN_MIC -> "BUILTIN_MIC(底部主麦)"
        // AudioDeviceInfo.TYPE_BUILTIN_BACK_MIC (API 31, value 27) — literal
        // keeps this file compiling against the project's platform jar.
        27 -> "BACK_MIC(后置麦)"
        AudioDeviceInfo.TYPE_BUILTIN_EARPIECE -> "EARPIECE"
        AudioDeviceInfo.TYPE_WIRED_HEADSET -> "WIRED_HEADSET"
        AudioDeviceInfo.TYPE_BLUETOOTH_SCO -> "BT_SCO"
        -1 -> "未知"
        else -> "type=$type"
    }

    private fun log(msg: String) {
        Log.i(TAG, msg)
        DebugLog.log(TAG, msg)
    }
}
