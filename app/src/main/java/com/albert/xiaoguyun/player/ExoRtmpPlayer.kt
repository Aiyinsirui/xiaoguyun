package com.albert.xiaoguyun.player

import android.content.Context
import android.graphics.Bitmap
import android.os.Handler
import android.os.Looper
import android.view.Gravity
import android.view.PixelCopy
import android.view.SurfaceView
import android.view.ViewGroup
import android.widget.FrameLayout
import com.albert.xiaoguyun.DebugLog
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.VideoSize
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.rtmp.RtmpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.ProgressiveMediaSource

/**
 * Live + local-file player on Media3 ExoPlayer.
 *
 * v1.1.6 replaced libVLC for playback: VLC 3.x (and stock ExoPlayer) cannot
 * decode this camera's stream — both definitions fail with EncounteredError
 * while stream data is flowing. The original app plays it with its own
 * FFmpeg native player. This player keeps ExoPlayer's MediaCodec rendering
 * but feeds RTMP through [FlvEnhancedExtractor], which handles legacy
 * AVC/HEVC and enhanced RTMP ('avc1'/'hvc1') FLV tags.
 *
 * v1.2.0 renders into a SurfaceView again. v1.1.7 switched to TextureView
 * to fix the black screen, but the TextureView carried
 * android:background="#000000" — and TextureView does NOT support a
 * background drawable: its constructor throws UnsupportedOperationException
 * ("TextureView doesn't support displaying a background drawable",
 * TextureView.java:478), crashing LiveActivity in setContentView (full
 * trace pasted by the user, 2026-11-23 15:07). SurfaceView works on this
 * device (v1.1.6 proved it decodes and renders); v1.1.6's black screen was
 * caused by the SurfaceView sitting INSIDE a ScrollView. So the video now
 * sits in a FrameLayout container ABOVE the ScrollView (portrait) or beside
 * it (landscape), created programmatically, and is letterboxed to the
 * video's real aspect. (A TextureView without a background would also
 * work, but SurfaceView is the path proven on this device.)
 *
 * Local files use the default extractors. Audio is video-only for RTMP:
 * the camera's audio is G.711, which Media3 cannot decode from FLV.
 * Local recording still uses [VlcRecorder] (libVLC sout), unchanged.
 */
@OptIn(UnstableApi::class)
class ExoRtmpPlayer(
    context: Context,
    private val surfaceView: SurfaceView,
    private val container: ViewGroup,
) {
    private val appContext = context.applicationContext
    private val player: ExoPlayer = ExoPlayer.Builder(appContext).build().apply {
        setVideoSurfaceView(surfaceView)
    }

    var onError: (() -> Unit)? = null
    val isPlaying: Boolean get() = try { player.isPlaying } catch (_: Exception) { false }
    val timeMs: Long get() = try { player.currentPosition } catch (_: Exception) { -1 }
    val lengthMs: Long
        get() = try {
            val d = player.duration
            if (d == C.TIME_UNSET || d < 0) -1 else d
        } catch (_: Exception) { -1 }

    init {
        player.addListener(object : Player.Listener {
            override fun onPlayerError(error: PlaybackException) {
                DebugLog.log("PLAYER", "error: ${error.errorCodeName} ${error.message}")
                onError?.invoke()
            }

            override fun onVideoSizeChanged(videoSize: VideoSize) {
                DebugLog.log("PLAYER", "video size ${videoSize.width}x${videoSize.height}")
                fitSurfaceToVideo(videoSize)
            }
        })
    }

    /**
     * Letterboxes the SurfaceView to the video's aspect ratio so the
     * picture is not stretched. The dual-lens frame is 640x720 (two
     * stacked 640x360 pictures), taller than 16:9.
     * Portrait: the view fills the container width and the container
     * grows to the fitted height (clamped to [220dp, 65% screen]).
     * Landscape: the container size is fixed by the land layout, so the
     * view is fitted inside it and centered.
     */
    private fun fitSurfaceToVideo(videoSize: VideoSize) {
        val vw = videoSize.width
        val vh = videoSize.height
        if (vw <= 0 || vh <= 0) return
        val ratio = videoSize.pixelWidthHeightRatio.takeIf { it > 0f }?.toDouble() ?: 1.0
        val videoW = vw * ratio
        val videoH = vh.toDouble()
        surfaceView.post {
            val cw = container.width
            val ch = container.height
            if (cw <= 0 || ch <= 0) return@post
            val landscape = cw > ch
            val (w, h) = if (landscape) {
                val scale = minOf(cw / videoW, ch / videoH)
                (videoW * scale).toInt() to (videoH * scale).toInt()
            } else {
                val w = cw
                val h = (w * videoH / videoW).toInt()
                    .coerceIn(dp(220), (appContext.resources.displayMetrics.heightPixels * 0.65).toInt())
                w to h
            }
            val lp = (surfaceView.layoutParams as? FrameLayout.LayoutParams)
                ?: FrameLayout.LayoutParams(w, h)
            if (lp.width != w || lp.height != h) {
                lp.width = w
                lp.height = h
                lp.gravity = Gravity.CENTER
                surfaceView.layoutParams = lp
            }
            if (!landscape) {
                val clp = container.layoutParams
                if (clp != null && clp.height != h) {
                    clp.height = h
                    container.layoutParams = clp
                }
            }
        }
    }

    private fun dp(v: Int): Int =
        (v * appContext.resources.displayMetrics.density).toInt()

    fun play(url: String) {
        stop()
        val item = MediaItem.fromUri(url)
        val source = if (url.startsWith("rtmp://")) {
            ProgressiveMediaSource.Factory(
                RtmpDataSource.Factory(),
                FlvEnhancedExtractor.FACTORY
            ).createMediaSource(item)
        } else {
            ProgressiveMediaSource.Factory(
                DefaultDataSource.Factory(appContext)
            ).createMediaSource(item)
        }
        player.setMediaSource(source)
        player.prepare()
        player.play()
    }

    /** Plays a local file (downloaded cloud recording). */
    fun playFile(path: String) = play("file://$path")

    /** Seeks within the current media (local files; RTMP live has no seek). */
    fun seekTo(ms: Long) {
        try { player.seekTo(ms) } catch (_: Exception) {}
    }

    fun pause() { try { player.pause() } catch (_: Exception) {} }
    fun resume() { try { player.play() } catch (_: Exception) {} }

    /**
     * Snapshot of the current frame via PixelCopy from the SurfaceView.
     * This is the v1.1.6 approach — it proved frames are decoded even
     * when the SurfaceView itself showed black inside a ScrollView.
     */
    fun snapshot(onResult: (Bitmap?) -> Unit) {
        try {
            val w = surfaceView.width
            val h = surfaceView.height
            if (w <= 0 || h <= 0) {
                onResult(null)
                return
            }
            val bmp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888)
            PixelCopy.request(
                surfaceView, bmp,
                { result -> onResult(if (result == PixelCopy.SUCCESS) bmp else null) },
                Handler(Looper.getMainLooper()),
            )
        } catch (_: Exception) {
            onResult(null)
        }
    }

    fun stop() {
        try { player.stop() } catch (_: Exception) {}
    }

    fun setMuted(muted: Boolean) { player.volume = if (muted) 0f else 1f }

    fun release() {
        try { player.release() } catch (_: Exception) {}
    }
}
