package com.albert.xiaoguyun.net

import com.albert.xiaoguyun.DebugLog

import android.os.Build
import com.google.gson.Gson
import com.google.gson.JsonParser
import com.google.gson.reflect.TypeToken
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit

class ApiException(message: String, val code: Int = -1) : Exception(message)

class ApiClient(private val store: TokenStore) {
    companion object {
        const val BASE_URL = "https://application.daguiot.com/"
        const val PIC_URL = "http://pic.dagucloud.com:7736"
        // Refresh window from the original app: 259200000 ms = 3 days.
        const val REFRESH_AFTER_MS = 259_200_000L
        const val WIFI_LIST_URL_NEW = "https://newcloud.daguipc.com/getlist"
        const val WIFI_LIST_URL_OLD = "http://dos.dagucloud.com:7736/getlist"
        const val FOUR_G_LIST_BASE = "http://cloud.daguiot.com:7738"
        private val JSON = "application/json;charset=utf-8".toMediaType()

        /** Path shard used by all file URLs: second-to-last char of the SN. */
        fun snShard(sn: String): String = if (sn.length >= 2) sn[sn.length - 2].toString() else sn

        /** 4G file list URL, see YunInfoUtil.get4gFileListUrl. */
        fun fourGListUrl(sn: String, days: String, date: String): String =
            "$FOUR_G_LIST_BASE/${snShard(sn)}/$days/$date/$sn/video"

        /** WiFi cloud-file download URL, see YunInfoUtil.getWifiYunFileDownUrl. */
        fun wifiDownloadUrl(ip: String, sn: String, days: Int, date: String, filename: String): String =
            "http://$ip:7738/${snShard(sn)}/$days/$date/$sn/video/$filename"

        /** 4G cloud-file download URL = list URL + /filename. */
        fun fourGDownloadUrl(sn: String, days: String, date: String, filename: String): String =
            fourGListUrl(sn, days, date) + "/$filename"

        /** Directory-listing parser, mirroring DGApiFileRepository.parseFileList. */
        fun parse4gFileNames(html: String): List<String> {
            val out = mutableListOf<String>()
            val m = Regex("<A\\s+[^>]*>([^<]+)</A>", RegexOption.IGNORE_CASE).findAll(html)
            for (hit in m) {
                val name = hit.groupValues[1].trim()
                if (Regex("^[0-9_]+(?:_[0-9_]+)*$").matches(name)) out.add(name)
            }
            return out
        }
    }

    private val gson = Gson()
    // Normal TLS verification is kept (the original app disabled it).
    private val http = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(10, TimeUnit.SECONDS)
        .build()

    private fun authHeaders(useRefresh: Boolean = false): Request.Builder {
        val b = Request.Builder()
            .addHeader("device", store.deviceId)
        val token = if (useRefresh) store.refreshToken else store.accessToken
        if (!token.isNullOrBlank()) b.addHeader("Authorization", "Bearer $token")
        return b
    }

    /** Refresh if the token is older than 3 days, before an authed call. */
    suspend fun ensureFreshToken() {
        val saved = store.tokenSavedAt
        if (saved == 0L || System.currentTimeMillis() - saved <= REFRESH_AFTER_MS) return
        if (store.refreshToken.isNullOrBlank()) throw ApiException("登录已过期，请重新登录", 401)
        refreshToken()
    }

    suspend fun refreshToken(): TokenBean = withContext(Dispatchers.IO) {
        val req = authHeaders(useRefresh = true)
            .url(BASE_URL + "user/refresh")
            .post(ByteArray(0).toRequestBody(null))
            .build()
        val env = call(req)
        if (env.code != 200) throw ApiException(env.message ?: "刷新 token 失败", env.code)
        val token = parseToken(env) ?: throw ApiException("刷新 token 返回为空", env.code)
        store.saveTokens(token)
        token
    }

    private fun parseToken(env: Envelope): TokenBean? {
        val d = env.data ?: return null
        return try {
            if (d.isJsonObject) gson.fromJson(d, TokenBean::class.java)
            else gson.fromJson(d.asString, TokenBean::class.java)
        } catch (e: Exception) { null }
    }

    private fun call(req: Request): Envelope {
        http.newCall(req).execute().use { resp ->
            val body = resp.body?.string().orEmpty()
            val env = try {
                gson.fromJson(body, Envelope::class.java)
            } catch (e: Exception) {
                Envelope(success = false, code = resp.code, message = "响应解析失败: ${e.message}")
            }
            // Debug telemetry: method + path + result only, never the body
            // (login bodies carry the password, token bodies carry tokens).
            val path = req.url.toString().removePrefix(BASE_URL)
            DebugLog.log("REST", "${req.method} $path -> ${env.code} ${env.message ?: ""}")
            return env
        }
    }

    private suspend fun postJson(path: String, json: JSONObject, authed: Boolean): Envelope =
        withContext(Dispatchers.IO) {
            if (authed) ensureFreshToken()
            val b = if (authed) authHeaders() else Request.Builder()
            val req = b.url(BASE_URL + path)
                .post(json.toString().toRequestBody(JSON)).build()
            call(req)
        }

    private suspend fun postJsonArray(path: String, arr: JSONArray, authed: Boolean = true): Envelope =
        withContext(Dispatchers.IO) {
            if (authed) ensureFreshToken()
            val req = authHeaders().url(BASE_URL + path)
                .post(arr.toString().toRequestBody(JSON)).build()
            call(req)
        }

    private suspend fun get(path: String, authed: Boolean = true): Envelope =
        withContext(Dispatchers.IO) {
            if (authed) ensureFreshToken()
            val b = if (authed) authHeaders() else Request.Builder()
            call(b.url(BASE_URL + path).get().build())
        }

    /** Authed GET returning the raw envelope (for screens that parse unknown shapes). */
    suspend fun getRaw(path: String): Envelope = get(path)

    /** Authed POST returning the raw envelope. */
    suspend fun postRaw(path: String, json: JSONObject): Envelope = postJson(path, json, authed = true)

    private fun requireOk(env: Envelope): Envelope {
        if (!env.success && env.code != 200) throw ApiException(env.message ?: "请求失败", env.code)
        if (env.code != 200) throw ApiException(env.message ?: "请求失败", env.code)
        return env
    }

    // ---- Account ----
    suspend fun login(phone: String, password: String): TokenBean {
        val json = JSONObject().apply {
            put("phone", phone)
            put("password", AesUtil.encrypt(password))
            put("deviceId", store.deviceId)
        }
        val env = requireOk(postJson("user/V2/login", json, authed = false))
        val token = parseToken(env) ?: throw ApiException("登录返回为空")
        store.saveTokens(token)
        return token
    }

    suspend fun sendSms(phone: String, forgot: Boolean) {
        val json = JSONObject().apply {
            put("phone", phone)
            put("smsType", if (forgot) "10012" else "10011")
        }
        requireOk(postJson("smsMessage/v2/sendSmsMessage", json, authed = false))
    }

    /**
     * SMS code check. TODO / known gap: in the original app this endpoint is
     * only used by the register / forgot-password flows and returns no token.
     * There is no SMS-login endpoint returning a TokenBean in the static code,
     * so verifying a code here does NOT log the user in. After a successful
     * check the UI tells the user to log in with their password (or finish
     * registration in the original app). If a real SMS-login endpoint exists
     * server-side, wire its token response here.
     */
    suspend fun checkSms(phone: String, code: String) {
        val json = JSONObject().apply { put("phone", phone); put("code", code) }
        requireOk(postJson("smsMessage/getSmsMessage", json, authed = false))
    }

    suspend fun checkUserRegistered(phone: String): Boolean {
        val json = JSONObject().apply { put("phone", phone) }
        val env = postJson("user/V3/queryUser", json, authed = false)
        return env.code == 200
    }

    /**
     * Register. TODO: the `oneKey` field's meaning is not expanded in the
     * static code (passed through from the register UI); this method is
     * API-ready but has no UI in v1.1 — wire the real value after a test.
     */
    suspend fun register(phone: String, code: String, password: String, oneKey: String = "") {
        val json = JSONObject().apply {
            put("phone", phone)
            put("code", code)
            put("oneKey", oneKey)
            put("avatarUrl", Build.MODEL)
            put("password", AesUtil.encrypt(password))
        }
        requireOk(postJson("user/V3/registerV2", json, authed = false))
    }

    /**
     * Forgot password. NOTE (static fact, not a bug in this client): the
     * original app sends `pwd` here WITHOUT AES encryption, unlike login /
     * register. Kept as-is because the server expects it that way.
     */
    suspend fun forgotPassword(phone: String, code: String, newPassword: String) {
        val json = JSONObject().apply {
            put("phone", phone)
            put("code", code)
            put("pwd", newPassword)
        }
        requireOk(postJson("user/V3/setPwd", json, authed = false))
    }

    suspend fun userInfo(): Envelope = get("user/info")

    suspend fun changeNickname(nickName: String): Envelope =
        get("user/changeName?name=" + java.net.URLEncoder.encode(nickName, "UTF-8"))

    /**
     * Delete account. TODO: the original method builds {"sn":[...]} but
     * actually POSTs the bare JSONArray; the server's real expectation must
     * be confirmed by capture before use. No UI calls this in v1.1.
     */
    suspend fun deleteAccount(sns: List<String>): Envelope {
        val arr = JSONArray()
        sns.forEach { arr.put(it) }
        return postJsonArray("user/cancel", arr)
    }

    // ---- Devices ----
    suspend fun deviceList(): List<DeviceInfo> {
        // Primary: /deviceBind/list?owned=1 — data is a direct array.
        val env = get("deviceBind/list?owned=1")
        if (env.code == 200 && env.data != null) {
            try {
                if (env.data.isJsonArray) {
                    return gson.fromJson(env.data, object : TypeToken<List<DeviceInfo>>() {}.type)
                }
                if (env.data.isJsonPrimitive) {
                    val arr = JsonParser.parseString(env.data.asString)
                    if (arr.isJsonArray) {
                        return gson.fromJson(arr, object : TypeToken<List<DeviceInfo>>() {}.type)
                    }
                }
            } catch (_: Exception) { /* fall through to V3 */ }
        }
        // Fallback: /deviceBind/V3/list — data is {"listResults": [...]}.
        // TODO §5-#6: other fields beside listResults (total/pagination)
        // are unknown statically; only listResults is parsed.
        val v3 = get("deviceBind/V3/list")
        if (v3.code != 200) throw ApiException(v3.message ?: "获取设备列表失败", v3.code)
        val d = v3.data ?: return emptyList()
        val obj = if (d.isJsonObject) d.asJsonObject
            else JsonParser.parseString(d.asString).asJsonObject
        return gson.fromJson(obj, V3ListData::class.java).listResults
    }

    suspend fun deviceInfo(sn: String): Envelope = get("device/info?sn=$sn")
    suspend fun userOnline(sn: String): Envelope = get("user/online?sn=$sn")
    suspend fun cardFlow(sn: String): Envelope = get("card/V2/query/flow?sn=$sn")
    suspend fun deviceIccid(sn: String): Envelope = get("device/device/iccid?sn=$sn")

    suspend fun renameDevice(sn: String, name: String): Envelope =
        get("deviceBind/update/name?sn=$sn&name=" + java.net.URLEncoder.encode(name, "UTF-8"))

    suspend fun checkIfBind(sn: String, code: String): Envelope =
        get("deviceBind/V2/checkSn?sn=$sn&code=$code")

    /** Bind a device. TODO: `deviceToken` is the push registrationId in the
     *  original app; this client has no push SDK, so an empty string is sent
     *  and the server's reaction must be verified by a real test. */
    suspend fun bindDevice(sn: String, checkCode: String): Envelope =
        get("deviceBind/v3/boundUser?sn=$sn&deviceToken=&check=$checkCode")

    // ---- Sharing ----
    suspend fun shareList(sn: String): Envelope = get("deviceBind/share/list?sn=$sn")
    suspend fun shareAll(): Envelope = get("deviceBind/share/all")
    suspend fun shareFrom(): Envelope = get("deviceBind/share/from")
    suspend fun turnDownShare(sn: String): Envelope = get("deviceBind/share/turnDown?sn=$sn")
    suspend fun unbindDevice(sn: String): Envelope = get("deviceBind/device/del?sn=$sn")
    suspend fun unbindSharedDevice(iotId: String): Envelope = get("deviceBind/device/out?iotId=$iotId")

    suspend fun cancelShare(iotId: String, sn: String): Envelope {
        val json = JSONObject().apply {
            put("iotId", JSONArray().put(iotId))
            put("sn", sn)
        }
        return postJson("deviceBind/device/cancel", json, authed = true)
    }

    /**
     * Share a device. Body mirrors DGApiRepository.requestAccountShare /
     * requestAccountShareAccept exactly.
     * TODO: `permission` is "1,2" by default (",3" adds recording rights);
     * `useful` is ShareDeviceCodeData.permissionsTime — its unit / whether
     * -1 means permanent is not expanded statically and must be verified.
     * `ownedUser` is the owner's user id as a string.
     */
    /**
     * v1.1.4 (audit S1): the three share endpoints do NOT share one body
     * shape in the original app:
     * - share-to-account: wrapped `{code:41, message:"share", sn, data:{...,
     *   targetPhone, ...}}`;
     * - share-to-phone and accept-share: NO wrapper, flat body.
     * The old code sent the wrapped shape to all three, so share-by-phone
     * and accept-share were rejected. `useful` unit is still unconfirmed
     * statically (kept as seconds, as before); verify with one real test.
     */
    private fun shareData(sn: String, phone: String, permission: String, usefulSeconds: Int, targetPhone: String? = null): JSONObject =
        JSONObject().apply {
            put("createDate", System.currentTimeMillis())
            put("ownedUser", store.userId.takeIf { it != 0L }?.toString() ?: "")
            put("permission", permission)
            put("sn", sn)
            put("phone", phone)
            if (targetPhone != null) put("targetPhone", targetPhone)
            put("useful", usefulSeconds)
            put("deviceToken", "")
        }

    private fun shareBodyWrapped(sn: String, phone: String, permission: String, usefulSeconds: Int): JSONObject =
        JSONObject().apply {
            put("code", 41)
            put("message", "share")
            put("sn", sn)
            put("data", shareData(sn, phone, permission, usefulSeconds, targetPhone = phone))
        }

    private fun shareBodyPlain(sn: String, phone: String, permission: String, usefulSeconds: Int): JSONObject =
        shareData(sn, phone, permission, usefulSeconds)

    /** Share to a phone number (POST /deviceBind/device/sharePhone). */
    suspend fun shareToPhone(sn: String, phone: String, permission: String = "1,2", usefulSeconds: Int = -1): Envelope =
        postJson("deviceBind/device/sharePhone", shareBodyPlain(sn, phone, permission, usefulSeconds), authed = true)

    /** Share to an account (POST /deviceBind/rabbit/device/share). Same body shape. */
    suspend fun shareToAccount(sn: String, phone: String, permission: String = "1,2", usefulSeconds: Int = -1): Envelope =
        postJson("deviceBind/rabbit/device/share", shareBodyWrapped(sn, phone, permission, usefulSeconds), authed = true)

    /** Accept a share (POST /deviceBind/device/share). Same body shape. */
    suspend fun acceptShare(sn: String, phone: String, permission: String = "1,2", usefulSeconds: Int = -1): Envelope =
        postJson("deviceBind/device/share", shareBodyPlain(sn, phone, permission, usefulSeconds), authed = true)

    // ---- Cloud package / OTA ----
    suspend fun cloudInfo2(sn: String): Envelope = get("cloud/v3/app/getInfo?sn=$sn")
    suspend fun cloudInfoList(sn: String): Envelope = get("defoos/getlist?sn=$sn")
    suspend fun cloudPicUrl(sn: String): Envelope = get("cloud/getV2Url?sn=$sn")

    /** Cloud recording-type setting. TODO: `videoType` enum values are not
     *  expanded statically; API-ready only, no UI in v1.1. */
    suspend fun setCloudInfo(sn: String, videoType: Int): Envelope {
        val json = JSONObject().apply {
            put("sn", sn)
            put("videoType", videoType.toString())
        }
        return postJson("cloud/V2/set", json, authed = true)
    }

    /** OTA lookup by firmware version. Read-only: only used to prompt the user. */
    suspend fun otaUrl(sv: String): Envelope = get("up-md5/getUrl?sv=$sv")
    suspend fun otaUrlV2(sv: String, msv: String): Envelope = get("up-md5/v2/getUrl?sv=$sv&msv=$msv")

    /** Push-notification switch. TODO: `type` enum is not expanded statically; API-ready only. */
    suspend fun pushState(type: Int, open: Boolean): Envelope =
        get("user/set/push?type=$type&pushType=${if (open) 1 else 0}")

    // ---- Messages / alarms ----
    suspend fun deviceMessages(sn: String, date: String): Envelope =
        get("message/device/list?sn=$sn&date=$date")

    suspend fun allMessages(date: String, sns: List<String>): Envelope {
        val json = JSONObject().apply {
            put("date", date)
            put("sn", JSONArray().apply { sns.forEach { put(it) } })
        }
        return postJson("message/list", json, authed = true)
    }

    suspend fun deleteMessages(sn: String, msgIds: List<Int>): Envelope {
        val obj = JSONObject().apply {
            put("msgIds", JSONArray().apply { msgIds.forEach { put(it) } })
            put("sn", sn)
        }
        return postJsonArray("message/del/msgs", JSONArray().put(obj))
    }

    // ---- Plain HTTP (no envelope, no auth): getlist / downloads / close-path ----
    /**
     * WiFi recording list. Tries the new HTTPS endpoint first, then the old
     * HTTP one. TODO: the `token` header value is unconfirmed statically
     * (accessToken vs file key); this client sends the accessToken first.
     * `type` is sent as "video" (unconfirmed); `days` defaults to the cloud
     * retention days when known, else 7.
     */
    suspend fun wifiFileList(sn: String, days: String, date: String, type: String = "video", startIndex: Int = 0): String =
        withContext(Dispatchers.IO) {
            val token = store.accessToken.orEmpty()
            val headers = mapOf(
                "sn" to sn, "token" to token, "days" to days, "date" to date,
                "type" to type, "Content-Range" to startIndex.toString(),
            )
            try {
                getPlainText(WIFI_LIST_URL_NEW, headers)
            } catch (e: Exception) {
                getPlainText(WIFI_LIST_URL_OLD, headers)
            }
        }

    suspend fun fourGFileList(sn: String, days: String, date: String): String =
        withContext(Dispatchers.IO) { getPlainText(fourGListUrl(sn, days, date), emptyMap()) }

    suspend fun getPlainText(url: String, headers: Map<String, String>): String =
        withContext(Dispatchers.IO) {
            val b = Request.Builder().url(url).get()
            headers.forEach { (k, v) -> b.addHeader(k, v) }
            http.newCall(b.build()).execute().use { resp ->
                val body = resp.body?.string().orEmpty()
                if (!resp.isSuccessful) throw ApiException("请求失败 HTTP ${resp.code}: ${body.take(200)}", resp.code)
                body
            }
        }

    /** Best-effort GET with no auth (e.g. intercom close-path). Never throws. */
    suspend fun getPlainQuiet(url: String): Boolean = withContext(Dispatchers.IO) {
        try {
            http.newCall(Request.Builder().url(url).get().build()).execute().use { it.isSuccessful }
        } catch (_: Exception) { false }
    }

    /** Stream a URL to a file. Returns bytes written. */
    suspend fun downloadToFile(url: String, headers: Map<String, String>, file: File): Long =
        withContext(Dispatchers.IO) {
            val b = Request.Builder().url(url).get()
            headers.forEach { (k, v) -> b.addHeader(k, v) }
            http.newCall(b.build()).execute().use { resp ->
                if (!resp.isSuccessful) throw ApiException("下载失败 HTTP ${resp.code}", resp.code)
                val body = resp.body ?: throw ApiException("下载响应为空")
                var total = 0L
                FileOutputStream(file).use { out ->
                    val buf = ByteArray(64 * 1024)
                    var n: Int
                    val stream = body.byteStream()
                    while (stream.read(buf).also { n = it } != -1) {
                        out.write(buf, 0, n)
                        total += n
                    }
                }
                total
            }
        }
}
