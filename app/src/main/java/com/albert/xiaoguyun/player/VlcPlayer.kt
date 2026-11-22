package com.albert.xiaoguyun.player

import android.app.Activity
import android.content.Context
import android.graphics.Bitmap
import android.os.Handler
import android.os.Looper
import android.view.PixelCopy
import android.view.SurfaceView
import org.videolan.libvlc.LibVLC
import org.videolan.libvlc.Media
import org.videolan.libvlc.MediaPlayer

/** Thin libVLC wrapper for RTMP playback (ExoPlayer core has no RTMP). */
class VlcPlayer(context: Context, private val surfaceView: SurfaceView) {
    private val libVlc: LibVLC = LibVLC(context, arrayListOf("--no-drop-late-frames", "--network-caching=1000"))
    private val player = MediaPlayer(libVlc)

    var onError: (() -> Unit)? = null
    val isPlaying: Boolean get() = try { player.isPlaying } catch (_: Exception) { false }
    /** Current position in ms (-1 if unknown). Used by the playback timeline. */
    val timeMs: Long get() = try { player.time } catch (_: Exception) { -1 }
    val lengthMs: Long get() = try { player.length } catch (_: Exception) { -1 }

    init {
        player.setEventListener { event ->
            if (event.type == MediaPlayer.Event.EncounteredError) onError?.invoke()
        }
    }

    fun play(url: String) {
        stop()
        val media = Media(libVlc, url)
        player.media = media
        media.release()
        val vout = player.vlcVout
        vout.setVideoSurface(surfaceView.holder.surface, surfaceView.holder)
        vout.attachViews()
        player.play()
    }

    /** Plays a local file (downloaded cloud recording). */
    fun playFile(path: String) = play("file://$path")

    /** Seeks within the current media (local files; RTMP live has no seek). */
    fun seekTo(ms: Long) {
        try { player.time = ms } catch (_: Exception) {}
    }

    fun pause() { try { player.pause() } catch (_: Exception) {} }
    fun resume() { try { player.play() } catch (_: Exception) {} }

    /**
     * Snapshot of the current frame via PixelCopy from the SurfaceView.
     * TODO: PixelCopy on a hardware-decoded SurfaceView works on most
     * devices but is not guaranteed on all of them; if it returns black
     * frames on the real device, fall back to a native VLC snapshot.
     */
    fun snapshot(activity: Activity, onResult: (Bitmap?) -> Unit) {
        try {
            val w = surfaceView.width
            val h = surfaceView.height
            if (w <= 0 || h <= 0) { onResult(null); return }
            val bitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888)
            PixelCopy.request(
                surfaceView, bitmap,
                { result ->
                    onResult(if (result == PixelCopy.SUCCESS) bitmap else null)
                },
                Handler(Looper.getMainLooper()),
            )
        } catch (_: Exception) { onResult(null) }
    }

    fun stop() {
        try { if (player.isPlaying) player.stop() } catch (_: Exception) {}
        try { player.vlcVout.detachViews() } catch (_: Exception) {}
    }

    fun setMuted(muted: Boolean) { player.volume = if (muted) 0 else 100 }

    fun release() {
        try { stop() } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        try { libVlc.release() } catch (_: Exception) {}
    }
}
