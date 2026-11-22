package com.albert.xiaoguyun.ui

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
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
import com.google.gson.Gson
import com.google.gson.JsonParser
import kotlinx.coroutines.launch
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Alarm / message list: GET /message/device/list?sn=&date= (single device)
 * or POST /message/list {date, sn:[...]} (all devices). Delete via
 * POST /message/del/msgs [{sn, msgIds:[...]}].
 * Alarm pictures (code-2 inbound data.pic) live under
 * http://pic.dagucloud.com:7736 + pic; the raw pic path is shown per item.
 */
class MessagesActivity : AppCompatActivity() {
    private lateinit var api: ApiClient
    private var sn: String? = null
    private var currentDate: String = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
    private val messages = mutableListOf<AlarmMessage>()
    private val picPaths = mutableMapOf<Int, String>()
    private lateinit var adapter: MsgAdapter
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
        adapter = MsgAdapter(messages, picPaths) { m -> deleteMessage(m) }
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
                val (list, pics) = parseMessages(raw)
                messages.clear(); messages.addAll(list)
                picPaths.clear(); picPaths.putAll(pics)
                adapter.notifyDataSetChanged()
                tvStatus.text = if (list.isEmpty()) "该日无消息" else "消息 ${list.size} 条"
            } catch (e: Exception) {
                tvStatus.text = "加载失败：${(e as? ApiException)?.message ?: e.message}"
            }
        }
    }

    /** Best-effort parse: data may be an array or an object holding an array. */
    private fun parseMessages(raw: String?): Pair<List<AlarmMessage>, Map<Int, String>> {
        val out = mutableListOf<AlarmMessage>()
        val pics = mutableMapOf<Int, String>()
        if (raw.isNullOrBlank()) return out to pics
        try {
            val gson = Gson()
            val el = JsonParser.parseString(raw)
            val arr = when {
                el.isJsonArray -> el.asJsonArray
                el.isJsonObject -> {
                    val obj = el.asJsonObject
                    (listOf("list", "listResults", "data", "records").firstNotNullOfOrNull { k ->
                        obj.getAsJsonArray(k)
                    }) ?: return out to pics
                }
                else -> return out to pics
            }
            for ((idx, item) in arr.withIndex()) {
                try {
                    val m = gson.fromJson(item, AlarmMessage::class.java)
                    out.add(m)
                    val pic = item.asJsonObject?.get("pic")?.takeIf { it.isJsonPrimitive }?.asString
                    if (!pic.isNullOrBlank()) pics[idx] = pic
                } catch (_: Exception) { }
            }
        } catch (_: Exception) {
            // Fall back to JSONObject parsing for string-wrapped data.
            try {
                val obj = JSONObject(raw)
                val data = obj.optJSONArray("list") ?: obj.optJSONArray("data")
                if (data != null) for (i in 0 until data.length()) {
                    val o = data.optJSONObject(i) ?: continue
                    out.add(
                        AlarmMessage(
                            id = o.optInt("id").takeIf { it != 0 },
                            messageId = o.optInt("messageId").takeIf { it != 0 },
                            sn = o.optString("sn"), title = o.optString("title"),
                            body = o.optString("body"), gmtCreate = o.optString("gmtCreate"),
                            type = o.optString("type"), messageType = o.optString("messageType"),
                            isRead = o.optString("isRead"), alarm = o.optString("alarm"),
                        ),
                    )
                    o.optString("pic").takeIf { it.isNotBlank() }?.let { pics[out.size - 1] = it }
                }
            } catch (_: Exception) { }
        }
        return out to pics
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

    private class MsgAdapter(
        private val items: List<AlarmMessage>,
        private val pics: Map<Int, String>,
        private val onDelete: (AlarmMessage) -> Unit,
    ) : RecyclerView.Adapter<MsgAdapter.Holder>() {
        class Holder(v: View) : RecyclerView.ViewHolder(v) {
            val tvTitle: TextView = v.findViewById(R.id.tvMsgTitle)
            val tvBody: TextView = v.findViewById(R.id.tvMsgBody)
            val tvTime: TextView = v.findViewById(R.id.tvMsgTime)
            val btnDel: Button = v.findViewById(R.id.btnMsgDelete)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val v = LayoutInflater.from(parent.context).inflate(R.layout.item_message, parent, false)
            return Holder(v)
        }

        override fun onBindViewHolder(h: Holder, pos: Int) {
            val m = items[pos]
            h.tvTitle.text = m.title?.takeIf { it.isNotBlank() } ?: (m.type ?: "消息")
            val pic = pics[pos]
            h.tvBody.text = listOfNotNull(
                m.body?.takeIf { it.isNotBlank() },
                m.alarm?.takeIf { it.isNotBlank() }?.let { "报警：$it" },
                pic?.let { "图片：${ApiClient.PIC_URL}$it" },
            ).joinToString("\n").ifBlank { "（无内容）" }
            h.tvTime.text = "${m.gmtCreate ?: ""}  ${m.sn ?: ""}  ${if (m.isRead == "1") "已读" else "未读"}"
            h.btnDel.setOnClickListener { onDelete(m) }
        }

        override fun getItemCount(): Int = items.size
    }
}
