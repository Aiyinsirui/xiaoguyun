package com.albert.xiaoguyun

import android.content.Context
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.text.SimpleDateFormat
import java.util.ArrayDeque
import java.util.Date
import java.util.Locale
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

/**
 * Debug telemetry (v1.1.9): the user has no computer, so the app records
 * its own actions and the protocol frames it sends/receives, and uploads
 * them to the developer's Altare server for diagnosis.
 *
 * Transport: the app POSTs JSON lines to the log receiver running on the
 * Altare sandbox (127.0.0.1:8899), exposed through a localhost.run tunnel.
 * The current tunnel URL is read at startup from
 * https://raw.githubusercontent.com/Aiyinsirui/xiaoguyun/main/debug-endpoint.txt
 * (tunnel URLs change when the tunnel restarts) and cached in prefs.
 * If the upload fails or no endpoint is known, lines stay in the local
 * file (external-files/debug.log) and can be copied from the UI.
 *
 * Privacy: every line is sanitized before it is stored or sent —
 * accessToken / refreshToken / password / pwd values and Bearer tokens
 * are replaced with ***. Request bodies are never logged; REST logs carry
 * only method + path + response code. The log receiver only ever sees the
 * user's own device traffic, on the user's own sandbox.
 */
object DebugLog {
    private const val PREFS = "xiaoguyun_debug"
    private const val KEY_ENDPOINT = "endpoint"
    private const val ENDPOINT_FILE_URL =
        "https://raw.githubusercontent.com/Aiyinsirui/xiaoguyun/main/debug-endpoint.txt"
    private const val MAX_BUFFER = 2000
    private const val MAX_FILE_BYTES = 2 * 1024 * 1024L
    private const val FLUSH_INTERVAL_SEC = 20L

    private val http = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .writeTimeout(15, TimeUnit.SECONDS)
        .build()

    private val lock = Any()
    private val buffer = ArrayDeque<String>()
    private var appContext: Context? = null
    private var endpoint: String? = null
    private var started = false

    /** Last upload outcome, for the UI status line. */
    @Volatile var lastStatus: String = "未上传"
        private set
    var onStatus: ((String) -> Unit)? = null

    private val timeFmt = SimpleDateFormat("HH:mm:ss.SSS", Locale.US)

    fun init(context: Context) {
        val app = context.applicationContext
        synchronized(lock) {
            if (started) return
            started = true
            appContext = app
            endpoint = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .getString(KEY_ENDPOINT, null)?.trim()?.takeIf {
                    it.startsWith("https://") || it.startsWith("http://")
                }
        }
        log("DEBUG", "DebugLog 已启动，上传地址：${endpoint ?: "（未配置）"}")
        // Refresh the tunnel URL from the repo (it changes on tunnel restart).
        Executors.newSingleThreadExecutor().execute {
            try {
                val req = Request.Builder().url(ENDPOINT_FILE_URL).build()
                http.newCall(req).execute().use { resp ->
                    val url = resp.body?.string()?.trim().orEmpty()
                    if (resp.isSuccessful && (url.startsWith("https://") || url.startsWith("http://"))) {
                        synchronized(lock) { endpoint = url }
                        app.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                            .edit().putString(KEY_ENDPOINT, url).apply()
                        log("DEBUG", "上传地址已更新")
                    }
                }
            } catch (_: Exception) {
            }
        }
        // Periodic flush.
        Executors.newSingleThreadScheduledExecutor().scheduleAtFixedRate(
            { flush() }, FLUSH_INTERVAL_SEC, FLUSH_INTERVAL_SEC, TimeUnit.SECONDS,
        )
    }

    fun log(tag: String, msg: String) {
        val line = "${timeFmt.format(Date())} $tag ${sanitize(msg)}"
        synchronized(lock) {
            if (buffer.size >= MAX_BUFFER) buffer.removeFirst()
            buffer.addLast(line)
        }
        try {
            val ctx = appContext ?: return
            val file = File(ctx.getExternalFilesDir(null), "debug.log")
            if (file.exists() && file.length() > MAX_FILE_BYTES) file.delete()
            file.appendText(line + "\n")
        } catch (_: Exception) {
        }
    }

    /** Uploads buffered lines now; [onResult] gets a short status string. */
    fun flushNow(onResult: ((String) -> Unit)? = null) {
        Executors.newSingleThreadExecutor().execute {
            val status = flush()
            onResult?.invoke(status)
        }
    }

    /** Returns true if there are lines waiting to upload. */
    fun pendingCount(): Int = synchronized(lock) { buffer.size }

    /** Local log file content (most recent part), for the copy button. */
    fun localLogText(): String {
        return try {
            val ctx = appContext ?: return ""
            val file = File(ctx.getExternalFilesDir(null), "debug.log")
            if (!file.exists()) return ""
            val text = file.readText()
            if (text.length > 12000) text.takeLast(12000) else text
        } catch (_: Exception) {
            ""
        }
    }

    private fun sanitize(msg: String): String {
        var out = msg
        // Token / password values (JSON or key=value forms).
        out = out.replace(
            Regex("(?i)(\"?)(accessToken|refreshToken|password|pwd)(\"?)\\s*[:=]\\s*\"?[^\",\\s}]+"),
            "$1$2$3:***",
        )
        // Bearer tokens in headers.
        out = out.replace(Regex("(?i)Bearer [A-Za-z0-9._\\-]+"), "Bearer ***")
        return out
    }

    private fun flush(): String {
        val url = synchronized(lock) { endpoint } ?: run {
            setStatus("未配置上传地址（等隧道地址更新）")
            return lastStatus
        }
        val lines: List<String> = synchronized(lock) {
            if (buffer.isEmpty()) return "无新日志"
            buffer.toList().also { buffer.clear() }
        }
        return try {
            val body = JSONObject().apply {
                put("lines", JSONArray(lines))
            }.toString().toRequestBody("application/json".toMediaType())
            val req = Request.Builder().url("$url/log").post(body).build()
            http.newCall(req).execute().use { resp ->
                if (resp.isSuccessful) {
                    setStatus("已上传 ${lines.size} 行 ${timeFmt.format(Date())}")
                    lastStatus
                } else {
                    requeue(lines)
                    setStatus("上传失败：HTTP ${resp.code}")
                    lastStatus
                }
            }
        } catch (e: Exception) {
            requeue(lines)
            setStatus("上传失败：${e.message}")
            lastStatus
        }
    }

    private fun requeue(lines: List<String>) {
        synchronized(lock) {
            val keep = lines.takeLast(MAX_BUFFER)
            for (l in keep.reversed()) buffer.addFirst(l)
            while (buffer.size > MAX_BUFFER) buffer.removeLast()
        }
    }

    private fun setStatus(s: String) {
        lastStatus = s
        onStatus?.invoke(s)
    }
}
