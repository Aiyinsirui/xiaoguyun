package com.albert.xiaoguyun.ui

import android.os.Bundle
import android.os.Environment
import android.os.Handler
import android.os.Looper
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.SeekBar
import android.view.SurfaceView
import android.widget.FrameLayout
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.ApiException
import com.albert.xiaoguyun.net.RecordFile
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.player.ExoRtmpPlayer
import com.albert.xiaoguyun.ws.WsClient
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

/**
 * Full playback: two sources.
 *
 * - Cloud （云回放）: HTTP getlist (WiFi: newcloud/dos getlist; 4G:
 *   cloud.daguiot.com:7738 HTML listing) -> download the file -> play the
 *   local file with VLC. This mirrors the original app's
 *   VideoRecordYunFragment, which downloads cloud files before playing.
 * - SD （内存卡回放）: WS code 23 list + code 24 play (loca = seconds offset
 *   inside the file) + code 28 fast-seek + code 25 pause/resume/close.
 *   Mirrors VideoRecordFragment.
 *
 * File names start with HHMMSS (getPlaySecond in the original app), which
 * drives the day timeline. Server-side deletion of recordings has no
 * endpoint in the static code (see AUDIT.md); "删除" removes the locally
 * downloaded copy only.
 */
class PlaybackActivity : AppCompatActivity() {
    private lateinit var ws: WsClient
    private lateinit var api: ApiClient
    private lateinit var player: ExoRtmpPlayer
    private lateinit var tvStatus: TextView
    private lateinit var tvDates: TextView
    private lateinit var tvPosition: TextView
    private lateinit var sbTimeline: SeekBar
    private lateinit var sn: String
    private var netType: String? = null
    private var currentDate: String = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
    private var sourceCloud = true
    private var cloudDays = "7"
    private val records = mutableListOf<RecordFile>()
    private lateinit var adapter: RecordAdapter
    private var currentFile: RecordFile? = null
    private var currentLoca = 0
    private var playStartMs = 0L
    private var paused = false
    private val downloaded = mutableMapOf<String, File>()
    private val ticker = Handler(Looper.getMainLooper())
    private val tickRunnable = object : Runnable {
        override fun run() {
            updateTimeline()
            ticker.postDelayed(this, 1000)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn").orEmpty()
        netType = intent.getStringExtra("netType")
        if (intent.getStringExtra("source") == "sd") sourceCloud = false
        setContentView(R.layout.activity_playback)
        findViewById<TextView>(R.id.tvTitle).text = "回放 · ${intent.getStringExtra("name") ?: sn}"
        tvStatus = findViewById(R.id.tvStatus)
        tvDates = findViewById(R.id.tvDates)
        tvPosition = findViewById(R.id.tvPosition)
        sbTimeline = findViewById(R.id.sbTimeline)
        val etDate = findViewById<EditText>(R.id.etDate)
        etDate.setText(currentDate)
        // v1.2.0: SurfaceView created programmatically (see LiveActivity).
        val videoContainer = findViewById<FrameLayout>(R.id.videoContainer)
        val surfaceView = SurfaceView(this)
        videoContainer.addView(surfaceView, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))
        player = ExoRtmpPlayer(this, surfaceView, videoContainer)
        val store = TokenStore(this)
        api = ApiClient(store)
        ws = WsClient(store)
        ws.listener = object : WsClient.Listener {
            override fun onConnected() { runOnUiThread { loadList() } }
            override fun onDisconnected(reason: String) {
                runOnUiThread { tvStatus.text = "信令断开：$reason" }
            }
            override fun onDeviceStates(states: Map<String, WsClient.DeviceState>) {}
            override fun onError(message: String) {
                runOnUiThread { tvStatus.text = "信令错误：$message" }
            }
        }
        val rv = findViewById<RecyclerView>(R.id.rvRecords)
        rv.layoutManager = LinearLayoutManager(this)
        adapter = RecordAdapter(records) { f -> playRecord(f) }
        rv.adapter = adapter
        val btnCloud = findViewById<Button>(R.id.btnCloud)
        val btnSd = findViewById<Button>(R.id.btnSd)
        fun setSource(cloud: Boolean) {
            sourceCloud = cloud
            btnCloud.text = if (cloud) "● 云回放" else "云回放"
            btnSd.text = if (!cloud) "● SD 回放" else "SD 回放"
            loadList()
        }
        btnCloud.setOnClickListener { setSource(true) }
        btnSd.setOnClickListener { setSource(false) }
        setSource(sourceCloud)
        findViewById<Button>(R.id.btnPrevDay).setOnClickListener { shiftDay(-1, etDate) }
        findViewById<Button>(R.id.btnNextDay).setOnClickListener { shiftDay(1, etDate) }
        findViewById<Button>(R.id.btnLoad).setOnClickListener {
            currentDate = etDate.text.toString().trim().ifBlank { currentDate }
            loadList()
        }
        findViewById<Button>(R.id.btnPause).setOnClickListener {
            paused = true
            if (sourceCloud) player.pause() else ws.sendRecordPause(sn, 1)
        }
        findViewById<Button>(R.id.btnResume).setOnClickListener {
            paused = false
            if (sourceCloud) player.resume() else ws.sendRecordPause(sn, 0)
        }
        findViewById<Button>(R.id.btnBack10).setOnClickListener { seekBy(-10) }
        findViewById<Button>(R.id.btnFwd10).setOnClickListener { seekBy(10) }
        findViewById<Button>(R.id.btnDownload).setOnClickListener { downloadCurrent() }
        findViewById<Button>(R.id.btnDeleteLocal).setOnClickListener { deleteLocalCurrent() }
        sbTimeline.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(sb: SeekBar?, p: Int, fromUser: Boolean) {}
            override fun onStartTrackingTouch(sb: SeekBar?) {}
            override fun onStopTrackingTouch(sb: SeekBar) {
                val f = currentFile ?: return
                if (sourceCloud) {
                    player.seekTo(sb.progress * 1000L)
                } else {
                    val target = sb.progress
                    val loca = (target - f.startSecond).coerceAtLeast(0)
                    currentLoca = loca
                    playStartMs = System.currentTimeMillis()
                    ws.sendRecordFast(sn, f.recfile, currentDate, loca)
                    tvStatus.text = "正在跳转到 ${fmtTime(target)}…"
                }
            }
        })
        // Cloud retention days for the 4G list URL / WiFi download URL.
        lifecycleScope.launch {
            try {
                val env = api.cloudInfo2(sn)
                val raw = env.dataString() ?: ""
                val obj = try { JSONObject(raw) } catch (_: Exception) { JSONObject(env.data.toString()) }
                val days = obj.optInt("videoDuration", -1)
                if (days > 0) cloudDays = days.toString()
            } catch (_: Exception) { }
        }
        ws.subscribeSns = listOf(sn)
        ws.connect()
        ticker.post(tickRunnable)
    }

    private fun shiftDay(delta: Int, etDate: EditText) {
        try {
            val fmt = SimpleDateFormat("yyyy-MM-dd", Locale.US)
            val cal = Calendar.getInstance()
            cal.time = fmt.parse(currentDate) ?: Date()
            cal.add(Calendar.DAY_OF_MONTH, delta)
            currentDate = fmt.format(cal.time)
            etDate.setText(currentDate)
            loadList()
        } catch (_: Exception) { }
    }

    private fun loadList() {
        tvStatus.text = "正在加载 $currentDate 的录像（${if (sourceCloud) "云" else "SD"}）…"
        records.clear(); adapter.notifyDataSetChanged()
        if (sourceCloud) loadCloudList() else loadSdList()
        // code 27: dates that have recordings (shown as text).
        ws.requestRecordDates(sn, currentDate) { obj ->
            runOnUiThread {
                val dates = parseDateList(obj)
                if (dates.isNotEmpty()) tvDates.text = "有录像的日期：${dates.joinToString("、")}"
            }
        }
    }

    private fun parseDateList(obj: JSONObject): List<String> {
        val out = mutableListOf<String>()
        val data = obj.optJSONObject("data") ?: return out
        val arr = data.optJSONArray("list") ?: data.optJSONArray("dates") ?: data.optJSONArray("data")
        if (arr != null) for (i in 0 until arr.length()) {
            val v = arr.opt(i)
            when (v) {
                is String -> out.add(v)
                is JSONObject -> v.optString("date").takeIf { it.isNotBlank() }?.let { out.add(it) }
            }
        }
        return out
    }

    private fun loadSdList() {
        ws.requestRecordList(sn, currentDate) { obj ->
            runOnUiThread {
                val files = parseRecordList(obj, "sd")
                records.clear(); records.addAll(files); adapter.notifyDataSetChanged()
                tvStatus.text = if (files.isEmpty()) "该日无 SD 录像（原始返回：${obj.toString().take(300)}）" else "SD 录像 ${files.size} 条，点一条开始播放"
            }
        }
    }

    private fun parseRecordList(obj: JSONObject, source: String): List<RecordFile> {
        val out = mutableListOf<RecordFile>()
        val data = obj.optJSONObject("data")
        val candidates = mutableListOf<JSONArray>()
        if (data != null) {
            for (key in listOf("list", "files", "records", "data")) {
                data.optJSONArray(key)?.let { candidates.add(it) }
            }
            if (candidates.isEmpty() && data.has("recfile")) {
                out.add(RecordFile(data.optString("recfile"), RecordFile.startSecondOf(data.optString("recfile")), currentDate, source))
                return out
            }
        }
        obj.optJSONArray("list")?.let { candidates.add(it) }
        for (arr in candidates) {
            for (i in 0 until arr.length()) {
                when (val v = arr.opt(i)) {
                    is String -> if (v.isNotBlank()) out.add(RecordFile(v, RecordFile.startSecondOf(v), currentDate, source))
                    is JSONObject -> {
                        val name = v.optString("recfile").ifBlank { v.optString("filename").ifBlank { v.optString("name") } }
                        if (name.isNotBlank()) out.add(RecordFile(name, RecordFile.startSecondOf(name), currentDate, source))
                    }
                }
            }
        }
        return out.sortedBy { it.startSecond }
    }

    private fun loadCloudList() {
        lifecycleScope.launch {
            try {
                val files: List<RecordFile>
                if (netType?.contains("4G", ignoreCase = true) == true || netType?.contains("4g") == true) {
                    val html = api.fourGFileList(sn, cloudDays, currentDate)
                    val names = ApiClient.parse4gFileNames(html)
                    files = names.map { RecordFile(it, RecordFile.startSecondOf(it), currentDate, "cloud") }.sortedBy { it.startSecond }
                } else {
                    val raw = api.wifiFileList(sn, cloudDays, currentDate)
                    files = parseCloudJsonList(raw)
                }
                records.clear(); records.addAll(files); adapter.notifyDataSetChanged()
                tvStatus.text = if (files.isEmpty()) "该日无云录像" else "云录像 ${files.size} 条，点一条下载后播放"
            } catch (e: Exception) {
                tvStatus.text = "云录像列表加载失败：${(e as? ApiException)?.message ?: e.message}"
            }
        }
    }

    /** Best-effort parse of the WiFi getlist JSON (shape unconfirmed statically). */
    private fun parseCloudJsonList(raw: String): List<RecordFile> {
        val out = mutableListOf<RecordFile>()
        try {
            val obj = JSONObject(raw)
            val data = obj.optJSONObject("data") ?: obj
            for (key in listOf("list", "files", "records", "data")) {
                val arr = data.optJSONArray(key) ?: continue
                for (i in 0 until arr.length()) {
                    when (val v = arr.opt(i)) {
                        is String -> out.add(RecordFile(v, RecordFile.startSecondOf(v), currentDate, "cloud"))
                        is JSONObject -> {
                            val name = v.optString("recfile").ifBlank { v.optString("filename").ifBlank { v.optString("name") } }
                            if (name.isNotBlank()) out.add(RecordFile(name, RecordFile.startSecondOf(name), currentDate, "cloud"))
                        }
                    }
                }
                if (out.isNotEmpty()) break
            }
            if (out.isEmpty()) {
                // Maybe the response itself is an HTML listing (4G-style).
                out.addAll(ApiClient.parse4gFileNames(raw).map { RecordFile(it, RecordFile.startSecondOf(it), currentDate, "cloud") })
            }
        } catch (_: Exception) {
            out.addAll(ApiClient.parse4gFileNames(raw).map { RecordFile(it, RecordFile.startSecondOf(it), currentDate, "cloud") })
        }
        return out.sortedBy { it.startSecond }
    }

    private fun playRecord(f: RecordFile) {
        currentFile = f
        currentLoca = 0
        playStartMs = System.currentTimeMillis()
        paused = false
        if (sourceCloud) playCloudFile(f) else playSdFile(f, 0)
    }

    private fun playSdFile(f: RecordFile, loca: Int) {
        tvStatus.text = "正在请求 SD 回放地址…"
        ws.requestRecordPlay(sn, f.recfile, currentDate, locaSeconds = loca) { addr ->
            runOnUiThread {
                if (addr.isNullOrBlank()) { tvStatus.text = "SD 回放取流失败"; return@runOnUiThread }
                tvStatus.text = "正在播放 SD 回放：${f.recfile}"
                player.play(addr)
            }
        }
    }

    private fun playCloudFile(f: RecordFile) {
        val local = downloaded[f.recfile]
        if (local != null && local.exists() && local.length() > 0) {
            tvStatus.text = "正在播放已下载的云录像：${f.recfile}"
            player.playFile(local.absolutePath)
            return
        }
        tvStatus.text = "正在下载云录像 ${f.recfile}…"
        lifecycleScope.launch {
            try {
                val url = cloudDownloadUrl(f.recfile)
                val dir = File(getExternalFilesDir(Environment.DIRECTORY_MOVIES), "xiaoguyun/cloud")
                dir.mkdirs()
                val out = File(dir, "${sn}_${currentDate}_${f.recfile}")
                api.downloadToFile(url, emptyMap(), out)
                if (out.length() == 0L) throw ApiException("下载到的文件为空")
                downloaded[f.recfile] = out
                tvStatus.text = "正在播放云录像：${f.recfile}"
                player.playFile(out.absolutePath)
            } catch (e: Exception) {
                tvStatus.text = "云录像下载/播放失败：${(e as? ApiException)?.message ?: e.message}"
            }
        }
    }

    /**
     * Cloud download URL. TODO: the WiFi URL needs the file-server IP, whose
     * source is unconfirmed statically — the RTMP host from a code-22 reply
     * is used first (same host family in the original app's flow).
     */
    private suspend fun cloudDownloadUrl(filename: String): String {
        if (netType?.contains("4G", ignoreCase = true) == true) {
            return ApiClient.fourGDownloadUrl(sn, cloudDays, currentDate, filename)
        }
        var ip: String? = null
        // Best-effort: ask WS for the live RTMP address and take its host.
        if (ws.isOpen()) {
            ip = suspendRtmpHost()
        }
        val host = ip ?: throw ApiException("无法确定云文件服务器 IP（需先跑通直播取流）")
        return ApiClient.wifiDownloadUrl(host, sn, cloudDays.toIntOrNull() ?: 7, currentDate, filename)
    }

    private suspend fun suspendRtmpHost(): String? {
        return kotlinx.coroutines.suspendCancellableCoroutine { cont ->
            ws.requestVideo(sn, WsClient.STREAM_HIGH) { addr ->
                val host = addr?.removePrefix("rtmp://")?.substringBefore(':')?.substringBefore('/')
                if (cont.isActive) cont.resume(host) { _ -> }
            }
        }
    }

    private fun seekBy(deltaSec: Int) {
        val f = currentFile ?: return
        if (sourceCloud) {
            val cur = player.timeMs
            if (cur >= 0) player.seekTo((cur + deltaSec * 1000L).coerceAtLeast(0))
        } else {
            val elapsed = ((System.currentTimeMillis() - playStartMs) / 1000).toInt()
            val loca = (currentLoca + elapsed + deltaSec).coerceAtLeast(0)
            currentLoca = loca
            playStartMs = System.currentTimeMillis()
            ws.sendRecordFast(sn, f.recfile, currentDate, loca)
            tvStatus.text = "正在跳转到 ${fmtTime((f.startSecond + loca).coerceAtLeast(0))}…"
        }
    }

    private fun downloadCurrent() {
        val f = currentFile ?: run {
            Toast.makeText(this, "请先点一条录像", Toast.LENGTH_SHORT).show()
            return
        }
        if (sourceCloud) {
            val local = downloaded[f.recfile]
            if (local != null && local.exists()) {
                Toast.makeText(this, "已下载到：${local.absolutePath}", Toast.LENGTH_LONG).show()
                return
            }
            playCloudFile(f) // downloads then plays; file stays in Movies/xiaoguyun/cloud
            Toast.makeText(this, "正在下载，完成后可在 Movies/xiaoguyun/cloud 找到", Toast.LENGTH_SHORT).show()
        } else {
            // SD file download uses the same cloud-file URL shape only when
            // the recording is also on the cloud; for a pure SD file there
            // is no confirmed HTTP download path — download via the live
            // RTMP is not applicable, so report it honestly.
            Toast.makeText(this, "SD 录像无静态确认的 HTTP 下载地址；可先用本地录像边播边录，或等实测确认下载口", Toast.LENGTH_LONG).show()
        }
    }

    private fun deleteLocalCurrent() {
        val f = currentFile ?: run {
            Toast.makeText(this, "请先点一条录像", Toast.LENGTH_SHORT).show()
            return
        }
        val local = downloaded.remove(f.recfile)
        if (local != null && local.exists() && local.delete()) {
            Toast.makeText(this, "已删除本地文件：${local.name}", Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(this, "本地无已下载文件；服务端录像删除接口静态未找到（见 AUDIT.md），无法删云端", Toast.LENGTH_LONG).show()
        }
    }

    private fun updateTimeline() {
        val f = currentFile ?: return
        if (sourceCloud) {
            val len = player.lengthMs
            val cur = player.timeMs
            if (len > 0 && cur >= 0) {
                sbTimeline.max = (len / 1000).toInt()
                sbTimeline.progress = (cur / 1000).toInt()
                tvPosition.text = "${fmtTime((cur / 1000).toInt())} / ${fmtTime((len / 1000).toInt())}"
            }
        } else {
            val elapsed = ((System.currentTimeMillis() - playStartMs) / 1000).toInt()
            val pos = (f.startSecond + currentLoca + elapsed).coerceAtLeast(0)
            sbTimeline.max = 86400
            if (!paused) sbTimeline.progress = pos
            tvPosition.text = fmtTime(pos)
        }
    }

    private fun fmtTime(sec: Int): String {
        val h = sec / 3600; val m = (sec % 3600) / 60; val s = sec % 60
        return "%02d:%02d:%02d".format(h, m, s)
    }

    override fun onDestroy() {
        try { ticker.removeCallbacks(tickRunnable) } catch (_: Exception) {}
        try { if (!sourceCloud) ws.sendRecordPause(sn, -1) } catch (_: Exception) {}
        try { player.release() } catch (_: Exception) {}
        ws.disconnect()
        super.onDestroy()
    }

    private class RecordAdapter(
        private val items: List<RecordFile>,
        private val onClick: (RecordFile) -> Unit,
    ) : RecyclerView.Adapter<RecordAdapter.Holder>() {
        class Holder(v: View) : RecyclerView.ViewHolder(v) {
            val tvName: TextView = v.findViewById(R.id.tvFileName)
            val tvInfo: TextView = v.findViewById(R.id.tvFileInfo)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val v = LayoutInflater.from(parent.context).inflate(R.layout.item_record, parent, false)
            return Holder(v)
        }

        override fun onBindViewHolder(h: Holder, pos: Int) {
            val f = items[pos]
            h.tvName.text = f.recfile
            val start = if (f.startSecond >= 0) {
                "%02d:%02d:%02d".format(f.startSecond / 3600, (f.startSecond % 3600) / 60, f.startSecond % 60)
            } else "时间未知"
            h.tvInfo.text = "${f.date} $start · ${if (f.source == "sd") "SD" else "云"}"
            h.itemView.setOnClickListener { onClick(f) }
        }

        override fun getItemCount(): Int = items.size
    }
}
