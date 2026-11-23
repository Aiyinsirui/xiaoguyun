package com.albert.xiaoguyun.player

import android.content.Context
import android.graphics.Bitmap
import android.view.TextureView
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
 * v1.1.7 renders into a TextureView (not SurfaceView): the live page lives
 * inside a ScrollView, and a SurfaceView there shows black on this device
 * even though frames are decoded (a snapshot via PixelCopy proved the
 * surface had frames). TextureView composites inside the view hierarchy,
 * so it scrolls and displays correctly. It is also resized to the video's
 * real aspect ratio: this camera sends both lenses as one tall frame
 * (two stacked pictures), which a fixed 220dp view squashed flat.
 *
 * Local files use the default extractors. Audio is video-only for RTMP:
 * the camera's audio is G.711, which Media3 cannot decode from FLV.
 * Local recording still uses [VlcRecorder] (libVLC sout), unchanged.
 */
@OptIn(UnstableApi::class)
class ExoRtmpPlayer(context: Context, private val textureView: TextureView) {
    private val appContext = context.applicationContext
    private val player: ExoPlayer = ExoPlayer.Builder(appContext).build().apply {
        setVideoTextureView(textureView)
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
                onError?.invoke()
            }

            override fun onVideoSizeChanged(videoSize: VideoSize) {
                fitTextureToVideo(videoSize)
            }
        })
    }

    /**
     * Resizes the TextureView to the video's aspect ratio so the picture
     * is not stretched. The dual-lens frame is taller than 16:9, so the
     * view grows; it is capped at 65% of the screen height.
     */
    private fun fitTextureToVideo(videoSize: VideoSize) {
        val w = videoSize.width
        val h = videoSize.height
        if (w <= 0 || h <= 0) return
        val ratio = if (videoSize.pixelWidthHeightRatio > 0f) {
            videoSize.pixelWidthHeightRatio.toDouble()
        } else 1.0
        textureView.post {
            val viewWidth = textureView.width.takeIf { it > 0 }
                ?: textureView.context.resources.displayMetrics.widthPixels
            val wantHeight = (viewWidth * (h / w.toDouble()) / ratio).toInt()
            val maxHeight = (textureView.context.resources.displayMetrics.heightPixels * 0.65).toInt()
            val height = wantHeight.coerceIn(220, maxHeight)
            val params = textureView.layoutParams
            if (params != null && params.height != height) {
                params.height = height
                textureView.layoutParams = params
            }
        }
    }

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

    /** Snapshot of the current frame from the TextureView (correct aspect). */
    fun snapshot(onResult: (Bitmap?) -> Unit) {
        try {
            onResult(textureView.bitmap)
        } catch (_: Exception) { onResult(null) }
    }

    fun stop() {
        try { player.stop() } catch (_: Exception) {}
    }

    fun setMuted(muted: Boolean) { player.volume = if (muted) 0f else 1f }

    fun release() {
        try { player.release() } catch (_: Exception) {}
    }
}
