package com.albert.xiaoguyun.player

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.view.Gravity
import android.view.TextureView
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.LinearLayout
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
 * said so). TextureView is needed for the crop views: the camera is
 * a three-video device (SN char 3), but /0 and /2 do NOT exist as RTMP
 * streams (probed 2026-11-23 while the user was on the live page) — the
 * original's three panes are three CROPS of the one 640x720 combined
 * frame (full + top half = gun lens + bottom half = ball lens). A
 * TextureView crop is a transform matrix; a SurfaceView cannot be
 * cropped. v1.2.7: only ONE player now (the channel strip shows
 * LastFrameStore snapshots, not live players — three concurrent RTMP
 * pulls were a black-screen root cause, and the PiP panes rendered the
 * full frame squished / black in v1.2.6).
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
    /** v1.2.7: the crop matrix is computed from the EXPLICIT target
     * size (see fitViewToVideo), never from a just-read view size —
     * so it stays valid across resizes; the layout listener below
     * only re-applies this stored matrix. */
    private var lastMatrix: Matrix? = null

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
        // v1.2.7: the crop matrix is derived from the explicit target
        // size (see fitViewToVideo), so a view resize can no longer
        // leave a stale transform behind. This listener only
        // re-applies the stored matrix after a resize (e.g. surface
        // recreation after background) — it never recomputes from a
        // just-read view size (that was the v1.2.6 race).
        textureView.addOnLayoutChangeListener { _, l, t, r, b, ol, ot, orr, ob ->
            if (r - l != orr - ol || b - t != ob - ot) {
                lastMatrix?.let { textureView.setTransform(it) }
            }
        }
        // v1.2.7: the container is sized by the fit to the video's
        // aspect; when the space it lives in changes (rotation,
        // fullscreen toggle, right rail appearing/disappearing) the
        // fit must re-run against the new space. Re-running is safe:
        // the fit only writes layout params when the target size
        // actually differs, so it converges in one extra pass.
        container.addOnLayoutChangeListener { _, _, _, _, _, _, _, _, _ ->
            lastVideoSize?.let { fitViewToVideo(it) }
        }
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
     * v1.2.7 fit rewrite — the CONTAINER is sized to the video, not
     * the other way round.
     *
     * Root cause of the v1.2.6 landscape bug (user screenshot 3090:
     * the gun lens rendered as a narrow ~1000px strip with big black
     * bars left and right — i.e. the TOP half stretched vertically to
     * the FULL height): the old code resized the TextureView INSIDE a
     * fixed-size container and computed the crop matrix from
     * textureView.width/height read inside a post() — a size that
     * could still be the pre-resize (FULL) size when the crop had
     * just changed to TOP. The matrix then fit a 640x360 region into
     * a 640x720-sized view, and the layout-change listener did not
     * reliably re-run it with the new size. Pixel measurement of the
     * screenshot confirmed it: content ~1004px wide in a ~1452px
     * container, full height — the FULL geometry with TOP content.
     *
     * This version sizes the CONTAINER itself to the crop region's
     * display aspect (16:9 single lens, 8:9 dual) inside the space
     * the layout gives it, makes the TextureView MATCH_PARENT, and
     * computes the crop matrix from the EXPLICIT target size — never
     * from a just-read view size. The transform then only selects
     * the crop region and scales it to fill: with the container
     * exactly the display size there is no letterbox at all (no
     * black bars inside the video box; leftover space is page
     * background, not black). The matrix also applies the pixel
     * aspect ratio on X (scaleX = ratio * s, scaleY = s) — the old
     * code used a uniform scale, which is only correct when
     * ratio == 1. Single-lens fills the playback width (zero side
     * bars, at most small top/bottom bars); dual fits 8:9 with no
     * extra black. Never stretched, never cropped (uniform scale
     * per axis from the same s; FULL halves stay equal height).
     *
     * Available space: the container's parent size. When the parent
     * is (nearly) full-screen (portrait live page, playback page)
     * the height is capped at 65% of the screen so the video never
     * pushes the controls off-screen; a bounded wrapper (live
     * landscape, right rail) is smaller than the screen and is used
     * as-is. The fit re-runs on container layout changes (rotation,
     * fullscreen toggle), converging in one extra pass.
     */
    private fun fitViewToVideo(videoSize: VideoSize) {
        val vw = videoSize.width
        val vh = videoSize.height
        if (vw <= 0 || vh <= 0) return
        container.post { doFit(vw, vh) }
    }

    private fun doFit(vw: Int, vh: Int) {
        val ratio = lastVideoSize?.pixelWidthHeightRatio?.takeIf { it > 0f }?.toDouble() ?: 1.0
        val videoW = vw * ratio
        val cropH = if (crop == Crop.FULL) vh.toDouble() else vh / 2.0
        val cropTop = if (crop == Crop.BOTTOM) vh / 2.0 else 0.0
        val dm = appContext.resources.displayMetrics
        val screenW = dm.widthPixels
        val screenH = dm.heightPixels
        val parent = container.parent as? View
        var availW = parent?.width ?: 0
        var availH = parent?.height ?: 0
        if (availW <= 0) availW = screenW
        if (availH <= 0) availH = screenH
        // Full-screen parent (portrait live page, playback page):
        // cap the height so the video never pushes the controls
        // off-screen. A bounded wrapper (live landscape) is used as-is.
        if (availH >= screenH * 0.95) availH = (screenH * 0.65).toInt()
        if (availW <= 0 || availH <= 0) return
        val scale = minOf(availW / videoW, availH / cropH)
        val targetW = (videoW * scale).toInt()
        val targetH = (cropH * scale).toInt()
        if (targetW <= 0 || targetH <= 0) return
        // Resize the CONTAINER to the video (the TextureView is
        // MATCH_PARENT inside it), centred in its parent.
        val lp = container.layoutParams
        if (lp != null && (lp.width != targetW || lp.height != targetH)) {
            lp.width = targetW
            lp.height = targetH
            when (lp) {
                is FrameLayout.LayoutParams -> lp.gravity = Gravity.CENTER
                is LinearLayout.LayoutParams -> lp.gravity = Gravity.CENTER_HORIZONTAL
            }
            container.layoutParams = lp
        }
        // Transform from the EXPLICIT target size: texture
        // (0..vw, cropTop..cropTop+cropH) -> view (0..targetW,
        // 0..targetH). No letterbox offsets — the container IS the
        // display size.
        val s = targetH / cropH
        val m = Matrix()
        m.setScale((ratio * s).toFloat(), s.toFloat())
        m.postTranslate(0f, (-cropTop * s).toFloat())
        lastMatrix = m
        textureView.setTransform(m)
    }

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
