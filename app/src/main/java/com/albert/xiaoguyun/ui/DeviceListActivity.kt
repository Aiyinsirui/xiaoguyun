package com.albert.xiaoguyun.ui

import android.app.AlertDialog
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.albert.xiaoguyun.CrashLog
import com.albert.xiaoguyun.DebugLog
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.AlarmMessage
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.ApiException
import com.albert.xiaoguyun.net.DeviceInfo
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.ws.WsClient
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * v1.2.5: 底部导航壳（首页 / 消息 / 功能 / 我的）。登录流程不变（未登录仍进
 * LoginActivity）。首页只看设备卡片，所有控制都在直播详情页；消息 tab 复用
 * MessageListHelper，与 MessagesActivity 同一份数据源；功能页是工具中心；
 * 我的页是账号、设置与调试日志。设备状态命令一律不动。
 */
class DeviceListActivity : AppCompatActivity() {
    private lateinit var store: TokenStore
    private lateinit var api: ApiClient
    private lateinit var ws: WsClient
    private val devices = mutableListOf<DeviceInfo>()
    private lateinit var adapter: DeviceAdapter
    private lateinit var tvStatus: TextView
    private lateinit var tvEmpty: TextView
    private lateinit var btnRetry: Button
    // v1.2.3: a rapid double tap used to launch two LiveActivity instances —
    // six RTMP pulls at once, which could stall every player (black screen).
    private var lastLiveLaunchMs = 0L
    // Audit M12: the first onResume() is part of the initial launch, where
    // onCreate() already calls loadDevices(); only later resumes (returning
    // from detail/live after unbind or rename) trigger a refresh.
    private var firstResume = true

    // ---- bottom nav: 0 首页 1 消息 2 功能 3 我的 ----
    private var currentTab = 0
    private lateinit var tabLabels: List<TextView>
    private lateinit var tvMsgBadge: TextView

    // ---- 消息 tab（当天消息同时是角标的数据源） ----
    private val messages = mutableListOf<AlarmMessage>()
    private val msgPicPaths = mutableMapOf<Int, String>()
    private val snNames = mutableMapOf<String, String>()
    private lateinit var msgAdapter: MessageListHelper.MsgAdapter
    private lateinit var tvMsgStatus: TextView
    private var msgLoadedFor: String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        DebugLog.init(this)
        CrashLog.install(this)
        store = TokenStore(this)
        api = ApiClient(store)
        ws = WsClient(store)
        setContentView(R.layout.activity_device_list)
        // v1.1.8: if the previous run crashed (e.g. opening live), show the
        // saved stack trace here so the user can copy it to the developer.
        // v1.2.1: collapsed by default (tap to expand), with a clear button
        // — the full trace no longer hogs the list.
        val crash = CrashLog.read(this)
        if (!crash.isNullOrBlank()) {
            // Also upload the crash trace with the debug telemetry.
            DebugLog.log("CRASH", crash.take(3000))
            val tvCrash = findViewById<TextView>(R.id.tvCrash)
            val crashSummary = crash.lineSequence().take(2).joinToString("\n")
            var crashExpanded = false
            fun renderCrash() {
                tvCrash.text = if (crashExpanded) {
                    "上次闪退原因（点我折叠）：\n" + crash.take(2500)
                } else {
                    "上次闪退原因（点我展开）：\n" + crashSummary
                }
            }
            renderCrash()
            tvCrash.visibility = View.VISIBLE
            tvCrash.setOnClickListener {
                crashExpanded = !crashExpanded
                renderCrash()
            }
            val btnCopy = findViewById<Button>(R.id.btnCopyCrash)
            btnCopy.visibility = View.VISIBLE
            btnCopy.setOnClickListener {
                val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                cm.setPrimaryClip(ClipData.newPlainText("crash", crash))
                Toast.makeText(this, "崩溃日志已复制，粘贴发我", Toast.LENGTH_SHORT).show()
            }
            val btnClear = findViewById<Button>(R.id.btnClearCrash)
            btnClear.visibility = View.VISIBLE
            btnClear.setOnClickListener {
                CrashLog.clear(this)
                tvCrash.visibility = View.GONE
                btnCopy.visibility = View.GONE
                btnClear.visibility = View.GONE
                Toast.makeText(this, "崩溃日志已清除", Toast.LENGTH_SHORT).show()
            }
        }
        val tvDebugStatus = findViewById<TextView>(R.id.tvDebugStatus)
        DebugLog.onStatus = { st -> runOnUiThread { tvDebugStatus.text = "调试上传：$st" } }
        tvDebugStatus.text = "调试上传：${DebugLog.lastStatus}"
        findViewById<Button>(R.id.btnUploadDebug).setOnClickListener {
            tvDebugStatus.text = "调试上传：上传中…（待传 ${DebugLog.pendingCount()} 行）"
            DebugLog.flushNow { st ->
                runOnUiThread { tvDebugStatus.text = "调试上传：$st" }
            }
        }
        findViewById<Button>(R.id.btnCopyDebug).setOnClickListener {
            val text = DebugLog.localLogText()
            if (text.isBlank()) {
                Toast.makeText(this, "本地暂无调试日志", Toast.LENGTH_SHORT).show()
            } else {
                val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                cm.setPrimaryClip(ClipData.newPlainText("debug", text))
                Toast.makeText(this, "本地调试日志已复制", Toast.LENGTH_SHORT).show()
            }
        }
        // ---- 首页：设备列表 ----
        tvStatus = findViewById(R.id.tvStatus)
        tvEmpty = findViewById(R.id.tvEmpty)
        btnRetry = findViewById(R.id.btnRetry)
        val rv = findViewById<RecyclerView>(R.id.rvDevices)
        rv.layoutManager = LinearLayoutManager(this)
        adapter = DeviceAdapter(devices,
            onClick = { d ->
                val now = android.os.SystemClock.elapsedRealtime()
                if (now - lastLiveLaunchMs < 800) {
                    DebugLog.log("UI", "拦截 800ms 内重复打开直播页")
                } else {
                    lastLiveLaunchMs = now
                    // v1.2.6: the "device offline" toast used to fire on a
                    // single stale REST/WS status flicker even when the
                    // device was actually online (the live page then
                    // fetched an address fine) — a false alarm. Only warn
                    // when the signalling socket itself is down; if WS is
                    // open, the live page reports the real outcome
                    // (address fetched or "取流失败") and no toast is
                    // needed here.
                    if (!d.isOnline && !ws.isOpen()) {
                        Toast.makeText(this, "设备离线，仍可尝试打开（以 WS 状态为准）", Toast.LENGTH_SHORT).show()
                    }
                    val i = Intent(this, LiveActivity::class.java)
                    i.putExtra("sn", d.sn); i.putExtra("name", d.displayName)
                    i.putExtra("netType", d.netType)
                    startActivity(i)
                }
            },
            onDetail = { d -> openDetail(d) },
        )
        rv.adapter = adapter
        btnRetry.setOnClickListener { loadDevices() }
        // ---- 消息 tab ----
        tvMsgStatus = findViewById(R.id.tvMsgStatus)
        val rvMsg = findViewById<RecyclerView>(R.id.rvMessages)
        rvMsg.layoutManager = LinearLayoutManager(this)
        msgAdapter = MessageListHelper.MsgAdapter(messages, msgPicPaths, snNames) { m -> deleteMessage(m) }
        rvMsg.adapter = msgAdapter
        findViewById<EditText>(R.id.etMsgDate).setText(today())
        findViewById<Button>(R.id.btnMsgLoad).setOnClickListener {
            val d = findViewById<EditText>(R.id.etMsgDate).text.toString().trim()
            if (d.isNotBlank()) loadMessagesFor(d)
        }
        // ---- 功能页：工具中心（需要设备的先选设备） ----
        findViewById<View>(R.id.toolPlayback).setOnClickListener { pickDevice { d -> openPlayback(d) } }
        findViewById<View>(R.id.toolSdCard).setOnClickListener { pickDevice { d -> openSdCard(d) } }
        findViewById<View>(R.id.toolAlbum).setOnClickListener { AlbumHelper.openAlbum(this) }
        findViewById<View>(R.id.toolShare).setOnClickListener { pickDevice { d -> openDetail(d) } }
        findViewById<View>(R.id.toolDetail).setOnClickListener { pickDevice { d -> openDetail(d) } }
        findViewById<View>(R.id.toolMessages).setOnClickListener {
            startActivity(Intent(this, MessagesActivity::class.java))
        }
        // ---- 我的页 ----
        findViewById<TextView>(R.id.tvAccountPhone).text =
            store.savedPhone?.takeIf { it.isNotBlank() } ?: "已登录（未保存手机号）"
        findViewById<TextView>(R.id.tvRememberState).text =
            if (!store.savedPassword.isNullOrBlank()) "记住密码：已开启（退出登录也不会清除）" else "记住密码：未开启"
        findViewById<TextView>(R.id.tvVersion).text = "小谷云 ${appVersion()} · 无广告干净重写版"
        findViewById<View>(R.id.btnToolDevices).setOnClickListener { showTab(0) }
        findViewById<View>(R.id.btnToolAlbum).setOnClickListener { AlbumHelper.openAlbum(this) }
        findViewById<View>(R.id.btnToolShare).setOnClickListener { pickDevice { d -> openDetail(d) } }
        findViewById<View>(R.id.rowFaq).setOnClickListener {
            Toast.makeText(this, "常见问题即将推出", Toast.LENGTH_SHORT).show()
        }
        findViewById<View>(R.id.rowHelp).setOnClickListener {
            Toast.makeText(this, "帮助与反馈即将推出", Toast.LENGTH_SHORT).show()
        }
        findViewById<View>(R.id.rowGeneralTools).setOnClickListener { showTab(2) }
        findViewById<View>(R.id.rowAccountSecurity).setOnClickListener {
            Toast.makeText(this, "修改密码请在登录页点“忘记密码”", Toast.LENGTH_LONG).show()
        }
        findViewById<View>(R.id.rowAbout).setOnClickListener { showAbout() }
        findViewById<View>(R.id.rowLogout).setOnClickListener {
            ws.disconnect(); store.clear()
            startActivity(Intent(this, LoginActivity::class.java)); finish()
        }
        // ---- 底部导航 ----
        tabLabels = listOf(
            findViewById(R.id.tvTabHome), findViewById(R.id.tvTabMessages),
            findViewById(R.id.tvTabTools), findViewById(R.id.tvTabMine),
        )
        tvMsgBadge = findViewById(R.id.tvMsgBadge)
        findViewById<View>(R.id.tabHome).setOnClickListener { showTab(0) }
        findViewById<View>(R.id.tabMessages).setOnClickListener { showTab(1) }
        findViewById<View>(R.id.tabTools).setOnClickListener { showTab(2) }
        findViewById<View>(R.id.tabMine).setOnClickListener { showTab(3) }
        showTab(0)
        ws.listener = object : WsClient.Listener {
            override fun onConnected() {
                runOnUiThread { tvStatus.text = "信令已连接，正在订阅设备状态…" }
            }
            override fun onDisconnected(reason: String) {
                runOnUiThread { tvStatus.text = "信令断开：$reason（自动重连中）" }
            }
            override fun onDeviceStates(states: Map<String, WsClient.DeviceState>) {
                runOnUiThread {
                    var changed = false
                    for (i in devices.indices) {
                        val s = states[devices[i].sn] ?: continue
                        if (devices[i].status != s.status || devices[i].bat != s.bat) {
                            devices[i] = devices[i].copy(status = s.status, bat = s.bat)
                            changed = true
                        }
                    }
                    if (changed) adapter.notifyDataSetChanged()
                    val online = devices.count { it.isOnline }
                    tvStatus.text = "设备 ${devices.size} 台，在线 $online 台"
                }
            }
            override fun onError(message: String) {
                runOnUiThread { tvStatus.text = "信令错误：$message" }
            }
        }
        loadDevices()
    }

    private fun showTab(index: Int) {
        currentTab = index
        findViewById<View>(R.id.homeContainer).visibility = if (index == 0) View.VISIBLE else View.GONE
        findViewById<View>(R.id.messagesContainer).visibility = if (index == 1) View.VISIBLE else View.GONE
        findViewById<View>(R.id.toolsContainer).visibility = if (index == 2) View.VISIBLE else View.GONE
        findViewById<View>(R.id.myContainer).visibility = if (index == 3) View.VISIBLE else View.GONE
        tabLabels.forEachIndexed { i, tv ->
            val selected = i == index
            tv.setBackgroundResource(if (selected) R.drawable.bg_nav_selected else 0)
            tv.setTextColor(
                if (selected) ContextCompat.getColor(this, R.color.white)
                else ContextCompat.getColor(this, R.color.text_secondary),
            )
        }
        if (index == 1 && msgLoadedFor == null) loadMessagesFor(today())
    }

    /** 返回键：先回首页，再退出。 */
    override fun onBackPressed() {
        if (currentTab != 0) {
            showTab(0)
            return
        }
        super.onBackPressed()
    }

    private fun today(): String = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())

    /**
     * 会话失效类错误：这类错误重试无意义，必须重新登录。
     * 覆盖 401、token 过期、同账号在其它设备登录被踢、未登录。
     */
    private fun isSessionInvalid(e: ApiException?, msg: String): Boolean {
        if (e?.code == 401) return true
        val keys = listOf("其他设备", "重新登录", "登录已过期", "登录失效", "未登录", "token", "账号异常")
        return keys.any { msg.contains(it, ignoreCase = true) }
    }

    private fun loadDevices() {
        tvStatus.text = getString(R.string.loading)
        btnRetry.visibility = View.GONE; tvEmpty.visibility = View.GONE
        lifecycleScope.launch {
            try {
                val list = api.deviceList()
                devices.clear(); devices.addAll(list); adapter.notifyDataSetChanged()
                snNames.clear()
                list.forEach { snNames[it.sn] = it.displayName }
                msgAdapter.notifyDataSetChanged()
                tvEmpty.visibility = if (list.isEmpty()) View.VISIBLE else View.GONE
                tvStatus.text = "设备 ${list.size} 台，正在订阅在线状态…"
                ws.subscribeSns = list.map { it.sn }
                ws.connect()
                // 当天消息：消息列表 + 消息 tab 角标的数据源。
                if (msgLoadedFor == null || msgLoadedFor == today()) loadMessagesFor(today())
            } catch (e: Exception) {
                val apiEx = e as? ApiException
                val msg = apiEx?.message ?: e.message ?: "加载失败"
                // 会话失效（token 过期 / 同账号在别处登录被踢）时，"重试"只会再失败一次，
                // 直接清 token 回登录页；登录页会自动带出记住的账号密码。
                if (isSessionInvalid(apiEx, msg)) {
                    DebugLog.log("SESSION", "会话失效：$msg（code=${apiEx?.code}），清 token 回登录页")
                    store.clear()
                    Toast.makeText(this@DeviceListActivity, "登录状态已失效：$msg\n请重新登录", Toast.LENGTH_LONG).show()
                    startActivity(Intent(this@DeviceListActivity, LoginActivity::class.java))
                    finish()
                    return@launch
                }
                tvStatus.text = "加载失败：$msg"
                btnRetry.visibility = View.VISIBLE
            }
        }
    }

    /** 加载指定日期的全部设备消息（与 MessagesActivity 同一数据源）。 */
    private fun loadMessagesFor(date: String) {
        if (devices.isEmpty()) {
            tvMsgStatus.text = "暂无设备"
            return
        }
        tvMsgStatus.text = "正在加载 $date 的消息…"
        lifecycleScope.launch {
            try {
                val raw = api.allMessages(date, devices.map { it.sn }).dataString()
                val (list, pics) = MessageListHelper.parseMessages(raw)
                messages.clear(); messages.addAll(list)
                msgPicPaths.clear(); msgPicPaths.putAll(pics)
                msgAdapter.notifyDataSetChanged()
                msgLoadedFor = date
                tvMsgStatus.text = if (list.isEmpty()) "该日无消息" else "消息 ${list.size} 条"
                if (date == today()) updateMsgBadge()
            } catch (e: Exception) {
                tvMsgStatus.text = "加载失败：${(e as? ApiException)?.message ?: e.message}"
            }
        }
    }

    /** 消息 tab 角标：当天未读数（isRead != "1"）。 */
    private fun updateMsgBadge() {
        val unread = messages.count { it.isRead != "1" }
        if (unread > 0) {
            tvMsgBadge.visibility = View.VISIBLE
            tvMsgBadge.text = if (unread > 99) "99+" else unread.toString()
        } else {
            tvMsgBadge.visibility = View.GONE
        }
    }

    private fun deleteMessage(m: AlarmMessage) {
        val id = m.messageId ?: m.id ?: run {
            Toast.makeText(this, "该消息无 id，无法删除", Toast.LENGTH_SHORT).show()
            return
        }
        val deviceSn = m.sn ?: run {
            Toast.makeText(this, "该消息无 sn，无法删除", Toast.LENGTH_SHORT).show()
            return
        }
        lifecycleScope.launch {
            try {
                val env = api.deleteMessages(deviceSn, listOf(id))
                if (env.code == 200) {
                    messages.remove(m)
                    msgAdapter.notifyDataSetChanged()
                    updateMsgBadge()
                    Toast.makeText(this@DeviceListActivity, "已删除", Toast.LENGTH_SHORT).show()
                } else {
                    Toast.makeText(this@DeviceListActivity, env.message ?: "删除失败", Toast.LENGTH_SHORT).show()
                }
            } catch (e: Exception) {
                Toast.makeText(this@DeviceListActivity, (e as? ApiException)?.message ?: e.message ?: "删除失败", Toast.LENGTH_SHORT).show()
            }
        }
    }

    /** 需要设备的工具：1 台直接进，多台先选设备，0 台提示。 */
    private fun pickDevice(onPick: (DeviceInfo) -> Unit) {
        when {
            devices.isEmpty() -> Toast.makeText(this, "暂无设备", Toast.LENGTH_SHORT).show()
            devices.size == 1 -> onPick(devices[0])
            else -> {
                val names = devices.map { it.displayName }.toTypedArray()
                AlertDialog.Builder(this).setTitle("选择设备")
                    .setItems(names) { _, which -> onPick(devices[which]) }
                    .show()
            }
        }
    }

    private fun openPlayback(d: DeviceInfo) {
        val i = Intent(this, PlaybackActivity::class.java)
        i.putExtra("sn", d.sn); i.putExtra("name", d.displayName); i.putExtra("netType", d.netType)
        startActivity(i)
    }

    private fun openSdCard(d: DeviceInfo) {
        val i = Intent(this, SdCardActivity::class.java)
        i.putExtra("sn", d.sn)
        startActivity(i)
    }

    private fun openDetail(d: DeviceInfo) {
        val i = Intent(this, DeviceDetailActivity::class.java)
        i.putExtra("sn", d.sn); i.putExtra("name", d.displayName)
        startActivity(i)
    }

    private fun showAbout() {
        AlertDialog.Builder(this).setTitle("关于小谷云")
            .setMessage("小谷云 ${appVersion()}\n无广告的干净重写版大谷云客户端，仅查看你自己的设备。")
            .setPositiveButton("确定", null).show()
    }

    private fun appVersion(): String {
        return try {
            val pi = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                packageManager.getPackageInfo(packageName, PackageManager.PackageInfoFlags.of(0))
            } else {
                @Suppress("DEPRECATION")
                packageManager.getPackageInfo(packageName, 0)
            }
            val code = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) pi.longVersionCode
            else pi.versionCode.toLong()
            "v${pi.versionName} ($code)"
        } catch (_: Exception) {
            "v1.2.5 (17)"
        }
    }

    override fun onResume() {
        super.onResume()
        // Audit M12: refresh after returning from detail/live so an unbind or
        // rename done on another page is reflected without tapping retry.
        if (firstResume) {
            firstResume = false
        } else {
            loadDevices()
        }
    }

    override fun onDestroy() { ws.disconnect(); super.onDestroy() }

    class DeviceAdapter(
        private val items: List<DeviceInfo>,
        private val onClick: (DeviceInfo) -> Unit,
        private val onDetail: (DeviceInfo) -> Unit,
    ) : RecyclerView.Adapter<DeviceAdapter.Holder>() {
        class Holder(v: View) : RecyclerView.ViewHolder(v) {
            val name: TextView = v.findViewById(R.id.tvName)
            val sn: TextView = v.findViewById(R.id.tvSn)
            val status: TextView = v.findViewById(R.id.tvStatus)
            val shareBadge: TextView = v.findViewById(R.id.tvShareBadge)
            val battery: TextView = v.findViewById(R.id.tvBattery)
            val btnDetail: Button = v.findViewById(R.id.btnDetail)
            // v1.2.7: three channel entries (pano / close-up / dual),
            // built in code at a fixed 16:9 per entry — never stretched
            // to fill the card.
            val channelRows: android.widget.LinearLayout = v.findViewById(R.id.channelRows)
        }
        override fun onCreateViewHolder(p: ViewGroup, t: Int): Holder =
            Holder(LayoutInflater.from(p.context).inflate(R.layout.item_device, p, false))
        override fun getItemCount() = items.size
        override fun onBindViewHolder(h: Holder, pos: Int) {
            val d = items[pos]
            h.name.text = d.displayName
            h.sn.text = "SN: ${d.sn}" + (d.netType?.let { " · $it" } ?: "")
            val online = d.isOnline
            h.status.text = if (online) "● 在线" else "○ 离线"
            h.status.setBackgroundResource(
                if (online) R.drawable.bg_badge_online else R.drawable.bg_badge_offline,
            )
            h.status.setTextColor(
                if (online) android.graphics.Color.parseColor("#32BB78")
                else android.graphics.Color.parseColor("#6F7280"),
            )
            // owned=0：别人分享给本账号的设备（列表接口默认只拉 owned=1，平时不出现）。
            h.shareBadge.visibility = if (d.owned == 0) View.VISIBLE else View.GONE
            h.battery.text = if (d.bat >= 0) "电量 ${d.bat}%" else ""
            // v1.2.7: three 16:9 channel entries (last viewed frames —
            // TP-Link / Daguyun show the last frame on the home card
            // instead of a black box). Always clear first so a recycled
            // row never shows another device's frame; when nothing was
            // ever saved the black placeholder stays. Built in code from
            // the measured screen width (see buildChannelEntries).
            buildChannelEntries(h, d)
            h.itemView.setOnClickListener { onClick(d) }
            h.btnDetail.setOnClickListener { onDetail(d) }
        }

        /** v1.2.7: three 16:9 channel entries per card. Column count is
         * derived from the screen width (each entry at least ~160dp
         * wide; 3 columns on wide screens, 2 on narrow ones, wrapping
         * to a second row). Widths are computed synchronously from
         * displayMetrics — no post-measure, so no flicker. The row
         * width is screen minus the home tab's 24dp padding on each
         * side and the card's 16dp padding on each side (80dp), plus a
         * 4dp safety margin so entries can never overflow the card;
         * any leftover space is simply left empty, never stretched.
         * Tapping an entry opens LiveActivity in that channel's mode;
         * tapping the card body still opens the dual view.
         * v1.2.9: the 84dp estimate can overestimate the real row
         * width (the user's phone measured entries of 468px vs 348px
         * in one row — the 2nd entry was clipped by the row's right
         * edge and looked "a section shorter"). Once the row is laid
         * out, the entries are resized to the MEASURED row width so
         * all three are provably identical (fixed 16:9, centerCrop).
         * The correction only touches LayoutParams sizes, so it is
         * safe if the holder was recycled meanwhile. */
        private fun buildChannelEntries(h: Holder, d: DeviceInfo) {
            val ctx = h.itemView.context
            h.channelRows.removeAllViews()
            val density = ctx.resources.displayMetrics.density
            fun dp(v: Int): Int = (v * density).toInt()
            val rowWidthPx = (ctx.resources.displayMetrics.widthPixels - dp(84))
                .coerceAtLeast(dp(320))
            val cols = (rowWidthPx / dp(160)).coerceIn(2, 4)
            val gapPx = dp(8)
            val entryW = (rowWidthPx - gapPx * (cols - 1)) / cols
            val entryH = entryW * 9 / 16
            val entries = listOf(
                Triple(R.string.channel_pano, LiveActivity.LiveMode.TOP,
                    com.albert.xiaoguyun.util.LastFrameStore.loadTop(ctx, d.sn)),
                Triple(R.string.channel_closeup, LiveActivity.LiveMode.BOTTOM,
                    com.albert.xiaoguyun.util.LastFrameStore.loadBottom(ctx, d.sn)),
                Triple(R.string.channel_dual, LiveActivity.LiveMode.FULL,
                    com.albert.xiaoguyun.util.LastFrameStore.loadFull(ctx, d.sn)),
            )
            var row: android.widget.LinearLayout? = null
            entries.forEachIndexed { index, (labelRes, mode, bmp) ->
                if (index % cols == 0) {
                    row = android.widget.LinearLayout(ctx).apply {
                        orientation = android.widget.LinearLayout.HORIZONTAL
                        layoutParams = android.widget.LinearLayout.LayoutParams(
                            ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT,
                        ).also { if (index > 0) it.topMargin = gapPx }
                    }
                    h.channelRows.addView(row)
                }
                val item = LayoutInflater.from(ctx)
                    .inflate(R.layout.item_channel_entry, row, false)
                val params = android.widget.LinearLayout.LayoutParams(entryW, entryH)
                if (index % cols > 0) params.leftMargin = gapPx
                item.layoutParams = params
                val iv = item.findViewById<android.widget.ImageView>(R.id.ivThumb)
                iv.setImageBitmap(null)
                bmp?.let { iv.setImageBitmap(it) }
                item.findViewById<TextView>(R.id.tvLabel).setText(labelRes)
                item.setOnClickListener {
                    val it2 = Intent(ctx, LiveActivity::class.java)
                    it2.putExtra("sn", d.sn)
                    it2.putExtra("name", d.displayName)
                    it2.putExtra("mode", mode.name)
                    ctx.startActivity(it2)
                }
                row!!.addView(item)
            }
            // v1.2.9: correct the entry size against the real measured
            // row width (see the doc comment above). Only resizes —
            // no rebuild, no bitmap reload, so it cannot loop and it
            // is harmless if this holder was recycled meanwhile.
            h.channelRows.post {
                val realW = h.channelRows.width
                if (realW > 0) {
                    val realEntryW = (realW - gapPx * (cols - 1)) / cols
                    val realEntryH = realEntryW * 9 / 16
                    if (kotlin.math.abs(realEntryW - entryW) > 2) {
                        for (i in 0 until h.channelRows.childCount) {
                            val rowView = h.channelRows.getChildAt(i)
                                as? android.widget.LinearLayout ?: continue
                            for (j in 0 until rowView.childCount) {
                                val item = rowView.getChildAt(j)
                                val lp = item.layoutParams
                                    as? android.widget.LinearLayout.LayoutParams ?: continue
                                lp.width = realEntryW
                                lp.height = realEntryH
                                item.layoutParams = lp
                            }
                        }
                    }
                }
            }
        }
    }
}
