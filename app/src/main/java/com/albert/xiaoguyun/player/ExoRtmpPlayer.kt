package com.albert.xiaoguyun.player

import android.app.Activity
import android.content.Context
import android.graphics.Bitmap
import android.os.Handler
import android.os.Looper
import android.view.PixelCopy
import android.view.SurfaceView
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.rtmp.RtmpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.ProgressiveMediaSource

/**
 * Live + local-file player on Media3 ExoPlayer.
 *
 * v1.1.6 replaces libVLC for playback: VLC 3.x (and stock ExoPlayer) cannot
 * decode this camera's stream — both definitions fail with EncounteredError
 * while stream data is flowing. The original app plays it with its own
 * FFmpeg native player. This player keeps ExoPlayer's MediaCodec rendering
 * but feeds RTMP through [FlvEnhancedExtractor], which handles legacy
 * AVC/HEVC and enhanced RTMP ('avc1'/'hvc1' FourCC) FLV tags.
 *
 * Local files use the default extractors. Audio is video-only for RTMP:
 * the camera's audio is G.711, which Media3 cannot decode from FLV.
 * Local recording still uses [VlcRecorder] (libVLC sout), unchanged.
 */
@OptIn(UnstableApi::class)
class ExoRtmpPlayer(context: Context, private val surfaceView: SurfaceView) {
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
                onError?.invoke()
            }
        })
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

    /**
     * Snapshot of the current frame via PixelCopy from the SurfaceView.
     * Same caveat as the old VLC version: PixelCopy on a hardware-decoded
     * SurfaceView works on most devices but is not guaranteed on all.
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
        try { player.stop() } catch (_: Exception) {}
    }

    fun setMuted(muted: Boolean) { player.volume = if (muted) 0f else 1f }

    fun release() {
        try { player.release() } catch (_: Exception) {}
    }
}
