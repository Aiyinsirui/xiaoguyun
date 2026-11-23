package com.albert.xiaoguyun.ws

import com.albert.xiaoguyun.net.TokenStore
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.java_websocket.client.WebSocketClient
import com.albert.xiaoguyun.DebugLog
import org.java_websocket.handshake.ServerHandshake
import org.json.JSONArray
import org.json.JSONObject
import java.net.URI
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Signalling only — no video goes over this socket. Video is an RTMP URL
 * returned in a code-22 reply, played by libVLC.
 * WS: wss://vlink.daguipc.com:9443/cloud, handshake header only:
 * Authorization: Bearer <accessToken>. Normal TLS verification is kept.
 *
 * Command inventory (DGSocketRepository, see AUDIT.md §2): codes 3,5,6,7,8,
 * 10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,35,36,37,38,40,
 * 42,43,51,52,53,54,58,59,90,91 (+ inbound 2 alarm, 41 share notice,
 * 100001 ignored, 401 check_token is dead code and is never sent).
 */
class WsClient(private val store: TokenStore) {
    companion object {
        const val WS_URL = "wss://vlink.daguipc.com:9443/cloud"
        // stream 0/1 <-> HD/SD mapping, confirmed empirically on device
        // 2026-12-01 from 108 PLAYER "video size" reports paired with the
        // code-22 requests: stream 1 -> 640x720 (SD), stream 0 -> 1920x2160
        // (HD). The original app defaults to wire value 1 = fluent.
        const val STREAM_HIGH = 0
        const val STREAM_FLUENT = 1
        // PTZ dir, CONFIRMED by audit (see AUDIT.md): steering-wheel index
        // 0=up/1=down/2=left/3=right -> changeSteeringWheelDirection
        // (0->2, 1->3, 2->0, 3->1) -> changePTZActionValue
        // (0->3, 1->4, 2->1, 3->2). Composed: up=1, down=2, left=3, right=4.
        // Stop is a single dir-0 frame (VideoLiveClickControl).
        const val PTZ_STOP = 0
        const val PTZ_UP = 1
        const val PTZ_DOWN = 2
        const val PTZ_LEFT = 3
        const val PTZ_RIGHT = 4
        // code 24/28 `loca`: NOT a cloud/SD flag — it is the start offset in
        // seconds inside the recording file (file names start with HHMMSS).
        const val LOCA_CLOUD = 0 // placeholder only; loca is an offset, see above
    }

    interface Listener {
        fun onConnected()
        fun onDisconnected(reason: String)
        fun onDeviceStates(states: Map<String, DeviceState>)
        fun onError(message: String)
    }

    data class DeviceState(val sn: String, val status: Int, val bat: Int = -1)

    var listener: Listener? = null
    /** Unsolicited frames (alarm code 2, share notice 41, device-info 6, …)
     *  and any frame without a pending one-shot waiter land here. */
    var rawListener: ((code: Int, obj: JSONObject) -> Unit)? = null

    private var client: WebSocketClient? = null
    private val scope = CoroutineScope(Dispatchers.IO)
    private val connecting = AtomicBoolean(false)
    private var reconnectDelayMs = 1000L
    private var wantConnected = false
    // Pending one-shot replies, keyed by code (22 = video, 23/27 = record lists).
    // NOTE: one waiter per code; settings screens send sequentially.
    private val pending = ConcurrentHashMap<Int, (JSONObject) -> Unit>()
    private var lastRtmpAt = 0L
    private var lastRtmpAddr: String? = null
    /**
     * v1.1.4 — auto-subscribe. The server rejects commands on a socket that
     * has not subscribed ("此SN号未订阅", code 404): the detail page proved
     * it, returning that error for code 52 because its fresh socket never
     * sent code 90. Every screen sets [subscribeSns] before connect(); on
     * every (re)connect the socket subscribes itself, and dependent requests
     * wait for the state-90/91 ack (max 3 s) before being sent, so videoplay
     * can no longer race ahead of the subscription.
     */
    var subscribeSns: List<String> = emptyList()
    private var subscribedAck = false
    private var authFailCount = 0

    /** Runs [action] once the subdevice ack arrived, or after 3 s max. */
    private fun runWhenSubscribed(action: () -> Unit) {
        if (subscribeSns.isEmpty() || subscribedAck) { action(); return }
        scope.launch {
            var waited = 0
            while (!subscribedAck && waited < 3000) { delay(100); waited += 100 }
            action()
        }
    }

    private fun autoSubscribe() {
        if (subscribeSns.isEmpty()) return
        subscribe(subscribeSns)
        subscribeSns.forEach { subscribeOneDevice(it) }
    }

    fun connect() {
        DebugLog.log("WS", "connect()")
        wantConnected = true
        if (client?.isOpen == true) return
        if (!connecting.compareAndSet(false, true)) return
        val token = store.accessToken ?: run { connecting.set(false); return }
        val headers = mapOf("Authorization" to "Bearer $token")
        val ws = object : WebSocketClient(URI(WS_URL), headers) {
            override fun onOpen(handshake: ServerHandshake?) {
                DebugLog.log("WS", "已连接")
                connecting.set(false)
                reconnectDelayMs = 1000L
                subscribedAck = subscribeSns.isEmpty()
                autoSubscribe()
                listener?.onConnected()
            }
            override fun onMessage(message: String) = handleMessage(message)
            override fun onClose(code: Int, reason: String, remote: Boolean) {
                DebugLog.log("WS", "关闭 code=$code reason=$reason remote=$remote")
                connecting.set(false)
                listener?.onDisconnected(reason.ifBlank { "code=$code" })
                scheduleReconnect()
            }
            override fun onError(ex: Exception) {
                DebugLog.log("WS", "错误 ${ex.message}")
                listener?.onError(ex.message ?: "WS 错误")
            }
        }
        ws.connectionLostTimeout = 50
        client = ws
        scope.launch { try { ws.connectBlocking() } catch (_: Exception) { connecting.set(false); scheduleReconnect() } }
    }

    private fun scheduleReconnect() {
        if (!wantConnected) return
        scope.launch {
            delay(reconnectDelayMs)
            reconnectDelayMs = minOf(reconnectDelayMs * 2, 10_000L)
            if (wantConnected) connect()
        }
    }

    fun disconnect() {
        wantConnected = false
        try { client?.close() } catch (_: Exception) {}
        client = null
    }

    fun isOpen(): Boolean = client?.isOpen == true

    private fun sendRaw(json: String): Boolean {
        DebugLog.log("WS>>", json.take(600))
        val c = client
        return if (c?.isOpen == true) { c.send(json); true } else false
    }

    private fun frame(code: Int, message: String, sn: String, data: JSONObject? = null): String {
        val o = JSONObject()
        o.put("code", code); o.put("message", message); o.put("sn", sn)
        if (data != null) o.put("data", data)
        return o.toString()
    }

    /** Fire-and-forget command. Returns false if the socket is not open. */
    fun send(code: Int, message: String, sn: String, data: JSONObject? = null): Boolean =
        sendRaw(frame(code, message, sn, data))

    /**
     * One-shot request: sends the frame and invokes [onResult] with the
     * reply object, or null on timeout. The reply is matched on `code` (or
     * `state`, per the original app's substring matching).
     */
    fun request(code: Int, message: String, sn: String, data: JSONObject? = null,
                timeoutMs: Long = 5000, onResult: (JSONObject?) -> Unit) {
        runWhenSubscribed {
            pending[code] = { obj -> onResult(obj) }
            if (!sendRaw(frame(code, message, sn, data))) {
                pending.remove(code)
                onResult(null)
                return@runWhenSubscribed
            }
            scope.launch {
                delay(timeoutMs)
                if (pending.remove(code) != null) onResult(null)
            }
        }
    }

    fun subscribe(sns: List<String>) {
        val arr = JSONArray()
        sns.forEach { arr.put(JSONObject().put("sn", it)) }
        val o = JSONObject()
        o.put("code", 90); o.put("message", "subdevice"); o.put("sn", ""); o.put("data", arr)
        sendRaw(o.toString())
    }

    fun requestVideo(sn: String, stream: Int, timeoutMs: Long = 12000, onAddr: (String?) -> Unit) {
        // 40s cache reuse, mirroring the original app.
        val now = System.currentTimeMillis()
        if (lastRtmpAddr != null && now - lastRtmpAt < 40_000) { onAddr(lastRtmpAddr); return }
        pending[22] = { obj ->
            // data is normally {"addr": "..."}; tolerate a JSON-string data too.
            val dataObj = obj.optJSONObject("data")
            val addr = dataObj?.optString("addr")
                ?: obj.optString("data", "").let {
                    try { JSONObject(it).optString("addr", "") } catch (_: Exception) { "" }
                }.ifBlank { obj.optString("addr", "") }
            if (addr.isNotBlank()) { lastRtmpAddr = addr; lastRtmpAt = System.currentTimeMillis() }
            onAddr(addr.ifBlank { null })
        }
        runWhenSubscribed {
            if (!sendRaw(frame(22, "videoplay", sn, JSONObject().put("stream", stream)))) {
                pending.remove(22)
                onAddr(null)
                return@runWhenSubscribed
            }
            scope.launch {
                delay(timeoutMs)
                if (pending.remove(22) != null) onAddr(null)
            }
        }
    }

    /** Clears the cached RTMP address (e.g. when switching lenses). */
    fun clearVideoCache() { lastRtmpAddr = null; lastRtmpAt = 0L }

    // ---- PTZ (code 10). Original app re-sends every 250 ms while held. ----
    fun sendMotor(sn: String, dir: Int) {
        sendRaw(frame(10, "motor", sn, JSONObject().put("dir", dir).put("speed", 1)))
    }

    // ---- Intercom (code 26) ----
    fun sendVolPlay(sn: String, open: Boolean) {
        sendRaw(frame(26, "volplay", sn, JSONObject().put("state", if (open) 1 else 0)))
    }

    /**
     * v1.2.3: code 26 with a one-shot ack. The original app starts the RTMP
     * publish only AFTER the volplay reply arrives (VideoLiveActivity
     * .controlVol -> CommandListener.onMessage -> recordingSound). Starting
     * the publish in parallel could reach the relay before the camera side
     * was switched into talk mode. [onAck] gets true on reply, false on
     * timeout/socket failure — callers decide whether to fall back.
     */
    fun requestVolPlay(sn: String, open: Boolean, timeoutMs: Long = 2000, onAck: (Boolean) -> Unit) {
        pending[26] = { onAck(true) }
        runWhenSubscribed {
            if (!sendRaw(frame(26, "volplay", sn, JSONObject().put("state", if (open) 1 else 0)))) {
                pending.remove(26)
                onAck(false)
                return@runWhenSubscribed
            }
            scope.launch {
                delay(timeoutMs)
                if (pending.remove(26) != null) onAck(false)
            }
        }
    }

    // ---- Playback: SD card via WS (codes 23/24/25/27/28) ----
    fun requestRecordDates(sn: String, date: String, onResult: (JSONObject) -> Unit) {
        pending[27] = onResult
        runWhenSubscribed { sendRaw(frame(27, "recdate", sn, JSONObject().put("date", date))) }
    }

    fun requestRecordList(sn: String, date: String, onResult: (JSONObject) -> Unit) {
        pending[23] = onResult
        runWhenSubscribed { sendRaw(frame(23, "recinfo", sn, JSONObject().put("date", date))) }
    }

    fun requestRecordPlay(sn: String, recfile: String, date: String, locaSeconds: Int = 0,
                          continuePlay: Boolean = false, onAddr: (String?) -> Unit) {
        pending[24] = { obj ->
            val addr = obj.optJSONObject("data")?.optString("addr") ?: obj.optString("addr", "")
            onAddr(addr.ifBlank { null })
        }
        // NOTE v1.0 sent loca as an empty string; the original sends an int
        // (seconds offset inside the file). Fixed in v1.1.
        val data = JSONObject().put("recfile", recfile).put("continue", if (continuePlay) 1 else 0)
            .put("loca", locaSeconds).put("date", date)
        runWhenSubscribed { sendRaw(frame(24, "recplay", sn, data)) }
    }

    /** Seek inside SD playback: recfast, loca = target offset in seconds. */
    fun sendRecordFast(sn: String, recfile: String, date: String, locaSeconds: Int) {
        val data = JSONObject().put("recfile", recfile)
            .put("loca", if (locaSeconds < 0) 0 else locaSeconds).put("date", date)
        sendRaw(frame(28, "recfast", sn, data))
    }

    fun sendRecordPause(sn: String, state: Int) {
        // state: 0 = play, 1 = pause, -1 = close
        sendRaw(frame(25, "recpause", sn, JSONObject().put("state", state)))
    }

    // ---- Device info / state ----
    /** code 6: reply data.{sn,iccid,ssid,use,link,dbm,bat,hv,sv}. */
    fun requestDeviceInfo(sn: String, onResult: (JSONObject?) -> Unit) =
        request(6, "deviceinfo", sn, null, 5000, onResult)

    /** code 51: reply data.{power,chg}. */
    fun requestBat(sn: String, onResult: (JSONObject?) -> Unit) =
        request(51, "getbat", sn, null, 5000, onResult)

    /** code 52: WiFi info; reply fields not expanded statically (raw JSON shown). */
    fun requestWifiInfo(sn: String, onResult: (JSONObject?) -> Unit) =
        request(52, "", sn, null, 5000, onResult)

    /** code 43: query one device's state. code 42: subscribe one device (operation:1). */
    fun requestDeviceState(sn: String, onResult: (JSONObject?) -> Unit) =
        request(43, "", sn, null, 5000, onResult)

    fun subscribeOneDevice(sn: String) {
        sendRaw(frame(42, "", sn, JSONObject().put("operation", 1)))
    }

    fun sendDisconnect(sn: String) = send(5, "disconnect", sn)
    fun sendReboot(sn: String) = send(7, "reboot", sn)

    /**
     * code 3 "link APP[ANDROID]" is DELIBERATELY NOT sent by this client.
     * In the original app link=1 is sent only while binding a new device
     * and link=0 only after a successful REST unbind (HomeFragment
     * .unBindDevice). v1.1.2 sent link=0 when leaving the live page and the
     * camera reset itself and lost its WiFi — do not re-add this frame.
     * (Method removed in v1.1.3; see LiveActivity.)
     */

    // ---- LED / detection / tracking / flip / record params ----
    /**
     * code 11 "led": camera fill light. Verified against the original app
     * (DGSocketRepository.getLedSetParam / VideoLiveActivity):
     *   led=1 turn on, led=0 turn off, led=3 query current state.
     * Reply frame carries code/state 11 with data.led (0/1); the original
     * auto-switches the light off 5 minutes after switch-on.
     */
    fun sendLed(sn: String, led: Int) =
        send(11, "led", sn, JSONObject().put("led", led))

    /**
     * Query the current fill-light state (original sends led=3 on entry).
     * Gated on the subscribe ack: a raw [send] during socket setup is logged
     * but silently dropped (sendRaw returns false when not open), which left
     * the UI stuck on "querying…" forever.
     */
    fun requestLedState(sn: String) = runWhenSubscribed { sendLed(sn, 3) }

    fun requestDetection(sn: String, onResult: (JSONObject?) -> Unit) =
        request(15, "getdetection", sn, null, 5000, onResult)

    fun setDetection(sn: String, sw: Int, sen: Int, led: Int) =
        send(14, "setdetection", sn, JSONObject().put("sw", sw).put("sen", sen).put("led", led))

    fun requestTrack(sn: String, onResult: (JSONObject?) -> Unit) =
        request(17, "gettrack", sn, null, 5000, onResult)

    fun setTrack(sn: String, sw: Int, sen: Int) =
        send(16, "settrack", sn, JSONObject().put("sw", sw).put("sen", sen))

    fun requestFlip(sn: String, onResult: (JSONObject?) -> Unit) =
        request(19, "getflip", sn, null, 5000, onResult)

    fun setFlip(sn: String, on: Boolean) =
        send(18, "setflip", sn, JSONObject().put("sw", if (on) 1 else 0))

    fun requestRecParm(sn: String, onResult: (JSONObject?) -> Unit) =
        request(21, "getrecparm", sn, null, 5000, onResult)

    /** code 20: TODO mode/qlty enums not expanded statically; API-ready only. */
    fun setRecParm(sn: String, mode: Int, qlty: Int) =
        send(20, "setrecparm", sn, JSONObject().put("mode", mode).put("qlty", qlty))

    // ---- Alarm / PIR ----
    fun requestAlarm(sn: String, onResult: (JSONObject?) -> Unit) =
        request(36, "getalarm", sn, null, 5000, onResult)

    /** code 35, message is literally "getalarm" in the original (copy-paste legacy). */
    fun setAlarm(sn: String, sw: Int, sen: Int) =
        send(35, "getalarm", sn, JSONObject().put("sw", sw).put("sen", sen).put("type", 1))

    /** code 38: reply data.data is sound data (format unexpanded statically). */
    fun requestAlarmSound(sn: String, onResult: (JSONObject?) -> Unit) =
        request(38, "getalarmsound", sn, null, 5000, onResult)

    fun requestPir(sn: String, onResult: (JSONObject?) -> Unit) =
        request(58, "", sn, null, 5000, onResult)

    fun setPir(sn: String, open: Boolean, sen: Int) =
        send(59, "", sn, JSONObject().put("sw", if (open) 1 else 0).put("sen", sen))

    // ---- TF card (code 12 format, code 13 info) ----
    /**
     * code 13: reply data.use = used percent (>= 0 means a card is present).
     * The `flag` argument is accepted by the original constructor but never
     * appears in the frame; callers pass 1/3/5/33 with no expanded meaning.
     */
    fun requestTfInfo(sn: String, onResult: (JSONObject?) -> Unit) =
        request(13, "gettfinfo", sn, null, 8000, onResult)

    /**
     * code 12: format TF card. TODO: the original message string is an
     * obfuscated constant that is unreadable statically; an empty message is
     * sent (as with codes 42/43/52/58/59) and the server dispatches on code.
     * Success reply: code==200 or message=="success".
     */
    fun sendFormatTf(sn: String) = send(12, "", sn)

    // ---- Cloud package / record-time list ----
    /** code 40: query cloud package info; top-level state:1. */
    fun requestPackage(sn: String, onResult: (JSONObject?) -> Unit) {
        val o = JSONObject()
        o.put("code", 40); o.put("message", "package"); o.put("sn", sn); o.put("state", 1)
        pending[40] = { obj -> onResult(obj) }
        runWhenSubscribed {
            if (!sendRaw(o.toString())) { pending.remove(40); onResult(null); return@runWhenSubscribed }
            scope.launch { delay(5000); if (pending.remove(40) != null) onResult(null) }
        }
    }

    /** code 54: query record-time list (raw JSON; fields unexpanded). */
    fun requestRecordTimeList(sn: String, onResult: (JSONObject?) -> Unit) =
        request(54, "", sn, null, 5000, onResult)

    /** code 53: TODO param string format unexpanded statically; API-ready only. */
    fun setRecordTimeList(sn: String, param: String) =
        send(53, "", sn, JSONObject().put("data", param))

    private fun handleMessage(text: String) {
        DebugLog.log("WS<<", text.take(600))
        try {
            val obj = JSONObject(text)
            // BUG FIX v1.1.1 — device showed offline while the original app
            // showed online. The server's WS frames carry the command id in
            // EITHER "code" or "state" (see original IotParamName:
            // isSubDeviceList checks "\"state\":90", isDeviceState checks
            // "\"code\":91", getIsCommand checks both). The subdevice reply
            // arrives as {"code":200,"state":90,"data":[...]} — the old code
            // took "code" first, saw 200, found no waiter for 200 and dropped
            // the frame, so onDeviceStates never fired and the list stayed on
            // the (unreliable) REST status. Fix: when "state" is a known
            // command id, it wins over "code".
            val codeVal = if (obj.has("code")) obj.optInt("code", -1) else -1
            val stateVal = if (obj.has("state")) obj.optInt("state", -1) else -1
            val knownCommands = setOf(
                2, 6, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
                24, 25, 26, 27, 28, 35, 36, 37, 38, 40, 41, 42, 43, 51, 52,
                53, 54, 58, 59, 90, 91, 401, 100001,
            )
            val code = when {
                stateVal in knownCommands -> stateVal
                codeVal != -1 -> codeVal
                else -> stateVal
            }
            when (code) {
                90, 91 -> {
                    subscribedAck = true
                    authFailCount = 0
                    val map = mutableMapOf<String, DeviceState>()
                    val data = obj.optJSONArray("data")
                    if (data != null) {
                        for (i in 0 until data.length()) {
                            val d = data.optJSONObject(i) ?: continue
                            val sn = d.optString("sn"); if (sn.isBlank()) continue
                            map[sn] = DeviceState(sn, d.optInt("status", 3), d.optInt("bat", -1))
                        }
                    } else if (obj.has("sn")) {
                        val sn = obj.optString("sn")
                        map[sn] = DeviceState(sn, obj.optInt("status", 3), obj.optInt("bat", -1))
                    } else {
                        // Single-device reply as {"state":90,"data":{"sn":..,"status":..}}
                        val d = obj.optJSONObject("data")
                        if (d != null) {
                            val sn = d.optString("sn")
                            if (sn.isNotBlank()) {
                                map[sn] = DeviceState(sn, d.optInt("status", 3), d.optInt("bat", -1))
                            }
                        }
                    }
                    if (map.isNotEmpty()) listener?.onDeviceStates(map)
                }
                100001 -> { /* TODO §5-#4: meaning unknown statically; ignored. */ }
                401 -> {
                    // v1.1.4 (audit S2): token-invalid must NOT loop forever.
                    // The old code closed the socket, onClose re-connected,
                    // the server answered 401 again — every 10 s, forever,
                    // never prompting re-login. First 401: close + reconnect
                    // (re-subscribe on the new socket, as before). Second
                    // consecutive 401: stop, clear the dead token and tell
                    // the UI to send the user back to login.
                    authFailCount++
                    rawListener?.invoke(code, obj)
                    if (authFailCount >= 2) {
                        wantConnected = false
                        try { store.clear() } catch (_: Exception) {}
                        listener?.onError("登录已过期，请重新登录")
                        try { client?.close() } catch (_: Exception) {}
                    } else {
                        try { client?.close() } catch (_: Exception) {}
                    }
                }
                else -> {
                    val waiter = pending.remove(code)
                    if (waiter != null) waiter(obj) else rawListener?.invoke(code, obj)
                }
            }
        } catch (_: Exception) { /* ignore malformed frames */ }
    }
}
