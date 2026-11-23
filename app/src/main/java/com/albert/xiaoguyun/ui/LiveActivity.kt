package com.albert.xiaoguyun.ui

import android.Manifest
import android.content.BroadcastReceiver
import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.ActivityInfo
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.graphics.Color
import android.content.res.ColorStateList
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.os.Handler
import android.os.Looper
import android.provider.MediaStore
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.TextureView
import android.view.View
import android.widget.FrameLayout
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.albert.xiaoguyun.DebugLog
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.audio.MicSelfTest
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.player.ExoRtmpPlayer
import com.albert.xiaoguyun.player.RtmpRecorder
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
    private lateinit var pipTop: ExoRtmpPlayer
    private lateinit var pipBottom: ExoRtmpPlayer
    private var recorder: RtmpRecorder? = null
    private lateinit var intercom: IntercomManager
    private lateinit var tvStatus: TextView
    private lateinit var btnExitFullscreen: Button
    private lateinit var sn: String
    private var netType: String? = null
    // Default wire value 1 = fluent, matching the original app's default
    // (STREAM_HIGH/FLUENT semantics were verified empirically, see WsClient).
    private var stream = WsClient.STREAM_FLUENT
    private var muted = false
    private var rtmpAddr: String? = null
    private var intercomMutedByTalk = false

    // Three-pane view (v1.2.2): the camera is a three-video device
    // (SN char 3), but /0 and /2 do NOT exist as RTMP streams (probed
    // 2026-11-23) — the original's three panes are three CROPS of the
    // one 640x720 combined frame: FULL (both lenses), TOP (gun lens),
    // BOTTOM (ball lens). The big view shows one crop; the two PiPs
    // show the other two. Tap a PiP to make it big; the 切换镜头 button
    // cycles the big view's crop. Each pane is its own player on the
    // same RTMP URL (PiPs are muted — only the big view plays sound).
    private var bigCrop = ExoRtmpPlayer.Crop.FULL

    // Smart tracking state (v1.2.2, code 16/17). Queried on open.
    private var trackOn = false
    private var trackSen = 2

    // Fill light (v1.2.4, code 11 "led"). The original app auto-switches it
    // off 5 minutes after switch-on (VideoLiveActivity.ledCloseTime=300000).
    private var ledOn = false
    private val ledHandler = Handler(Looper.getMainLooper())
    private val ledAutoOff = Runnable {
        if (ledOn) {
            ledOn = false
            ws.sendLed(sn, 0)
            updateLedButton()
            DebugLog.log("UI", "补光灯 5 分钟自动关闭")
            Toast.makeText(this, "补光灯已自动关闭", Toast.LENGTH_SHORT).show()
        }
    }

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

    // v1.2.3 black-screen hardening. The v1.2.2 regression happened after a
    // double page-open: each LiveActivity starts THREE ExoPlayers, so two
    // quick opens burst SIX RTMP pulls at the relay over a flaky network and
    // every player stalled in BUFFERING forever (no error, no frame). The
    // PiPs now wait for the main player's first frame (4 s fallback), and a
    // watchdog re-prepares the main player (max twice) when no frame arrives.
    private val uiHandler = android.os.Handler(android.os.Looper.getMainLooper())
    private var pipStartTask: Runnable? = null
    private var watchdogTask: Runnable? = null
    private var mainRecoveries = 0

    // v1.2.3: ADB-triggered microphone self-test (MicSelfTest). Registered
    // only while the live page is open, not exported to other apps.
    private val micTestReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action == MicSelfTest.ACTION) MicSelfTest.run(this@LiveActivity)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn").orEmpty()
        netType = intent.getStringExtra("netType")
        val name = intent.getStringExtra("name") ?: sn
        setContentView(R.layout.activity_live)
        DebugLog.log("UI", "打开直播页 sn=$sn name=$name netType=$netType")
        findViewById<TextView>(R.id.tvTitle).text = name
        tvStatus = findViewById(R.id.tvLiveStatus)
        // v1.2.2: TextureView (programmatic, NO background — the
        // background attribute is what crashed v1.1.7's constructor).
        // Big view + two PiPs (see the three-pane comment on bigCrop).
        val videoContainer = findViewById<FrameLayout>(R.id.videoContainer)
        val textureView = TextureView(this)
        videoContainer.addView(textureView, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))
        player = ExoRtmpPlayer(this, textureView, videoContainer)
        pipTop = makePip(videoContainer, topMarginDp = 8)
        pipBottom = makePip(videoContainer, topMarginDp = 106)
        pipTop.crop = ExoRtmpPlayer.Crop.TOP
        pipBottom.crop = ExoRtmpPlayer.Crop.BOTTOM
        pipTop.setMuted(true)
        pipBottom.setMuted(true)
        // v1.2.2: floating "退出全屏" — the old fullscreen hid every
        // button, so the only exit was tapping the video (and a tap with
        // any movement became a PTZ swipe instead). This button is
        // visible only in fullscreen; BACK also exits fullscreen now.
        btnExitFullscreen = Button(this).apply {
            text = "退出全屏"
            visibility = View.GONE
            setOnClickListener { if (isFullscreen) toggleFullscreen() }
        }
        videoContainer.addView(btnExitFullscreen, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT,
            android.view.Gravity.BOTTOM or android.view.Gravity.END
        ).apply { setMargins(0, 0, dp(8), dp(8)) })
        // v1.2.2: the player is ExoPlayer + FlvEnhancedExtractor now; if it
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
        ws.rawListener = { code, obj ->
            runOnUiThread {
                val t = tvStatus.text.toString()
                if (t.startsWith("正在请求直播地址")) {
                    tvStatus.text = "正在请求直播地址…（已收到信令 $code）"
                }
                // Fill-light reply (code/state 11): data.led 0=off 1=on.
                if (code == 11) {
                    val v = obj.optJSONObject("data")?.optInt("led", -1) ?: -1
                    if (v == 0 || v == 1) {
                        ledOn = v == 1
                        updateLedButton()
                        if (ledOn) {
                            ledHandler.removeCallbacks(ledAutoOff)
                            ledHandler.postDelayed(ledAutoOff, 300_000)
                        } else {
                            ledHandler.removeCallbacks(ledAutoOff)
                        }
                        DebugLog.log("UI", "补光灯状态回包 led=$v")
                    }
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
        // v1.2.2: local recording is RtmpRecorder (RTMP stream copy to
        // .flv). The old VlcRecorder produced a 0-byte file every time
        // (VLC cannot play this stream, so its sout had nothing to
        // record). start()/stop() block on the socket, so they run on a
        // background thread and report back on the UI thread.
        val btnRecord = findViewById<Button>(R.id.btnRecord)
        btnRecord.setOnClickListener {
            val rec = recorder
            if (rec != null && rec.isRecording) {
                btnRecord.text = "本地录像"
                btnRecord.backgroundTintList = ColorStateList.valueOf(Color.parseColor("#FF6200EE"))
                btnRecord.isEnabled = false
                Thread {
                    val f = rec.stop()
                    recorder = null
                    runOnUiThread {
                        btnRecord.isEnabled = true
                        val size = f?.length() ?: 0
                        Toast.makeText(this, if (size > 0) "录像已保存：${f?.absolutePath}（${size / 1024} KB，可用电脑 VLC 打开）" else "录像文件为空：流一直没开始（取流失败或连接被断开）", Toast.LENGTH_LONG).show()
                    }
                }.start()
            } else {
                val addr = rtmpAddr
                if (addr.isNullOrBlank()) {
                    Toast.makeText(this, "还没有直播地址", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                val stamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
                val dir = File(getExternalFilesDir(Environment.DIRECTORY_MOVIES), "xiaoguyun")
                val out = File(dir, "live_${sn}_$stamp.flv")
                btnRecord.isEnabled = false
                Thread {
                    val newRec = RtmpRecorder(addr, out)
                    val ok = newRec.start()
                    runOnUiThread {
                        btnRecord.isEnabled = true
                        if (ok) {
                            recorder = newRec
                            btnRecord.text = "停止录像"
                            btnRecord.backgroundTintList = ColorStateList.valueOf(Color.parseColor("#D32F2F"))
                            Toast.makeText(this, "正在录像：${out.absolutePath}", Toast.LENGTH_SHORT).show()
                        } else {
                            Toast.makeText(this, "录像启动失败：${newRec.lastError}", Toast.LENGTH_LONG).show()
                        }
                    }
                }.start()
            }
        }
        findViewById<Button>(R.id.btnLens).setOnClickListener { switchLens() }
        // Intercom: press-and-hold to talk (safer for echo than toggle).
        val btnIntercom = findViewById<Button>(R.id.btnIntercom)
        btnIntercom.setOnTouchListener { _, e ->
            when (e.action) {
                MotionEvent.ACTION_DOWN -> {
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO)
                        != PackageManager.PERMISSION_GRANTED) {
                        ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.RECORD_AUDIO), 1)
                    } else {
                        intercom.start()
                        btnIntercom.text = "正在说话…（松开结束）"
                        btnIntercom.backgroundTintList =
                            ColorStateList.valueOf(Color.parseColor("#D32F2F"))
                    }
                    true
                }
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                    intercom.stop()
                    btnIntercom.text = getString(R.string.intercom)
                    btnIntercom.backgroundTintList =
                        ColorStateList.valueOf(Color.parseColor("#FF6200EE"))
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
        // v1.2.2: smart tracking (智能追踪) — the camera's own feature:
        // when on, the ball lens follows movement by itself (that is why
        // it rotates with nobody touching it). Original app: code 16
        // settrack {sw, sen} / code 17 gettrack, in DeviceSettingActivity.
        // The switch lives on the camera, not in the app — it stays on
        // until it is turned off here (or in the original app).
        findViewById<Button>(R.id.btnTrack).setOnClickListener {
            val newSw = if (trackOn) 0 else 1
            ws.setTrack(sn, newSw, trackSen)
            trackOn = newSw == 1
            updateTrackButton()
            DebugLog.log("UI", "智能追踪 ${if (trackOn) "开" else "关"} sen=$trackSen")
            Toast.makeText(this, "智能追踪已${if (trackOn) "开启" else "关闭"}", Toast.LENGTH_SHORT).show()
        }
        findViewById<Button>(R.id.btnFillLight).setOnClickListener {
            // Toggle like the original (VideoLiveClickControl): the reply
            // frame (code 11) is the source of truth and re-renders the button.
            val turnOn = !ledOn
            ws.sendLed(sn, if (turnOn) 1 else 0)
            ledOn = turnOn
            updateLedButton()
            if (turnOn) {
                ledHandler.removeCallbacks(ledAutoOff)
                ledHandler.postDelayed(ledAutoOff, 300_000)
            } else {
                ledHandler.removeCallbacks(ledAutoOff)
            }
            DebugLog.log("UI", "补光灯手动${if (turnOn) "开" else "关"}")
            Toast.makeText(this, "补光灯已${if (turnOn) "开启（5 分钟后自动关）" else "关闭"}", Toast.LENGTH_SHORT).show()
        }
        refreshTrackState()
        // Query the current fill-light state (original sends led=3 on entry).
        ws.requestLedState(sn)
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
        // Debug-only ADB probe (MicSelfTest). EXPORTED is required because
        // `am broadcast` runs as the shell uid, not the app uid, so a
        // NOT_EXPORTED receiver rejects it. The receiver only measures mic
        // levels and writes logs; remove this whole block before release.
        ContextCompat.registerReceiver(
            this, micTestReceiver, IntentFilter(MicSelfTest.ACTION),
            ContextCompat.RECEIVER_EXPORTED,
        )
        ws.connect()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putBoolean("fullscreen", isFullscreen)
    }

    /** v1.2.2: BACK exits fullscreen first (before, it left the page). */
    override fun onBackPressed() {
        if (isFullscreen) {
            toggleFullscreen()
            return
        }
        super.onBackPressed()
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
            btnExitFullscreen.visibility = View.VISIBLE
        } else {
            requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
            controls?.visibility = View.VISIBLE
            title?.visibility = View.VISIBLE
            fsBtn?.text = "全屏"
            btnExitFullscreen.visibility = View.GONE
        }
        player.refit()
        pipTop.refit()
        pipBottom.refit()
    }

    // ---- three-pane helpers (v1.2.2) ----

    private fun dp(v: Int): Int = (v * resources.displayMetrics.density).toInt()

    /** One PiP: a small fixed-size TextureView in the video container's
     * top-right corner, with its own (muted) player. Tap to make it big. */
    private fun makePip(container: FrameLayout, topMarginDp: Int): ExoRtmpPlayer {
        val tv = TextureView(this)
        val lp = FrameLayout.LayoutParams(
            dp(160), dp(90),
            android.view.Gravity.TOP or android.view.Gravity.END
        )
        lp.setMargins(0, dp(topMarginDp), dp(8), 0)
        container.addView(tv, lp)
        val p = ExoRtmpPlayer(this, tv, container, fixedSize = true)
        tv.setOnClickListener { onPipTapped(p) }
        return p
    }

    /** The tapped PiP's crop becomes the big view's crop; the PiPs take
     * the other two crops. */
    private fun onPipTapped(pip: ExoRtmpPlayer) {
        bigCrop = pip.crop
        applyCrops()
        DebugLog.log("UI", "点小画面换大画面 crop=$bigCrop")
    }

    private fun applyCrops() {
        player.crop = bigCrop
        val rest = ExoRtmpPlayer.Crop.entries.filter { it != bigCrop }
        pipTop.crop = rest[0]
        pipBottom.crop = rest[1]
    }

    /** Plays the RTMP URL: main pane immediately, the two muted PiPs only
     *  after the main pane renders its first frame (4 s fallback). */
    private fun playAll(addr: String) {
        mainRecoveries = 0
        player.play(addr)
        pipStartTask?.let { uiHandler.removeCallbacks(it) }
        // v1.2.3: the first-frame callback and the 4 s fallback share one
        // Runnable — without this guard the fallback still fired after the
        // callback had already started the PiPs, restarting both players once.
        var pipsStarted = false
        val startPips = Runnable {
            if (isFinishing || pipsStarted) return@Runnable
            pipsStarted = true
            // Cancel the still-pending 4 s fallback (same Runnable instance).
            pipStartTask?.let { uiHandler.removeCallbacks(it) }
            DebugLog.log("PLAYER", "启动两个小画面播放器")
            pipTop.play(addr)
            pipBottom.play(addr)
        }
        pipStartTask = startPips
        player.onFirstFrame = { uiHandler.post(startPips) }
        uiHandler.postDelayed(startPips, 4000)
    }

    private fun cropName(c: ExoRtmpPlayer.Crop): String = when (c) {
        ExoRtmpPlayer.Crop.FULL -> "双镜头（全画面）"
        ExoRtmpPlayer.Crop.TOP -> "枪机镜头（上半）"
        ExoRtmpPlayer.Crop.BOTTOM -> "球机镜头（下半）"
    }

    // ---- smart tracking helpers (v1.2.2, code 16/17) ----

    private fun refreshTrackState() {
        ws.requestTrack(sn) { obj ->
            runOnUiThread {
                val data = obj?.optJSONObject("data") ?: obj
                val sw = data?.optInt("sw", -1) ?: -1
                val sen = data?.optInt("sen", -1) ?: -1
                if (sw >= 0) trackOn = sw == 1
                if (sen >= 0) trackSen = sen
                updateTrackButton()
            }
        }
    }

    private fun updateTrackButton() {
        findViewById<Button>(R.id.btnTrack).text =
            "智能追踪：${if (trackOn) "开" else "关"}"
    }

    private fun updateLedButton() {
        val btn = findViewById<Button>(R.id.btnFillLight)
        btn.text = "补光灯：${if (ledOn) "开" else "关"}"
        // Warm amber when on, default material tint when off.
        btn.backgroundTintList = ColorStateList.valueOf(
            if (ledOn) Color.parseColor("#FFB300") else Color.parseColor("#FF6200EE"),
        )
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
                // TODO §5-#1: RTMP address shape is unverified statically.
                // Only the host is shown in the UI; full URL is passed
                // straight to VLC and never logged.
                val host = addr.substringAfter("://").substringBefore("/")
                tvStatus.text = "已拿到直播地址（$host，${if (stream == WsClient.STREAM_HIGH) "高清" else "流畅"}），正在播放…"
                playErrored = false
                playAll(addr)
                armWatchdog(addr)
            }
        }
    }

    /**
     * v1.2.3 watchdog: 8 s after an address arrived, if the main player has
     * not rendered a single frame (the v1.2.2 silent black-screen shape),
     * re-prepare it automatically — up to twice. Explicit playback errors
     * and the definition fallback still take precedence.
     */
    private fun armWatchdog(addr: String) {
        watchdogTask?.let { uiHandler.removeCallbacks(it) }
        val task = object : Runnable {
            override fun run() {
                if (isFinishing || playErrored || rtmpAddr != addr) return
                if (player.hasRenderedFrame) return
                if (mainRecoveries < 2) {
                    mainRecoveries++
                    tvStatus.text = "已拿到地址但 8 秒无画面，自动重连（第 $mainRecoveries 次）…"
                    DebugLog.log("PLAYER", "看门狗：主画面无帧，自动 replay 第 $mainRecoveries 次")
                    player.replay()
                    uiHandler.postDelayed(this, 8000)
                } else {
                    tvStatus.text = "已拿到地址但多次重连无画面：播放器未收到视频流（取流已成功，问题在播放环节，请截此屏）"
                    DebugLog.log("PLAYER", "看门狗：两次恢复仍无帧，放弃自动重试")
                }
            }
        }
        watchdogTask = task
        uiHandler.postDelayed(task, 8000)
    }

    /**
     * Lens switch (v1.2.2): cycles the BIG view's crop — full (both
     * lenses) -> gun lens (top half) -> ball lens (bottom half) -> full.
     * The old implementation swapped the RTMP address suffix 1<->2,
     * which was wrong: /2 does not exist as a stream (probed
     * 2026-11-23), so switching froze the player on a dead URL. The
     * two lenses are the two halves of the one combined frame.
     */
    private fun switchLens() {
        bigCrop = when (bigCrop) {
            ExoRtmpPlayer.Crop.FULL -> ExoRtmpPlayer.Crop.TOP
            ExoRtmpPlayer.Crop.TOP -> ExoRtmpPlayer.Crop.BOTTOM
            ExoRtmpPlayer.Crop.BOTTOM -> ExoRtmpPlayer.Crop.FULL
        }
        applyCrops()
        Toast.makeText(this, "大画面：${cropName(bigCrop)}", Toast.LENGTH_SHORT).show()
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
        try { unregisterReceiver(micTestReceiver) } catch (_: Exception) {}
        try {
            pipStartTask?.let { uiHandler.removeCallbacks(it) }
            watchdogTask?.let { uiHandler.removeCallbacks(it) }
            player.onFirstFrame = null
        } catch (_: Exception) {}
        try { ledHandler.removeCallbacks(ledAutoOff) } catch (_: Exception) {}
        try { ptzFuture?.cancel(true); ptzExecutor.shutdownNow() } catch (_: Exception) {}
        try { if (intercom.isTalking) intercom.stop() } catch (_: Exception) {}
        try { recorder?.release() } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        try { pipTop.release() } catch (_: Exception) {}
        try { pipBottom.release() } catch (_: Exception) {}
        ws.disconnect()
        super.onDestroy()
    }
}
