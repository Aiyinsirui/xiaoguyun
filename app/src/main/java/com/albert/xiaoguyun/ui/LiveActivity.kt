package com.albert.xiaoguyun.ui

import android.Manifest
import android.content.ContentValues
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.provider.MediaStore
import android.view.MotionEvent
import android.view.SurfaceView
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.player.VlcPlayer
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
    private lateinit var player: VlcPlayer
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

    // PTZ: the original app re-sends the direction every 250 ms while held,
    // and sends a single dir-0 frame on release.
    private val ptzExecutor = Executors.newSingleThreadScheduledExecutor()
    private var ptzFuture: ScheduledFuture<*>? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn").orEmpty()
        netType = intent.getStringExtra("netType")
        val name = intent.getStringExtra("name") ?: sn
        setContentView(R.layout.activity_live)
        findViewById<TextView>(R.id.tvTitle).text = name
        tvStatus = findViewById(R.id.tvLiveStatus)
        val surface = findViewById<SurfaceView>(R.id.surface)
        player = VlcPlayer(this, surface)
        player.onError = { runOnUiThread { tvStatus.text = "播放出错，请点重试（可能是 RTMP 地址已过期）" } }
        recorder = VlcRecorder(this)
        val store = TokenStore(this)
        ws = WsClient(store)
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
                    // v1.1.3: code 3 link is NOT sent here any more. v1.1.2 sent
                    // link=1 on entry and link=0 on exit; in the original app
                    // link=0 is sent ONLY after a successful REST unbind
                    // (HomeFragment.unBindDevice), so exiting live told the
                    // server/device the app had unbound it and the camera
                    // reset itself and lost its WiFi. Subscribe (code 90/42)
                    // is the safe pre-videoplay step, not link.
                    ws.subscribe(listOf(sn))
                    ws.subscribeOneDevice(sn)
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
        findViewById<Button>(R.id.btnRetryLive).setOnClickListener { requestVideo() }
        val btnDef = findViewById<Button>(R.id.btnDefinition)
        btnDef.setOnClickListener {
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
        // PTZ: press sends a direction (repeated every 250 ms), release sends stop.
        // dir values CONFIRMED by audit: up=1, down=2, left=3, right=4, stop=0.
        bindPtz(R.id.btnUp, WsClient.PTZ_UP)
        bindPtz(R.id.btnDown, WsClient.PTZ_DOWN)
        bindPtz(R.id.btnLeft, WsClient.PTZ_LEFT)
        bindPtz(R.id.btnRight, WsClient.PTZ_RIGHT)
        findViewById<Button>(R.id.btnSnapshot).setOnClickListener { takeSnapshot() }
        val btnRecord = findViewById<Button>(R.id.btnRecord)
        btnRecord.setOnClickListener {
            if (recorder.isRecording) {
                val f = recorder.stop()
                btnRecord.text = "本地录像"
                val size = f?.length() ?: 0
                Toast.makeText(this, if (size > 0) "录像已保存：${f?.absolutePath}（${size / 1024} KB）" else "录像文件为空，sout 录制可能未成功（见 TODO）", Toast.LENGTH_LONG).show()
            } else {
                val addr = rtmpAddr
                if (addr.isNullOrBlank()) {
                    Toast.makeText(this, "还没有直播地址", Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                val stamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
                val dir = File(getExternalFilesDir(Environment.DIRECTORY_MOVIES), "xiaoguyun")
                val out = File(dir, "live_${sn}_$stamp.mp4")
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
        ws.connect()
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
                    ptzFuture?.cancel(true); ptzFuture = null
                    ws.sendMotor(sn, WsClient.PTZ_STOP)
                }
            }
            true
        }
    }

    private var videoRetries = 0

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
                // Only the host/path are shown masked in the UI; full URL is
                // passed straight to VLC and never logged.
                tvStatus.text = "正在播放…"
                player.play(addr)
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
        player.snapshot(this) { bitmap ->
            runOnUiThread {
                if (bitmap == null) {
                    Toast.makeText(this, "抓拍失败（该设备 PixelCopy 可能不支持硬解 Surface）", Toast.LENGTH_LONG).show()
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
