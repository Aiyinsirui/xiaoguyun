package com.albert.xiaoguyun.ui

import android.app.AlertDialog
import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.ws.WsClient

/**
 * SD card (TF card) entry: code 13 info + code 12 format + SD playback entry.
 * TF info reply: data.use = used percent; use >= 0 means a card is present
 * (IotParamName.isTfInfoOk). Total/free capacity fields are not expanded
 * statically, so only `use` and the raw JSON are shown.
 */
class SdCardActivity : AppCompatActivity() {
    private lateinit var ws: WsClient
    private lateinit var tvInfo: TextView
    private lateinit var sn: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn").orEmpty()
        setContentView(R.layout.activity_sdcard)
        findViewById<TextView>(R.id.tvTitle).text = "内存卡 · $sn"
        tvInfo = findViewById(R.id.tvInfo)
        ws = WsClient(TokenStore(this))
        ws.listener = object : WsClient.Listener {
            override fun onConnected() { runOnUiThread { loadTfInfo() } }
            override fun onDisconnected(reason: String) {
                runOnUiThread { tvInfo.text = "信令断开：$reason" }
            }
            override fun onDeviceStates(states: Map<String, WsClient.DeviceState>) {}
            override fun onError(message: String) {
                runOnUiThread { tvInfo.text = "信令错误：$message" }
            }
        }
        ws.rawListener = { code, obj ->
            if (code == 12) {
                runOnUiThread {
                    val ok = obj.optInt("code", -1) == 200 || obj.optString("message") == "success"
                    Toast.makeText(
                        this,
                        if (ok) "内存卡格式化成功" else "格式化返回：${obj.toString().take(200)}",
                        Toast.LENGTH_LONG,
                    ).show()
                    if (ok) loadTfInfo()
                }
            }
        }
        findViewById<Button>(R.id.btnRefreshTf).setOnClickListener { loadTfInfo() }
        findViewById<Button>(R.id.btnFormatTf).setOnClickListener {
            AlertDialog.Builder(this).setTitle("格式化内存卡")
                .setMessage("将清空内存卡上的全部录像，且不可恢复。确定格式化吗？（WS code 12）")
                .setPositiveButton("格式化") { _, _ ->
                    ws.sendFormatTf(sn)
                    Toast.makeText(this, "格式化命令已发送，请等待设备回包", Toast.LENGTH_SHORT).show()
                }
                .setNegativeButton("取消", null).show()
        }
        findViewById<Button>(R.id.btnSdPlayback).setOnClickListener {
            val i = Intent(this, PlaybackActivity::class.java)
            i.putExtra("sn", sn); i.putExtra("source", "sd"); startActivity(i)
        }
        ws.connect()
    }

    private fun loadTfInfo() {
        tvInfo.text = "正在查询内存卡信息（WS code 13）…"
        ws.requestTfInfo(sn) { obj ->
            runOnUiThread {
                if (obj == null) { tvInfo.text = "code 13 无响应（设备可能离线）"; return@runOnUiThread }
                val data = obj.optJSONObject("data")
                val use = data?.optInt("use", -1) ?: -1
                val hasCard = use >= 0
                tvInfo.text = "内存卡信息（WS code 13）：\n" +
                    "状态：${if (hasCard) "已插入" else "未检测到卡（use=$use）"}\n" +
                    "已用：${if (use >= 0) "$use%" else "—"}\n" +
                    "（总容量/剩余容量字段静态未确认，只展示 use 与原始返回）\n" +
                    "原始返回：${obj.toString(2).take(800)}"
            }
        }
    }

    override fun onDestroy() {
        ws.disconnect()
        super.onDestroy()
    }
}
