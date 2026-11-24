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
import android.os.SystemClock
import android.provider.MediaStore
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.TextureView
import android.view.View
import android.widget.FrameLayout
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ScrollView
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
import com.albert.xiaoguyun.util.LastFrameStore
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
    private var recorder: RtmpRecorder? = null
    private lateinit var intercom: IntercomManager
    private lateinit var tvStatus: TextView
    private lateinit var btnExitFullscreen: Button
    private lateinit var sn: String
    private var netType: String? = null
    // Default wire value 0 = high (v1.2.7: the user asked for HD by
    // default; the single definition button toggles HD <-> fluent).
    // STREAM_HIGH/FLUENT semantics were verified empirically, see WsClient.
    private var stream = WsClient.STREAM_HIGH
    private var muted = false
    private var rtmpAddr: String? = null
    private var intercomMutedByTalk = false

    // v1.2.7 three-way channel model. The camera is a three-video
    // device (SN char 3), but /0 and /2 do NOT exist as RTMP streams
    // (probed 2026-11-23) — the three views are three CROPS of the
    // one 640x720 combined frame. There is ONE live player now; the
    // channel strip shows LastFrameStore snapshots (top half / bottom
    // half / whole frame), never live players: three concurrent RTMP
    // pulls were a black-screen root cause, and in v1.2.6 the PiP
    // panes rendered the full frame squished into a corner (pane 1)
    // or fully black (pane 2). A mode switch only changes the big
    // player's crop (no restart, no dropped frames).
    //   TOP    = 全景相机 (gun lens, top half, single picture)
    //   BOTTOM = 特写相机 (ball lens, bottom half, single picture)
    //   FULL   = 双画面 (both lenses, whole frame)
    enum class LiveMode { TOP, BOTTOM, FULL }
    private var mode = LiveMode.FULL

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
    // Safety net: if the led=3 query reply never arrives (dropped frame,
    // slow reconnect), don't leave the button forever on "查询中…".
    private val ledQueryTimeout = Runnable {
        val btn = findViewById<Button?>(R.id.btnFillLight)
        if (btn != null && btn.text.toString().contains("查询中")) {
            ledOn = false
            updateLedButton()
            DebugLog.log("UI", "补光灯状态查询超时，按钮按关态呈现")
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
    // v1.2.5: live paused via the control bar (watchdog skips recovery while paused).
    private var livePaused = false

    // v1.2.6 background/foreground recovery (issue 5) + last-frame
    // snapshot (issue 4). The RTMP address is session-bound (the
    // videoplay reply is cached 40 s); after a long background stay
    // the old address is dead and the players freeze on the last frame
    // (the on-screen timestamp stops). We record when we went to
    // background and where playback was, so onResume can tell a short
    // pause (just resume) from a dead stream (re-fetch a fresh address).
    private var bgPauseWallMs = 0L
    private var bgPausePositionMs = -1L
    private var resumeCheckTask: Runnable? = null
    private var frameRefreshTask: Runnable? = null

    // v1.2.3 black-screen hardening. The v1.2.2 regression happened after a
    // double page-open: each LiveActivity used to start THREE ExoPlayers,
    // so two quick opens burst SIX RTMP pulls at the relay over a flaky
    // network and every player stalled in BUFFERING forever (no error, no
    // frame). v1.2.7 keeps ONE player (the channel strip is snapshots);
    // the watchdog re-prepares it (max twice) when no frame arrives.
    private val uiHandler = android.os.Handler(android.os.Looper.getMainLooper())
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
        // ONE player only (v1.2.7: the channel strip is snapshots).
        val videoContainer = findViewById<FrameLayout>(R.id.videoContainer)
        val textureView = TextureView(this)
        videoContainer.addView(textureView, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))
        player = ExoRtmpPlayer(this, textureView, videoContainer)
        // v1.2.7: initial channel mode from the home page (TOP =
        // 全景相机, BOTTOM = 特写相机, FULL = 双画面; default FULL).
        mode = runCatching { LiveMode.valueOf(intent.getStringExtra("mode") ?: "FULL") }
            .getOrDefault(LiveMode.FULL)
        player.crop = modeCrop(mode)
        setupChannelStrip()
        // v1.2.2: floating "退出全屏" — the old fullscreen hid every
        // button, so the only exit was tapping the video (and a tap with
        // any movement became a PTZ swipe instead). This button is
        // visible only in fullscreen; BACK also exits fullscreen now.
        btnExitFullscreen = Button(this).apply {
            text = "退出全屏"
            visibility = View.GONE
            background = ContextCompat.getDrawable(this@LiveActivity, R.drawable.bg_btn_primary_capsule)
            setTextColor(Color.WHITE)
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
                // Fill-light reply (code/state 11). The device echoes the
                // request value: 1=on, 0=off, and the entry query led=3 is
                // echoed back as 3 (not a real state). The original app does
                // setSelected(led == 1), i.e. anything except 1 renders off.
                if (code == 11) {
                    ledHandler.removeCallbacks(ledQueryTimeout)
                    val v = obj.optJSONObject("data")?.optInt("led", -1) ?: -1
                    if (v == 1 || v == 0) {
                        ledOn = v == 1
                        updateLedButton()
                        if (ledOn) {
                            ledHandler.removeCallbacks(ledAutoOff)
                            ledHandler.postDelayed(ledAutoOff, 300_000)
                        } else {
                            ledHandler.removeCallbacks(ledAutoOff)
                        }
                    } else if (v == 3) {
                        // Query echo: settle the button on the off appearance.
                        ledOn = false
                        updateLedButton()
                        ledHandler.removeCallbacks(ledAutoOff)
                    }
                    DebugLog.log("UI", "补光灯状态回包 led=$v -> ${if (ledOn) "开" else "关"}")
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
        // v1.2.7: one button reuses the toggle — it shows the CURRENT
        // definition; one tap switches to the other (高清 <-> 流畅),
        // another tap switches back. Default is 高清.
        btnDef.text = if (stream == WsClient.STREAM_HIGH) "高清" else "流畅"
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
        // v1.2.5: pause/resume the live players (ExoRtmpPlayer.pause() /
        // resume() already existed; the watchdog skips recovery while paused).
        val btnPause = findViewById<Button>(R.id.btnPauseLive)
        btnPause.setOnClickListener {
            livePaused = !livePaused
            if (livePaused) {
                player.pause()
            } else {
                player.resume()
            }
            btnPause.text = if (livePaused) getString(R.string.live_resume) else getString(R.string.live_pause)
            DebugLog.log("UI", if (livePaused) "直播已暂停" else "直播继续播放")
        }
        findViewById<Button>(R.id.btnPlayback).setOnClickListener {
            val i = Intent(this, PlaybackActivity::class.java)
            i.putExtra("sn", sn); i.putExtra("name", name); i.putExtra("netType", netType)
            startActivity(i)
        }
        // v1.2.5 tool row: album (system gallery), flip (the flip controls
        // live in the detail page), 云台 (scroll down to the PTZ card).
        findViewById<Button>(R.id.btnAlbumLive).setOnClickListener { AlbumHelper.openAlbum(this) }
        findViewById<Button>(R.id.btnFlipLive).setOnClickListener {
            val i = Intent(this, DeviceDetailActivity::class.java)
            i.putExtra("sn", sn); i.putExtra("name", name); startActivity(i)
        }
        findViewById<Button>(R.id.btnPtzJump).setOnClickListener {
            findViewById<ScrollView>(R.id.scrollControls)?.post {
                val card = findViewById<View>(R.id.ptzCard)
                findViewById<ScrollView>(R.id.scrollControls)?.smoothScrollTo(0, card.top)
            }
        }
        // v1.2.5 top bar: back / share / settings. Share and settings both
        // open the detail page (the share form lives there); nothing new.
        findViewById<Button>(R.id.btnBackLive).setOnClickListener { finish() }
        val openDetail = {
            val i = Intent(this, DeviceDetailActivity::class.java)
            i.putExtra("sn", sn); i.putExtra("name", name); startActivity(i)
        }
        findViewById<Button>(R.id.btnShareLive).setOnClickListener { openDetail() }
        findViewById<Button>(R.id.btnSettingsLive).setOnClickListener { openDetail() }
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
                btnRecord.backgroundTintList = null
                btnRecord.setTextColor(Color.parseColor("#111111"))
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
                            btnRecord.backgroundTintList = ColorStateList.valueOf(Color.parseColor("#FF5252"))
                            btnRecord.setTextColor(Color.WHITE)
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
                            ColorStateList.valueOf(Color.parseColor("#FF5252"))
                        btnIntercom.setTextColor(Color.WHITE)
                    }
                    true
                }
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                    intercom.stop()
                    btnIntercom.text = getString(R.string.intercom)
                    btnIntercom.backgroundTintList =
                        ColorStateList.valueOf(Color.parseColor("#007AFF"))
                    btnIntercom.setTextColor(Color.WHITE)
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
            if (!ws.sendLed(sn, if (turnOn) 1 else 0)) {
                Toast.makeText(this, "信令未连接，操作失败", Toast.LENGTH_SHORT).show()
                DebugLog.log("UI", "补光灯指令发送失败：socket 未开")
                return@setOnClickListener
            }
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
        // The query is gated on the subscribe ack inside WsClient; give the
        // round trip room (up to 3 s gate + network) before the safety net.
        ws.requestLedState(sn)
        ledHandler.postDelayed(ledQueryTimeout, 8_000)
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
    }

    // ---- three-way channel strip (v1.2.7) ----

    private fun dp(v: Int): Int = (v * resources.displayMetrics.density).toInt()

    private fun modeCrop(m: LiveMode): ExoRtmpPlayer.Crop = when (m) {
        LiveMode.TOP -> ExoRtmpPlayer.Crop.TOP
        LiveMode.BOTTOM -> ExoRtmpPlayer.Crop.BOTTOM
        LiveMode.FULL -> ExoRtmpPlayer.Crop.FULL
    }

    private fun modeName(m: LiveMode): String = when (m) {
        LiveMode.TOP -> "全景相机（枪机镜头）"
        LiveMode.BOTTOM -> "特写相机（球机镜头）"
        LiveMode.FULL -> "双画面（两个镜头同时看）"
    }

    /** The three snapshot items: tap one to switch the big view's
     * mode. Only the crop changes — the player is never restarted,
     * no frame is dropped. Snapshots come from LastFrameStore (top
     * half / bottom half / whole frame); an item with no snapshot
     * yet keeps its dark placeholder. */
    private fun setupChannelStrip() {
        findViewById<View>(R.id.chanItemTop).setOnClickListener { setMode(LiveMode.TOP) }
        findViewById<View>(R.id.chanItemBottom).setOnClickListener { setMode(LiveMode.BOTTOM) }
        findViewById<View>(R.id.chanItemFull).setOnClickListener { setMode(LiveMode.FULL) }
        refreshChannelStrip()
    }

    private fun setMode(m: LiveMode) {
        if (mode == m) return
        mode = m
        player.crop = modeCrop(m)
        refreshChannelStrip()
        DebugLog.log("UI", "切换通道模式 mode=$m")
        Toast.makeText(this, "大画面：${modeName(m)}", Toast.LENGTH_SHORT).show()
    }

    private fun refreshChannelStrip() {
        // Snapshots (may be null before the first watch — placeholder stays).
        findViewById<android.widget.ImageView>(R.id.ivChanTop)
            .setImageBitmap(LastFrameStore.loadTop(this, sn))
        findViewById<android.widget.ImageView>(R.id.ivChanBottom)
            .setImageBitmap(LastFrameStore.loadBottom(this, sn))
        findViewById<android.widget.ImageView>(R.id.ivChanFull)
            .setImageBitmap(LastFrameStore.loadFull(this, sn))
        // Highlight the current mode with the primary ring on its thumb.
        findViewById<View>(R.id.chanThumbTop)
            .setBackgroundResource(if (mode == LiveMode.TOP) R.drawable.bg_preview_selected else R.drawable.bg_preview)
        findViewById<View>(R.id.chanThumbBottom)
            .setBackgroundResource(if (mode == LiveMode.BOTTOM) R.drawable.bg_preview_selected else R.drawable.bg_preview)
        findViewById<View>(R.id.chanThumbFull)
            .setBackgroundResource(if (mode == LiveMode.FULL) R.drawable.bg_preview_selected else R.drawable.bg_preview)
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
        // Warm amber when on; neutral chip when off (tint cleared).
        if (ledOn) {
            btn.backgroundTintList = ColorStateList.valueOf(Color.parseColor("#FFB300"))
            btn.setTextColor(Color.parseColor("#111111"))
        } else {
            btn.backgroundTintList = null
            btn.setTextColor(Color.parseColor("#111111"))
        }
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
                play(addr)
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
                if (isFinishing || playErrored || rtmpAddr != addr || livePaused) return
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

    /** Plays the RTMP URL on the single live player. */
    private fun play(addr: String) {
        mainRecoveries = 0
        player.play(addr)
    }

    /**
     * Lens switch (v1.2.2, now mode-based): cycles the big view —
     * 全景 (gun lens) -> 特写 (ball lens) -> 双画面 -> 全景.
     * Only the crop changes; the two lenses are the two halves of
     * the one combined frame (swapping the RTMP suffix 1<->2 was
     * wrong: /2 does not exist as a stream, probed 2026-11-23).
     */
    private fun switchLens() {
        setMode(
            when (mode) {
                LiveMode.TOP -> LiveMode.BOTTOM
                LiveMode.BOTTOM -> LiveMode.FULL
                LiveMode.FULL -> LiveMode.TOP
            },
        )
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

    // Audit P2: the first press on the intercom button only requested the
    // RECORD_AUDIO permission and then did nothing, so users had to press a
    // second time. We do not auto-start talk here: the press-and-hold model
    // means the finger is already up by the time the dialog closes, and
    // starting without a matching ACTION_UP would leave the mic stuck open.
    // A clear toast tells the user to press again instead.
    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray,
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == 1) {
            val granted = grantResults.firstOrNull() == PackageManager.PERMISSION_GRANTED
            Toast.makeText(
                this,
                if (granted) "录音权限已授予，请按住按钮说话" else "未授予录音权限，对讲不可用",
                Toast.LENGTH_SHORT,
            ).show()
            DebugLog.log("UI", "录音权限结果 granted=$granted")
        }
    }

    /** v1.2.6 (issue 5): background/foreground recovery. There was no
     * onPause/onResume at all — after a background stay the players
     * sat on a possibly expired RTMP address (40 s cache) showing the
     * last frozen frame, and nothing ever recovered them; the user had
     * to exit and re-enter. Now: pause playback in background (same
     * pause()/resume() the pause button uses), and on return resume
     * fast; if the background was long the address is likely dead so
     * we re-fetch immediately, otherwise we resume and verify within
     * 2 s that the position is actually advancing — if not, the relay
     * dropped the connection while we were away, so re-fetch. The
     * user never has to exit and re-enter. */
    override fun onPause() {
        super.onPause()
        // v1.2.6 (issue 4): keep the home-page thumbnail fresh — save
        // the current frame before the surface goes away.
        saveLastFrame()
        stopFrameRefresh()
        bgPauseWallMs = SystemClock.elapsedRealtime()
        bgPausePositionMs = try { player.timeMs } catch (_: Exception) { -1L }
        resumeCheckTask?.let { uiHandler.removeCallbacks(it) }
        resumeCheckTask = null
        if (!livePaused) {
            try { player.pause() } catch (_: Exception) {}
        }
    }

    override fun onResume() {
        super.onResume()
        // User paused via the pause button: leave it paused.
        if (livePaused) return
        // First onResume after onCreate: onCreate already started the
        // load (connect / requestVideo) — nothing to recover yet.
        if (bgPauseWallMs == 0L) {
            startFrameRefresh()
            return
        }
        val bgMs = SystemClock.elapsedRealtime() - bgPauseWallMs
        if (bgMs > 30_000 || rtmpAddr.isNullOrBlank()) {
            // Long background: the 40 s RTMP address cache has likely
            // expired. Fetch a fresh address instead of playing a dead
            // URL (playing the old one shows the frozen last frame).
            DebugLog.log("UI", "回前台：后台 ${bgMs}ms，地址可能过期，重新取流")
            triedFallback = false
            playErrored = false
            ws.clearVideoCache()
            requestVideo()
            startFrameRefresh()
            return
        }
        // Short background: resume and verify frames are flowing.
        try { player.resume() } catch (_: Exception) {}
        refreshChannelStrip()
        startFrameRefresh()
        val resumePos = try { player.timeMs } catch (_: Exception) { -1L }
        val check = Runnable {
            if (isFinishing || livePaused) return@Runnable
            val nowPos = try { player.timeMs } catch (_: Exception) { -1L }
            // A healthy live stream advances ~2000 ms in 2 s. If it
            // barely moved, the relay dropped the connection while we
            // were away — re-fetch a fresh address.
            val advanced = if (resumePos >= 0 && nowPos >= 0) nowPos - resumePos else -1L
            if (advanced < 1000) {
                DebugLog.log("UI", "回前台：2秒后位置仅前进 ${advanced}ms，流已停，重新取流")
                triedFallback = false
                playErrored = false
                ws.clearVideoCache()
                requestVideo()
            }
        }
        resumeCheckTask = check
        uiHandler.postDelayed(check, 2000)
    }

    /** v1.2.6 (issue 4): save the big view's current full frame for the
     * home-page thumbnails. No-op before the first frame (bitmap null).
     * The store splits it into gun/ball halves and writes JPEGs off
     * the UI thread. */
    private fun saveLastFrame() {
        if (!::player.isInitialized) return
        player.snapshot { bitmap ->
            if (bitmap != null) LastFrameStore.save(this, sn, bitmap)
        }
    }

    /** v1.2.6 (issue 4): refresh the saved frame every 30 s while the
     * live page is in the foreground, so the home page shows a recent
     * frame even if the user never leaves via onPause cleanly.
     * v1.2.7: the channel strip snapshots are refreshed together. */
    private fun startFrameRefresh() {
        stopFrameRefresh()
        val task = object : Runnable {
            override fun run() {
                if (isFinishing) return
                saveLastFrame()
                refreshChannelStrip()
                uiHandler.postDelayed(this, 30_000)
            }
        }
        frameRefreshTask = task
        uiHandler.postDelayed(task, 30_000)
    }

    private fun stopFrameRefresh() {
        frameRefreshTask?.let { uiHandler.removeCallbacks(it) }
        frameRefreshTask = null
    }

    override fun onDestroy() {
        try { unregisterReceiver(micTestReceiver) } catch (_: Exception) {}
        try {
            watchdogTask?.let { uiHandler.removeCallbacks(it) }
            resumeCheckTask?.let { uiHandler.removeCallbacks(it) }
            stopFrameRefresh()
            player.onFirstFrame = null
        } catch (_: Exception) {}
        try {
            ledHandler.removeCallbacks(ledAutoOff)
            ledHandler.removeCallbacks(ledQueryTimeout)
        } catch (_: Exception) {}
        try { ptzFuture?.cancel(true); ptzExecutor.shutdownNow() } catch (_: Exception) {}
        try { if (intercom.isTalking) intercom.stop() } catch (_: Exception) {}
        try { recorder?.release() } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        ws.disconnect()
        super.onDestroy()
    }
}
