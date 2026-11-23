package com.albert.xiaoguyun.ui

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.AlarmMessage
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.ApiException
import com.albert.xiaoguyun.net.TokenStore
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Alarm / message list: GET /message/device/list?sn=&date= (single device)
 * or POST /message/list {date, sn:[...]} (all devices). Delete via
 * POST /message/del/msgs [{sn, msgIds:[...]}].
 * Alarm pictures (code-2 inbound data.pic) live under
 * http://pic.dagucloud.com:7736 + pic; the raw pic path is shown per item.
 *
 * v1.2.5: parsing + adapter live in MessageListHelper (shared with the
 * shell's 消息 tab); this activity keeps its own loading/deleting logic.
 */
class MessagesActivity : AppCompatActivity() {
    private lateinit var api: ApiClient
    private var sn: String? = null
    private var currentDate: String = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
    private val messages = mutableListOf<AlarmMessage>()
    private val picPaths = mutableMapOf<Int, String>()
    private lateinit var adapter: MessageListHelper.MsgAdapter
    private lateinit var tvStatus: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn")
        setContentView(R.layout.activity_messages)
        findViewById<TextView>(R.id.tvTitle).text = if (sn.isNullOrBlank()) "全部消息" else "消息 · $sn"
        tvStatus = findViewById(R.id.tvStatus)
        val etDate = findViewById<EditText>(R.id.etDate)
        etDate.setText(currentDate)
        api = ApiClient(TokenStore(this))
        val rv = findViewById<RecyclerView>(R.id.rvMessages)
        rv.layoutManager = LinearLayoutManager(this)
        adapter = MessageListHelper.MsgAdapter(messages, picPaths) { m -> deleteMessage(m) }
        rv.adapter = adapter
        findViewById<Button>(R.id.btnLoad).setOnClickListener {
            currentDate = etDate.text.toString().trim().ifBlank { currentDate }
            loadMessages()
        }
        loadMessages()
    }

    private fun loadMessages() {
        tvStatus.text = "正在加载 $currentDate 的消息…"
        lifecycleScope.launch {
            try {
                val raw: String?
                if (!sn.isNullOrBlank()) {
                    raw = api.deviceMessages(sn!!, currentDate).dataString()
                } else {
                    val devices = api.deviceList()
                    raw = api.allMessages(currentDate, devices.map { it.sn }).dataString()
                }
                val (list, pics) = MessageListHelper.parseMessages(raw)
                messages.clear(); messages.addAll(list)
                picPaths.clear(); picPaths.putAll(pics)
                adapter.notifyDataSetChanged()
                tvStatus.text = if (list.isEmpty()) "该日无消息" else "消息 ${list.size} 条"
            } catch (e: Exception) {
                tvStatus.text = "加载失败：${(e as? ApiException)?.message ?: e.message}"
            }
        }
    }

    private fun deleteMessage(m: AlarmMessage) {
        val id = m.messageId ?: m.id ?: run {
            Toast.makeText(this, "该消息无 id，无法删除", Toast.LENGTH_SHORT).show()
            return
        }
        val deviceSn = m.sn ?: sn ?: run {
            Toast.makeText(this, "该消息无 sn，无法删除", Toast.LENGTH_SHORT).show()
            return
        }
        lifecycleScope.launch {
            try {
                val env = api.deleteMessages(deviceSn, listOf(id))
                if (env.code == 200) {
                    messages.remove(m)
                    adapter.notifyDataSetChanged()
                    Toast.makeText(this@MessagesActivity, "已删除", Toast.LENGTH_SHORT).show()
                } else {
                    Toast.makeText(this@MessagesActivity, env.message ?: "删除失败", Toast.LENGTH_SHORT).show()
                }
            } catch (e: Exception) {
                Toast.makeText(this@MessagesActivity, (e as? ApiException)?.message ?: e.message ?: "删除失败", Toast.LENGTH_SHORT).show()
            }
        }
    }
}
