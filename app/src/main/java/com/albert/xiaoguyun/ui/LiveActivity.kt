package com.albert.xiaoguyun.ui

import android.Manifest
import android.content.ContentValues
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.provider.MediaStore
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.SurfaceView
import android.view.View
import android.widget.FrameLayout
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import com.albert.xiaoguyun.DebugLog
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.player.ExoRtmpPlayer
import com.albert.xiaoguyun.player.VlcRecorder
import com.albert.xiaoguyun.ws.WsClient
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.Executors
import java.util.concurrent.ScheduledFuture
import java.util.concurrent.TimeUnit

class LiveActivity : AppCompatActivity() {
    private lateinit var ws: WsClient
    private lateinit var player: ExoRtmpPlayer
    private lateinit var recorder: VlcRecorder
    private lateinit var intercom: IntercomManager
    private lateinit var tvStatus: TextView
    private lateinit var sn: String
    private var netType: String? = null
    private var stream = WsClient.STREAM_HIGH
    private var muted = false
    private var rtmpAddr: String? = null
    /** Dual-lens toggle. TODO: 1<->2 suffix swap is an assumption (AUDIT.md §4). */
    private var lens = 1
    private var intercomMutedByTalk = false

    // PTZ (v1.2.1, root cause found in the original app's code):
    // the original re-sends the direction every 250 ms while held, and on
    // release it ONLY cancels the scheduler — it never sends anything.
    // dir=0 is NOT "stop": the original sends it only from an explicit
    // reset button ("执行方向复位中..."), i.e. dir=0 = rotate back to the
    // home position. v1.1.0–v1.2.0 sent dir=0 on every button release, so
    // every tap homed the camera: it kept rotating after a tap, the
    // apparent direction depended on where the camera was relative to
    // home, and the position never stayed where the user left it.
    // A tap now sends exactly one dir frame (one step); holding repeats
    // it every 250 ms (continuous). The camera stops by itself when the
    // frames stop arriving. Reset is a separate button (btnResetPtz).
    private val ptzExecutor = Executors.newSingleThreadScheduledExecutor()
    private var ptzFuture: ScheduledFuture<*>? = null
    private var isFullscreen = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn").orEmpty()
        netType = intent.getStringExtra("netType")
        val name = intent.getStringExtra("name") ?: sn
        setContentView(R.layout.activity_live)
        DebugLog.log("UI", "打开直播页 sn=$sn name=$name netType=$netType")
        findViewById<TextView>(R.id.tvTitle).text = name
        tvStatus = findViewById(R.id.tvLiveStatus)
        // v1.2.0: SurfaceView created programmatically into videoContainer.
        // TextureView with android:background crashes this device's
        // constructor (UnsupportedOperationException, 2026-11-23).
        val videoContainer = findViewById<FrameLayout>(R.id.videoContainer)
        val surfaceView = SurfaceView(this)
        videoContainer.addView(surfaceView, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))
        player = ExoRtmpPlayer(this, surfaceView, videoContainer)
        // v1.1.6: the player is ExoPlayer + FlvEnhancedExtractor now; if it
        // still errors on this stream, the sub-stream is often a different
        // codec, so on the first playback error automatically retry with
        // the other definition before giving up.
        player.onError = {
            runOnUiThread {
                if (!triedFallback) {
                    triedFallback = true
                    stream = if (stream == WsClient.STREAM_HIGH) WsClient.STREAM_FLUENT else WsClient.STREAM_HIGH
                    findViewById<Button>(R.id.btnDefinition).text =
                        if (stream == WsClient.STREAM_HIGH) "高清" else "流畅"
                    tvStatus.text = "当前清晰度播不出，自动换${if (stream == WsClient.STREAM_HIGH) "高清" else "流畅"}再试…"
                    ws.clearVideoCache()
                    requestVideo()
                } else {
                    playErrored = true
                    tvStatus.text = "高清/流畅都播不出：播放器解不了这路流（疑似 H.265），请点重试或复制地址到电脑上看编码"
                }
            }
        }
        recorder = VlcRecorder(this)
        val store = TokenStore(this)
        ws = WsClient(store)
        ws.subscribeSns = listOf(sn)
        intercom = IntercomManager(
            context = this, ws = ws, api = ApiClient(store), sn = sn,
            rtmpAddr = { rtmpAddr },
            setLocalMuted = { m ->
                intercomMutedByTalk = m
                if (m) player.setMuted(true) else if (!muted) player.setMuted(false)
            },
            onState = { msg -> runOnUiThread { tvStatus.text = msg } },
        )
        ws.listener = object : WsClient.Listener {
            override fun onConnected() {
                runOnUiThread {
                    // v1.1.4: subscribe is now automatic on every (re)connect
                    // (WsClient.subscribeSns); requestVideo waits for the
                    // state-90 ack before sending code 22.
                    requestVideo()
                }
            }
            override fun onDisconnected(reason: String) {
                runOnUiThread { tvStatus.text = "信令断开：$reason" }
            }
            override fun onDeviceStates(states: Map<String, WsClient.DeviceState>) {}
            override fun onError(message: String) {
                runOnUiThread { tvStatus.text = "信令错误：$message" }
            }
        }
        // Diagnostic: show the last WS frame id while waiting, so a
        // screenshot tells us whether the server answered at all.
        ws.rawListener = { code, _ ->
            runOnUiThread {
                val t = tvStatus.text.toString()
                if (t.startsWith("正在请求直播地址")) {
                    tvStatus.text = "正在请求直播地址…（已收到信令 $code）"
                }
            }
        }
        findViewById<Button>(R.id.btnRetryLive).setOnClickListener {
            // v1.1.5: a retry must not reuse the cached address — the old
            // code re-played the same (possibly expired) RTMP URL.
            triedFallback = false
            playErrored = false
            ws.clearVideoCache()
            requestVideo()
        }
        // v1.1.5: copy the live RTMP URL for PC-side diagnosis
        // (paste into desktop VLC / ffprobe to see the video codec).
        findViewById<Button>(R.id.btnCopyAddr).setOnClickListener {
            val addr = rtmpAddr
            if (addr.isNullOrBlank()) {
                android.widget.Toast.makeText(this, "还没有直播地址", android.widget.Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }
            val cm = getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
            cm.setPrimaryClip(android.content.ClipData.newPlainText("rtmp", addr))
            android.widget.Toast.makeText(this, "直播地址已复制，可粘贴到电脑 VLC/ffprobe 看编码", android.widget.Toast.LENGTH_SHORT).show()
        }
        val btnDef = findViewById<Button>(R.id.btnDefinition)
        btnDef.setOnClickListener {
            triedFallback = false
            playErrored = false
            stream = if (stream == WsClient.STREAM_HIGH) WsClient.STREAM_FLUENT else WsClient.STREAM_HIGH
            btnDef.text = if (stream == WsClient.STREAM_HIGH) "高清" else "流畅"
            ws.clearVideoCache()
            requestVideo()
        }
        val btnMute = findViewById<Button>(R.id.btnMute)
        btnMute.setOnClickListener {
            muted = !muted
            if (!intercomMutedByTalk) player.setMuted(muted)
            btnMute.text = if (muted) getString(R.string.unmute) else getString(R.string.mute)
        }
        findViewById<Button>(R.id.btnPlayback).setOnClickListener {
            val i = Intent(this, PlaybackActivity::class.java)
            i.putExtra("sn", sn); i.putExtra("name", name); i.putExtra("netType", netType)
            startActivity(i)
        }
        findViewById<Button>(R.id.btnDetail).setOnClickListener {
            val i = Intent(this, DeviceDetailActivity::class.java)
            i.putExtra("sn", sn); i.putExtra("name", name); startActivity(i)
        }
        // PTZ: press sends a direction (repeated every 250 ms), release
        // only stops re-sending (no dir=0 — that is the home/reset
        // command). dir values: up=1, down=2, left=3, right=4.
        bindPtz(R.id.btnUp, WsClient.PTZ_UP)
        bindPtz(R.id.btnDown, WsClient.PTZ_DOWN)
        bindPtz(R.id.btnLeft, WsClient.PTZ_LEFT)
        bindPtz(R.id.btnRight, WsClient.PTZ_RIGHT)
        findViewById<Button>(R.id.btnSnapshot).setOnClickListener { takeSnapshot() }
        val btnRecord = findViewById<Button>(R.id.btnRecord)
        btnRecord.setOnClickListener {
            DebugLog.log("UI", "点录像按钮 isRecording=${recorder.isRecording}")
            if (recorder.isRecording) {
                val f = recorder.stop()
                btnRecord.text = "本地录像"
                val size = f?.length() ?: 0
                Toast.makeText(this, if (size > 0) "录像已保存：${f?.absolutePath}（${size / 1024} KB）" else "录像文件为空，sout 录制可能未成功（见 TODO）", Toast.LENGTH_LONG).show()
            } else {
                val addr = rtmpAddr
                DebugLog.log("UI", "取流结果 addr=${addr ?: "空"}")
                if (addr.isNullOrBlank()) {
                    Toast.makeText(this, "还没有直播地址", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                val stamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
                val dir = File(getExternalFilesDir(Environment.DIRECTORY_MOVIES), "xiaoguyun")
                val out = File(dir, "live_${sn}_$stamp.ts")
                if (recorder.start(addr, out)) {
                    btnRecord.text = "停止录像"
                    Toast.makeText(this, "正在录像：${out.absolutePath}", Toast.LENGTH_SHORT).show()
                } else {
                    Toast.makeText(this, "录像启动失败", Toast.LENGTH_SHORT).show()
                }
            }
        }
        findViewById<Button>(R.id.btnLens).setOnClickListener { switchLens() }
        // Intercom: press-and-hold to talk (safer for echo than toggle).
        findViewById<Button>(R.id.btnIntercom).setOnTouchListener { _, e ->
            when (e.action) {
                MotionEvent.ACTION_DOWN -> {
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO)
                        != PackageManager.PERMISSION_GRANTED) {
                        ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.RECORD_AUDIO), 1)
                    } else {
                        intercom.start()
                    }
                    true
                }
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                    intercom.stop()
                    true
                }
                else -> true
            }
        }
        // v1.2.1: explicit PTZ reset (dir=0 = home, per the original app's
        // "执行方向复位中..." button). Never sent on button release.
        findViewById<Button>(R.id.btnResetPtz).setOnClickListener {
            ws.sendMotor(sn, WsClient.PTZ_STOP)
            DebugLog.log("UI", "点云台复位 dir=0")
            Toast.makeText(this, "执行方向复位中…", Toast.LENGTH_SHORT).show()
        }
        // v1.2.1: fullscreen (button + single tap on the video).
        isFullscreen = savedInstanceState?.getBoolean("fullscreen") == true
        findViewById<Button>(R.id.btnFullscreen).setOnClickListener { toggleFullscreen() }
        val gesture = GestureDetector(this, object : GestureDetector.SimpleOnGestureListener() {
            override fun onSingleTapConfirmed(e: MotionEvent): Boolean {
                toggleFullscreen()
                return true
            }
            // v1.2.1: swipe on the video = one PTZ step in that direction
            // (the original app's MoveFrameLayout slide listener sends a
            // single motor frame per swipe, no repeat, no stop).
            override fun onFling(
                e1: MotionEvent?, e2: MotionEvent, vx: Float, vy: Float,
            ): Boolean {
                if (e1 == null) return false
                val dx = e2.x - e1.x
                val dy = e2.y - e1.y
                if (kotlin.math.abs(dx) < 80 && kotlin.math.abs(dy) < 80) return false
                val dir = if (kotlin.math.abs(dx) > kotlin.math.abs(dy)) {
                    if (dx > 0) WsClient.PTZ_RIGHT else WsClient.PTZ_LEFT
                } else {
                    if (dy > 0) WsClient.PTZ_DOWN else WsClient.PTZ_UP
                }
                ws.sendMotor(sn, dir)
                DebugLog.log("UI", "滑动画面云台单步 dir=$dir")
                return true
            }
        })
        videoContainer.setOnTouchListener { _, e -> gesture.onTouchEvent(e) }
        applyFullscreen()
        ws.connect()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putBoolean("fullscreen", isFullscreen)
    }

    /** Fullscreen = landscape + all controls hidden, video fills the screen.
     * Tap the video (or the button) again to exit. Rotation recreates the
     * page and re-requests the stream (a few seconds), same as rotating
     * the phone by hand. */
    private fun toggleFullscreen() {
        isFullscreen = !isFullscreen
        applyFullscreen()
    }

    private fun applyFullscreen() {
        val controls = findViewById<View>(R.id.scrollControls)
        val title = findViewById<View>(R.id.tvTitle)
        val fsBtn = findViewById<Button>(R.id.btnFullscreen)
        if (isFullscreen) {
            requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE
            controls?.visibility = View.GONE
            title?.visibility = View.GONE
            fsBtn?.text = "退出全屏"
        } else {
            requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
            controls?.visibility = View.VISIBLE
            title?.visibility = View.VISIBLE
            fsBtn?.text = "全屏"
        }
        player.refit()
    }

    private fun bindPtz(id: Int, dir: Int) {
        findViewById<Button>(id).setOnTouchListener { _, e ->
            when (e.action) {
                MotionEvent.ACTION_DOWN -> {
                    ws.sendMotor(sn, dir)
                    ptzFuture?.cancel(true)
                    ptzFuture = ptzExecutor.scheduleAtFixedRate(
                        { ws.sendMotor(sn, dir) }, 250, 250, TimeUnit.MILLISECONDS,
                    )
                }
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                    // v1.2.1: release ONLY stops re-sending (original app
                    // behaviour). Do NOT send dir=0 here — dir=0 is the
                    // home/reset command, not a stop.
                    ptzFuture?.cancel(true); ptzFuture = null
                }
            }
            true
        }
    }

    private var videoRetries = 0
    /** v1.1.5: whether the definition auto-fallback already ran, and
     *  whether the player reported an explicit error (watchdog must not
     *  overwrite it). */
    private var triedFallback = false
    private var playErrored = false

    private fun requestVideo() {
        tvStatus.text = "正在请求直播地址…"
        if (!ws.isOpen()) { ws.connect(); return }
        ws.requestVideo(sn, stream) { addr ->
            runOnUiThread {
                if (addr.isNullOrBlank()) {
                    // Original app auto-retries the stream request; one retry
                    // here covers a slow device wake-up before giving up.
                    if (videoRetries < 1) {
                        videoRetries++
                        tvStatus.text = "取流超时，重试一次…"
                        ws.clearVideoCache()
                        requestVideo()
                        return@runOnUiThread
                    }
                    tvStatus.text = "取流失败：12 秒内未收到 code 22 回复（设备可能离线，或 stream 映射不对）"
                    return@runOnUiThread
                }
                videoRetries = 0
                rtmpAddr = addr
                lens = when {
                    addr.endsWith("/1") -> 1
                    addr.endsWith("/2") -> 2
                    else -> 1
                }
                // TODO §5-#1: RTMP address shape is unverified statically.
                // Only the host is shown in the UI; full URL is passed
                // straight to VLC and never logged.
                val host = addr.substringAfter("://").substringBefore("/")
                tvStatus.text = "已拿到直播地址（$host，${if (stream == WsClient.STREAM_HIGH) "高清" else "流畅"}），正在播放…"
                playErrored = false
                player.play(addr)
                // v1.1.4 watchdog: if VLC still has no video 8 s after the
                // address arrived, say so explicitly — distinguishes "no
                // address" from "address OK but player gets no frames".
                // v1.1.5: do not overwrite an explicit playback error.
                android.os.Handler(android.os.Looper.getMainLooper()).postDelayed({
                    if (!isFinishing && !playErrored && rtmpAddr == addr && !player.isPlaying) {
                        tvStatus.text = "已拿到地址但 8 秒无画面：播放器未收到视频流（取流已成功，问题在播放环节，请截此屏）"
                    }
                }, 8000)
            }
        }
    }

    /**
     * Dual-lens switch (grab-ball dual camera). No lens/channel parameter
     * exists in code 22; the original app keeps one RTMP address and two
     * surfaces. TODO: this swaps the address suffix 1<->2, which is only
     * an assumption from the /video/<sn>/1|/2 shape — verify with the real
     * addr; if the addr has no such suffix the button reports it and does
     * nothing.
     */
    private fun switchLens() {
        val addr = rtmpAddr
        if (addr.isNullOrBlank()) {
            Toast.makeText(this, "还没有直播地址", Toast.LENGTH_SHORT).show()
            return
        }
        if (!addr.endsWith("/1") && !addr.endsWith("/2")) {
            Toast.makeText(this, "当前直播地址无 1/2 镜头后缀，无法切换（需实测确认地址形态）", Toast.LENGTH_LONG).show()
            return
        }
        lens = if (lens == 1) 2 else 1
        val newAddr = addr.dropLast(1) + lens
        rtmpAddr = newAddr
        ws.clearVideoCache()
        tvStatus.text = "正在切换到镜头 $lens…"
        player.play(newAddr)
        Toast.makeText(this, "已切换到镜头 $lens（地址后缀假设，未实测）", Toast.LENGTH_SHORT).show()
    }

    private fun takeSnapshot() {
        DebugLog.log("UI", "点抓拍")
        player.snapshot { bitmap ->
            runOnUiThread {
                if (bitmap == null) {
                    Toast.makeText(this, "抓拍失败（当前无画面可截）", Toast.LENGTH_LONG).show()
                    return@runOnUiThread
                }
                saveSnapshot(bitmap)
            }
        }
    }

    private fun saveSnapshot(bitmap: Bitmap) {
        val stamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
        val name = "xiaoguyun_${sn}_$stamp.jpg"
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                val values = ContentValues().apply {
                    put(MediaStore.Images.Media.DISPLAY_NAME, name)
                    put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg")
                    put(MediaStore.Images.Media.RELATIVE_PATH, Environment.DIRECTORY_PICTURES + "/XiaoGuYun")
                }
                val uri = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values)
                if (uri == null) { Toast.makeText(this, "抓拍保存失败", Toast.LENGTH_SHORT).show(); return }
                contentResolver.openOutputStream(uri)?.use { out ->
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 90, out)
                }
                Toast.makeText(this, "抓拍已保存到相册 /XiaoGuYun/$name", Toast.LENGTH_LONG).show()
            } else {
                val dir = File(getExternalFilesDir(Environment.DIRECTORY_PICTURES), "xiaoguyun")
                dir.mkdirs()
                val f = File(dir, name)
                f.outputStream().use { out -> bitmap.compress(Bitmap.CompressFormat.JPEG, 90, out) }
                Toast.makeText(this, "抓拍已保存：${f.absolutePath}", Toast.LENGTH_LONG).show()
            }
        } catch (e: Exception) {
            Toast.makeText(this, "抓拍保存失败：${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    override fun onDestroy() {
        try { ptzFuture?.cancel(true); ptzExecutor.shutdownNow() } catch (_: Exception) {}
        try { if (intercom.isTalking) intercom.stop() } catch (_: Exception) {}
        try { recorder.release() } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        ws.disconnect()
        super.onDestroy()
    }
}
