package com.albert.xiaoguyun.player

import android.content.Context
import android.net.Uri
import org.videolan.libvlc.LibVLC
import org.videolan.libvlc.Media
import org.videolan.libvlc.MediaPlayer
import java.io.File

/**
 * Local recording of the live RTMP stream with a second, display-less
 * libVLC instance: the same RTMP URL is opened with a `sout` file mux, so
 * recording never disturbs the on-screen playback.
 *
 * v1.1.7 fixes:
 * - `isRecording` is now a plain state flag. The old version derived it
 *   from `player.isPlaying`, which VLC never reports true for a sout-only
 *   (no video output) session — so tapping "停止录像" ran the start path
 *   again and showed the start toast instead of stopping.
 * - mux changed from mp4 to MPEG-TS: the camera stream is H.265 and its
 *   audio is G.711, which the mp4 muxer cannot carry; TS handles both.
 *   Files are saved as .ts (playable in VLC / most players).
 * Still unverified on a real device: whether VLC's FLV demuxer can parse
 * this server's (possibly enhanced-RTMP) stream for sout at all. If the
 * saved .ts ends up empty, recording needs a different mechanism.
 */
class VlcRecorder(context: Context) {
    private val libVlc: LibVLC = LibVLC(context, arrayListOf("--network-caching=1000"))
    private val player = MediaPlayer(libVlc)
    private var file: File? = null
    private var recording = false

    val isRecording: Boolean get() = recording

    fun start(url: String, outFile: File): Boolean {
        if (recording) return true
        return try {
            outFile.parentFile?.mkdirs()
            val media = Media(libVlc, Uri.parse(url))
            media.addOption(":sout=#std{access=file,mux=ts,dst=${outFile.absolutePath}}")
            media.addOption(":sout-keep")
            player.media = media
            media.release()
            player.play()
            file = outFile
            recording = true
            true
        } catch (_: Exception) { false }
    }

    /** Returns the recorded file (may be small/empty if sout failed — see TODO above). */
    fun stop(): File? {
        val f = file
        file = null
        recording = false
        try { if (player.isPlaying) player.stop() } catch (_: Exception) {}
        return f
    }

    fun release() {
        try { stop() } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        try { libVlc.release() } catch (_: Exception) {}
    }
}
