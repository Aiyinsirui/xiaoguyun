package com.albert.xiaoguyun.ui

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.albert.xiaoguyun.CrashLog
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.ApiException
import com.albert.xiaoguyun.net.DeviceInfo
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.ws.WsClient
import kotlinx.coroutines.launch

class DeviceListActivity : AppCompatActivity() {
    private lateinit var store: TokenStore
    private lateinit var api: ApiClient
    private lateinit var ws: WsClient
    private val devices = mutableListOf<DeviceInfo>()
    private lateinit var adapter: DeviceAdapter
    private lateinit var tvStatus: TextView
    private lateinit var tvEmpty: TextView
    private lateinit var btnRetry: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        CrashLog.install(this)
        store = TokenStore(this)
        api = ApiClient(store)
        ws = WsClient(store)
        setContentView(R.layout.activity_device_list)
        // v1.1.8: if the previous run crashed (e.g. opening live), show the
        // saved stack trace here so the user can copy it to the developer.
        val crash = CrashLog.read(this)
        if (!crash.isNullOrBlank()) {
            val tvCrash = findViewById<TextView>(R.id.tvCrash)
            tvCrash.text = "上次闪退原因：\n" + crash.take(2500)
            tvCrash.visibility = View.VISIBLE
            val btnCopy = findViewById<Button>(R.id.btnCopyCrash)
            btnCopy.visibility = View.VISIBLE
            btnCopy.setOnClickListener {
                val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                cm.setPrimaryClip(ClipData.newPlainText("crash", crash))
                Toast.makeText(this, "崩溃日志已复制，粘贴发我", Toast.LENGTH_SHORT).show()
            }
        }
        tvStatus = findViewById(R.id.tvStatus)
        tvEmpty = findViewById(R.id.tvEmpty)
        btnRetry = findViewById(R.id.btnRetry)
        val rv = findViewById<RecyclerView>(R.id.rvDevices)
        rv.layoutManager = LinearLayoutManager(this)
        adapter = DeviceAdapter(devices,
            onClick = { d ->
                if (!d.isOnline) {
                    Toast.makeText(this, "设备离线，仍可尝试打开（以 WS 状态为准）", Toast.LENGTH_SHORT).show()
                }
                val i = Intent(this, LiveActivity::class.java)
                i.putExtra("sn", d.sn); i.putExtra("name", d.displayName)
                i.putExtra("netType", d.netType)
                startActivity(i)
            },
            onDetail = { d ->
                val i = Intent(this, DeviceDetailActivity::class.java)
                i.putExtra("sn", d.sn); i.putExtra("name", d.displayName)
                i.putExtra("netType", d.netType)
                startActivity(i)
            },
        )
        rv.adapter = adapter
        findViewById<Button>(R.id.btnMessages).setOnClickListener {
            startActivity(Intent(this, MessagesActivity::class.java))
        }
        findViewById<Button>(R.id.btnLogout).setOnClickListener {
            ws.disconnect(); store.clear()
            startActivity(Intent(this, LoginActivity::class.java)); finish()
        }
        btnRetry.setOnClickListener { loadDevices() }
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

    private fun loadDevices() {
        tvStatus.text = getString(R.string.loading)
        btnRetry.visibility = View.GONE; tvEmpty.visibility = View.GONE
        lifecycleScope.launch {
            try {
                val list = api.deviceList()
                devices.clear(); devices.addAll(list); adapter.notifyDataSetChanged()
                tvEmpty.visibility = if (list.isEmpty()) View.VISIBLE else View.GONE
                tvStatus.text = "设备 ${list.size} 台，正在订阅在线状态…"
                ws.subscribeSns = list.map { it.sn }
                ws.connect()
            } catch (e: Exception) {
                val msg = (e as? ApiException)?.message ?: e.message ?: "加载失败"
                tvStatus.text = "加载失败：$msg"
                btnRetry.visibility = View.VISIBLE
                if ((e as? ApiException)?.code == 401) {
                    store.clear()
                    startActivity(Intent(this@DeviceListActivity, LoginActivity::class.java)); finish()
                }
            }
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
            val battery: TextView = v.findViewById(R.id.tvBattery)
            val btnDetail: Button = v.findViewById(R.id.btnDetail)
        }
        override fun onCreateViewHolder(p: ViewGroup, t: Int): Holder =
            Holder(LayoutInflater.from(p.context).inflate(R.layout.item_device, p, false))
        override fun getItemCount() = items.size
        override fun onBindViewHolder(h: Holder, pos: Int) {
            val d = items[pos]
            h.name.text = d.displayName
            h.sn.text = "SN: ${d.sn}" + (d.netType?.let { " · $it" } ?: "")
            h.status.text = if (d.isOnline) "在线" else "离线"
            h.battery.text = if (d.bat >= 0) "电量 ${d.bat}%" else ""
            h.itemView.setOnClickListener { onClick(d) }
            h.btnDetail.setOnClickListener { onDetail(d) }
        }
    }
}
