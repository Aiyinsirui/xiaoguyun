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
 * TODO (unverified): VLC's `:sout=#std{access=file,mux=mp4,...}` stream-copy
 * of this server's RTMP (H.264 + AAC expected) has not run on a real device.
 * If the mp4 file ends up empty or unplayable, try `mux=ts` instead, or
 * check whether the server's audio is G.711 (mp4 cannot mux G.711).
 */
class VlcRecorder(context: Context) {
    private val libVlc: LibVLC = LibVLC(context, arrayListOf("--network-caching=1000"))
    private val player = MediaPlayer(libVlc)
    private var file: File? = null

    val isRecording: Boolean get() = file != null && try { player.isPlaying } catch (_: Exception) { false }

    fun start(url: String, outFile: File): Boolean {
        if (isRecording) return true
        return try {
            outFile.parentFile?.mkdirs()
            val media = Media(libVlc, Uri.parse(url))
            media.addOption(":sout=#std{access=file,mux=mp4,dst=${outFile.absolutePath}}")
            media.addOption(":sout-keep")
            player.media = media
            media.release()
            player.play()
            file = outFile
            true
        } catch (_: Exception) { false }
    }

    /** Returns the recorded file (may be small/empty if sout failed — see TODO above). */
    fun stop(): File? {
        val f = file
        file = null
        try { if (player.isPlaying) player.stop() } catch (_: Exception) {}
        return f
    }

    fun release() {
        try { stop() } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        try { libVlc.release() } catch (_: Exception) {}
    }
}
