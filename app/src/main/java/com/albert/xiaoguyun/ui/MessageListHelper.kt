package com.albert.xiaoguyun.ui

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Handler
import android.os.Looper
import android.util.LruCache
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.AlarmMessage
import com.albert.xiaoguyun.net.ApiClient
import com.google.gson.Gson
import com.google.gson.JsonParser
import org.json.JSONObject
import java.net.HttpURLConnection
import java.net.URL
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import java.util.concurrent.Executors

/**
 * Shared alarm-message list: parsing + adapter, used by MessagesActivity
 * (standalone page) and by the shell's 消息 tab. UI only — no device
 * commands, no change to the data source (GET /message/device/list or
 * POST /message/list, same as before).
 *
 * Thumbnails are the vendor's alarm snapshots (PIC_URL + pic, plain HTTP).
 * The host is allow-listed for cleartext in network_security_config.xml
 * for this purpose only. A failed load keeps the placeholder and never
 * blocks the list.
 */
object MessageListHelper {

    /** Best-effort parse: data may be an array or an object holding an array. */
    fun parseMessages(raw: String?): Pair<List<AlarmMessage>, Map<Int, String>> {
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

    /** "2026-11-23 15:32:00" -> "今天 15:32" / "昨天 15:32" / "11-23 15:32" 风格。解析失败原样返回。 */
    fun formatMsgTime(gmtCreate: String?): String {
        if (gmtCreate.isNullOrBlank()) return ""
        return try {
            val day = gmtCreate.substring(0, 10)
            val hm = if (gmtCreate.length >= 16) gmtCreate.substring(11, 16) else ""
            val today = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
            val cal = Calendar.getInstance()
            cal.add(Calendar.DAY_OF_YEAR, -1)
            val yesterday = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(cal.time)
            when (day) {
                today -> "今天 $hm"
                yesterday -> "昨天 $hm"
                else -> "$day $hm"
            }
        } catch (_: Exception) {
            gmtCreate
        }
    }

    // ---- alarm thumbnails (best-effort, placeholder on failure) ----

    private val thumbCache = LruCache<String, Bitmap>(20)
    private val thumbExecutor = Executors.newFixedThreadPool(2)
    private val mainHandler = Handler(Looper.getMainLooper())

    fun loadThumb(iv: ImageView, url: String) {
        thumbCache.get(url)?.let { iv.setImageBitmap(it); iv.tag = url; return }
        iv.setImageBitmap(null)
        iv.tag = url
        thumbExecutor.execute {
            try {
                val conn = URL(url).openConnection() as HttpURLConnection
                conn.connectTimeout = 5000
                conn.readTimeout = 5000
                conn.connect()
                if (conn.responseCode != HttpURLConnection.HTTP_OK) {
                    conn.disconnect()
                    return@execute
                }
                val bmp = conn.inputStream.use { BitmapFactory.decodeStream(it) }
                conn.disconnect()
                if (bmp != null) {
                    thumbCache.put(url, bmp)
                    mainHandler.post { if (iv.tag == url) iv.setImageBitmap(bmp) }
                }
            } catch (_: Exception) {
                // keep the placeholder; a failed thumbnail never blocks the list
            }
        }
    }

    class MsgAdapter(
        private val items: List<AlarmMessage>,
        private val pics: Map<Int, String>,
        private val snNames: Map<String, String> = emptyMap(),
        private val onDelete: (AlarmMessage) -> Unit,
    ) : RecyclerView.Adapter<MsgAdapter.Holder>() {
        class Holder(v: View) : RecyclerView.ViewHolder(v) {
            val thumb: ImageView = v.findViewById(R.id.ivMsgThumb)
            val tvTitle: TextView = v.findViewById(R.id.tvMsgTitle)
            val tvBody: TextView = v.findViewById(R.id.tvMsgBody)
            val tvTime: TextView = v.findViewById(R.id.tvMsgTime)
            val unreadDot: View = v.findViewById(R.id.vUnreadDot)
            val btnDel: Button = v.findViewById(R.id.btnMsgDelete)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val v = LayoutInflater.from(parent.context).inflate(R.layout.item_message, parent, false)
            return Holder(v)
        }

        override fun onBindViewHolder(h: Holder, pos: Int) {
            val m = items[pos]
            h.tvTitle.text = m.title?.takeIf { it.isNotBlank() } ?: (m.type ?: "消息")
            h.tvBody.text = listOfNotNull(
                m.body?.takeIf { it.isNotBlank() },
                m.alarm?.takeIf { it.isNotBlank() }?.let { "报警：$it" },
            ).joinToString("\n").ifBlank { "（无内容）" }
            val who = m.sn?.let { snNames[it] ?: it } ?: ""
            val read = if (m.isRead == "1") "已读" else "未读"
            h.tvTime.text = listOf(formatMsgTime(m.gmtCreate), who, read)
                .filter { it.isNotBlank() }.joinToString(" · ")
            h.unreadDot.visibility = if (m.isRead == "1") View.GONE else View.VISIBLE
            val pic = pics[pos]
            if (pic.isNullOrBlank()) {
                h.thumb.setImageBitmap(null)
                h.thumb.tag = null
            } else {
                loadThumb(h.thumb, ApiClient.PIC_URL + pic)
            }
            h.btnDel.setOnClickListener { onDelete(m) }
        }

        override fun getItemCount(): Int = items.size
    }
}
