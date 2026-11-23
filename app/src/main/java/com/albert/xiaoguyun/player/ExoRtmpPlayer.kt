package com.albert.xiaoguyun.player

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.view.Gravity
import android.view.TextureView
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
 * video's real aspect.
 *
 * v1.2.2: back to TextureView — created programmatically, WITHOUT a
 * background (that was the only thing that crashed v1.1.7; a
 * background-less TextureView is safe, and v1.2.0's own comment already
 * said so). TextureView is needed for the three-pane view: the camera is
 * a three-video device (SN char 3), but /0 and /2 do NOT exist as RTMP
 * streams (probed 2026-11-23 while the user was on the live page) — the
 * original's three panes are three CROPS of the one 640x720 combined
 * frame (full + top half = gun lens + bottom half = ball lens). A
 * TextureView crop is a transform matrix (2x vertical scale, pivot at
 * the top/bottom edge); a SurfaceView cannot be cropped. The big view
 * and the two PiP views are each their own player on the same RTMP URL
 * (PiPs are muted — only the big view plays sound).
 *
 * v1.2.2 audio: [FlvEnhancedExtractor] now decodes the camera's G.711
 * A-law audio to PCM, so live has sound (before that live was
 * video-only). Local recording uses [RtmpRecorder] (RTMP stream copy),
 * not [VlcRecorder] (its sout produced 0-byte files).
 */
@OptIn(UnstableApi::class)
class ExoRtmpPlayer(
    context: Context,
    private val textureView: TextureView,
    private val container: ViewGroup,
    /** PiP views have a fixed size: fit only the crop transform, never resize. */
    private val fixedSize: Boolean = false,
) {
    private val appContext = context.applicationContext
    private val player: ExoPlayer = ExoPlayer.Builder(appContext).build().apply {
        setVideoTextureView(textureView)
    }

    /** Which part of the 640x720 combined frame this player shows. */
    enum class Crop { FULL, TOP, BOTTOM }

    var crop: Crop = Crop.FULL
        set(value) {
            if (field == value) return
            field = value
            refit()
        }

    var onError: (() -> Unit)? = null
    /** v1.2.3: fired once after every play() once the first frame is rendered. */
    var onFirstFrame: (() -> Unit)? = null
    val isPlaying: Boolean get() = try { player.isPlaying } catch (_: Exception) { false }
    /** True after the first rendered frame of the current play(). */
    @Volatile var hasRenderedFrame = false
        private set
    private var lastUrl: String? = null
    private val instanceId = System.identityHashCode(this)
    private var lastVideoSize: VideoSize? = null

    /** Re-run the aspect fit (e.g. after a fullscreen toggle changes the container). */
    fun refit() {
        lastVideoSize?.let { fitViewToVideo(it) }
    }
    val timeMs: Long get() = try { player.currentPosition } catch (_: Exception) { -1 }
    val lengthMs: Long
        get() = try {
            val d = player.duration
            if (d == C.TIME_UNSET || d < 0) -1 else d
        } catch (_: Exception) { -1 }

    init {
        player.addListener(object : Player.Listener {
            override fun onPlayerError(error: PlaybackException) {
                DebugLog.log("PLAYER", "#$instanceId error: ${error.errorCodeName} ${error.message}")
                onError?.invoke()
            }

            override fun onVideoSizeChanged(videoSize: VideoSize) {
                DebugLog.log("PLAYER", "#$instanceId video size ${videoSize.width}x${videoSize.height}")
                lastVideoSize = videoSize
                fitViewToVideo(videoSize)
            }

            // v1.2.3: state/frame diagnostics — the v1.2.2 black-screen
            // regression produced no error and no video-size line, so the
            // stall was invisible. These traces show exactly where a
            // player gets stuck (buffering forever vs idle vs rendering).
            override fun onPlaybackStateChanged(state: Int) {
                val name = when (state) {
                    Player.STATE_IDLE -> "IDLE"
                    Player.STATE_BUFFERING -> "BUFFERING"
                    Player.STATE_READY -> "READY"
                    Player.STATE_ENDED -> "ENDED"
                    else -> state.toString()
                }
                DebugLog.log("PLAYER", "#$instanceId state=$name")
            }

            override fun onRenderedFirstFrame() {
                if (!hasRenderedFrame) {
                    hasRenderedFrame = true
                    DebugLog.log("PLAYER", "#$instanceId 首帧已渲染")
                    onFirstFrame?.invoke()
                }
            }
        })
    }

    /**
     * Letterboxes the TextureView to the video's aspect ratio so the
     * picture is not stretched. The dual-lens frame is 640x720 (two
     * stacked 640x360 pictures), taller than 16:9.
     * Portrait: the view fills the container width and the container
     * grows to the fitted height (clamped to [220dp, 65% screen]).
     * Landscape: the container size is fixed by the land layout, so the
     * view is fitted inside it and centered.
     *
     * v1.2.1 fix: portrait vs landscape must come from the DEVICE
     * orientation, NOT from the container's aspect. In portrait the
     * container is wide-and-short (match_parent x 220dp), so the old
     * `cw > ch` test took the landscape branch and squeezed the video
     * into a narrow centred column (the 2026-11-23 screenshot).
     *
     * v1.2.2: the fit is crop-aware — TOP/BOTTOM show one 640x360 half,
     * so the view is sized for 640x360 (16:9), and the crop transform
     * (2x vertical scale) fills it without distortion.
     */
    private fun fitViewToVideo(videoSize: VideoSize) {
        val vw = videoSize.width
        val vh = videoSize.height
        if (vw <= 0 || vh <= 0) return
        val ratio = videoSize.pixelWidthHeightRatio.takeIf { it > 0f }?.toDouble() ?: 1.0
        val videoW = vw * ratio
        // A cropped half is 640x360; the full frame is 640x720.
        val videoH = if (crop == Crop.FULL) vh.toDouble() else vh / 2.0
        if (fixedSize) {
            applyCrop()
            return
        }
        textureView.post {
            val cw = container.width
            val ch = container.height
            if (cw <= 0 || ch <= 0) return@post
            val landscape =
                appContext.resources.configuration.orientation ==
                    android.content.res.Configuration.ORIENTATION_LANDSCAPE
            val (w, h) = if (landscape) {
                val scale = minOf(cw / videoW, ch / videoH)
                (videoW * scale).toInt() to (videoH * scale).toInt()
            } else {
                val w = cw
                val h = (w * videoH / videoW).toInt()
                    .coerceIn(dp(220), (appContext.resources.displayMetrics.heightPixels * 0.65).toInt())
                w to h
            }
            val lp = (textureView.layoutParams as? FrameLayout.LayoutParams)
                ?: FrameLayout.LayoutParams(w, h)
            if (lp.width != w || lp.height != h) {
                lp.width = w
                lp.height = h
                lp.gravity = Gravity.CENTER
                textureView.layoutParams = lp
            }
            if (!landscape) {
                val clp = container.layoutParams
                if (clp != null && clp.height != h) {
                    clp.height = h
                    container.layoutParams = clp
                }
            }
            applyCrop()
        }
    }

    /**
     * Crops the texture to one half of the combined frame. The transform
     * scales the texture 2x vertically: pivoted at the top edge it shows
     * the top half (gun lens), pivoted at the bottom edge the bottom
     * half (ball lens). FULL is the identity (whole 640x720 frame).
     */
    private fun applyCrop() {
        textureView.post {
            val h = textureView.height
            if (h <= 0) return@post
            val m = Matrix()
            when (crop) {
                Crop.FULL -> { /* identity */ }
                Crop.TOP -> m.setScale(1f, 2f, 0f, 0f)
                Crop.BOTTOM -> m.setScale(1f, 2f, 0f, h.toFloat())
            }
            textureView.setTransform(m)
        }
    }

    private fun dp(v: Int): Int =
        (v * appContext.resources.displayMetrics.density).toInt()

    fun play(url: String) {
        lastUrl = url
        hasRenderedFrame = false
        stop()
        DebugLog.log("PLAYER", "#$instanceId play() url=${url.substringAfter("://").substringBefore("/")}")
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

    /** v1.2.3: re-prepare the last URL (watchdog auto-recovery). No-op if
     *  this player has never been given a URL. */
    fun replay() {
        val url = lastUrl ?: return
        DebugLog.log("PLAYER", "#$instanceId replay() 自动恢复重连")
        play(url)
    }

    /** Plays a local file (downloaded cloud recording). */
    fun playFile(path: String) = play("file://$path")

    /** Seeks within the current media (local files; RTMP live has no seek). */
    fun seekTo(ms: Long) {
        try { player.seekTo(ms) } catch (_: Exception) {}
    }

    fun pause() { try { player.pause() } catch (_: Exception) {} }
    fun resume() { try { player.play() } catch (_: Exception) {} }

    /** Snapshot of the current frame (TextureView bitmap, no PixelCopy needed). */
    fun snapshot(onResult: (Bitmap?) -> Unit) {
        try {
            onResult(textureView.bitmap)
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
