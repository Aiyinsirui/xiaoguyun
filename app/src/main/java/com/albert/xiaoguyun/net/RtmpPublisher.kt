package com.albert.xiaoguyun.net

import com.albert.xiaoguyun.DebugLog
import java.io.ByteArrayOutputStream
import java.io.InputStream
import java.io.OutputStream
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.math.min
import kotlin.random.Random

/**
 * Minimal RTMP publish client (audio only), written for the intercom uplink.
 *
 * Why this exists: the original app publishes mic audio with its native
 * `dgplayer` (`recordingSound(rtmp://<ip>:7768/video/<sn>/3)`); libVLC
 * cannot publish RTMP, so the publish path is implemented here from the
 * RTMP spec using only java.net.Socket.
 *
 * Protocol implemented: C0/C1/C2 handshake, AMF0 `connect` / `createStream` /
 * `publish`, audio messages (type 0x08) chunked at the negotiated chunk size
 * (default 128), server SetChunkSize honoured, ping-request (user-control
 * event 6) answered with pong (event 7).
 *
 * TODO (unverified — see AUDIT.md §3): this has never run against the real
 * server. The RTMP URL split (app = path minus last segment, stream key =
 * last segment, e.g. app "video/<sn>", key "3") is an assumption from the
 * URL shape; confirm with the real `addr` from a code-22 reply.
 *
 * v1.2.2: the audio-tag byte is now 0x72 (was 0x70). The camera's own
 * stream uses 0x72 (SoundFormat 7 = G.711 A-law, SoundSize 1 = 16-bit
 * samples); with 0x70 the peer heard nothing (probed 2026-11-23 from the
 * live stream's own audio tags). The TALK debug logs showed the publish
 * itself connecting and sending frames, so the byte was the problem.
 */
class RtmpPublisher(private val url: String) {

    private var socket: Socket? = null
    private var out: OutputStream? = null
    private var readerThread: Thread? = null
    private val running = AtomicBoolean(false)
    private var outChunkSize = 128
    private var streamId = 0
    private var startMs = 0L
    /** v1.2.3: timestamps start at the FIRST audio frame (value 0), not at
     *  TCP connect — matches FFmpeg-style publishers and avoids an initial
     *  ~300-600 ms timestamp offset caused by handshake/connect latency. */
    @Volatile private var tsBaseMs = 0L
    private val connectLatch = CountDownLatch(1)
    private val createStreamLatch = CountDownLatch(1)
    @Volatile private var connectOk = false
    /** Set when the server's onStatus "Publish Start"/"status" is observed. */
    @Volatile var publishAccepted = false
        private set
    /** True while the uplink socket is expected to be usable. */
    val isAlive: Boolean get() = running.get()
    @Volatile var lastError: String? = null
        private set

    data class ParsedUrl(val host: String, val port: Int, val app: String, val streamKey: String)
    companion object {
        fun parse(url: String): ParsedUrl? {
            return try {
                val noScheme = url.removePrefix("rtmp://")
                val slash = noScheme.indexOf('/')
                val hostPort = if (slash >= 0) noScheme.substring(0, slash) else noScheme
                val path = if (slash >= 0) noScheme.substring(slash + 1) else ""
                val host = hostPort.substringBefore(':')
                val port = hostPort.substringAfter(':', "1935").toInt()
                val segments = path.split('/').filter { it.isNotEmpty() }
                if (segments.size < 2) return null
                ParsedUrl(host, port, segments.dropLast(1).joinToString("/"), segments.last())
            } catch (_: Exception) { null }
        }
    }

    /** Connects + handshakes + publishes. Returns true when audio may be sent. */
    fun start(): Boolean {
        val parsed = parse(url) ?: run { lastError = "RTMP 地址解析失败"; return false }
        return try {
            val sock = Socket()
            sock.soTimeout = 5000
            sock.connect(InetSocketAddress(parsed.host, parsed.port), 5000)
            socket = sock
            out = sock.getOutputStream()
            running.set(true)
            startMs = System.currentTimeMillis()
            tsBaseMs = 0L
            publishAccepted = false
            handshake(sock.getInputStream())
            startReader(sock.getInputStream())
            sendConnect(parsed)
            if (!connectLatch.await(5, TimeUnit.SECONDS) || !connectOk) {
                lastError = "RTMP connect 无响应"; stop(); return false
            }
            sendCreateStream()
            if (!createStreamLatch.await(5, TimeUnit.SECONDS) || streamId == 0) {
                lastError = "RTMP createStream 无响应"; stop(); return false
            }
            sendPublish(parsed)
            true
        } catch (e: Exception) {
            lastError = e.message ?: "RTMP 连接失败"
            stop()
            false
        }
    }

    /** Sends one A-law frame (e.g. 160 bytes = 20 ms @ 8 kHz). Thread-safe. */
    fun sendAudio(g711: ByteArray) {
        if (!running.get() || streamId == 0) return
        val payload = ByteArray(g711.size + 1)
        // v1.2.2: 0x72, not 0x70. The camera's own stream uses 0x72
        // (SoundFormat 7 = G.711 A-law, SoundSize 1 = 16-bit samples);
        // 0x70 (8-bit) made the peer hear nothing (probed 2026-11-23).
        payload[0] = 0x72.toByte()
        g711.copyInto(payload, 1)
        val now = System.currentTimeMillis()
        if (tsBaseMs == 0L) tsBaseMs = now
        val ts = (now - tsBaseMs).toInt()
        try {
            synchronized(this) { writeChunk(fmt = 0, csid = 4, timestamp = ts, msgType = 0x08, streamId = streamId, payload = payload) }
        } catch (_: Exception) { /* socket gone; stop() will clean up */ }
    }

    fun stop() {
        running.set(false)
        try { socket?.close() } catch (_: Exception) {}
        try { readerThread?.join(500) } catch (_: Exception) {}
        socket = null; out = null
    }

    // InputStream.readNBytes needs API 33; minSdk is 24, so read fully by hand.
    private fun readFully(input: InputStream, n: Int): ByteArray {
        val buf = ByteArray(n)
        var read = 0
        while (read < n) {
            val r = input.read(buf, read, n - read)
            if (r < 0) throw java.io.IOException("RTMP 读取中断")
            read += r
        }
        return buf
    }

    // ---- handshake ----
    private fun handshake(input: InputStream) {
        val c1 = ByteArray(1536)
        Random.nextBytes(c1)
        // time (4 bytes) = 0, then 4 zero bytes, then random.
        for (i in 0 until 8) c1[i] = 0
        val o = out!!
        o.write(0x03)
        o.write(c1)
        o.flush()
        val s = ByteArray(1 + 1536 + 1536)
        var read = 0
        while (read < s.size) {
            val n = input.read(s, read, s.size - read)
            if (n < 0) throw java.io.IOException("RTMP 握手被服务端关闭")
            read += n
        }
        if (s[0] != 0x03.toByte()) throw java.io.IOException("RTMP 版本不受支持: ${s[0]}")
        // C2 = echo of S1.
        o.write(s, 1, 1536)
        o.flush()
    }

    // ---- AMF0 ----
    private fun amfString(s: String): ByteArray {
        val bytes = s.toByteArray(Charsets.UTF_8)
        val buf = ByteBuffer.allocate(1 + 2 + bytes.size).order(ByteOrder.BIG_ENDIAN)
        buf.put(0x02); buf.putShort(bytes.size.toShort()); buf.put(bytes)
        return buf.array()
    }

    private fun amfNumber(v: Double): ByteArray {
        val buf = ByteBuffer.allocate(9).order(ByteOrder.BIG_ENDIAN)
        buf.put(0x00); buf.putDouble(v)
        return buf.array()
    }

    private fun amfBool(v: Boolean): ByteArray = byteArrayOf(0x01, if (v) 1 else 0)
    private fun amfNull(): ByteArray = byteArrayOf(0x05)

    private fun amfObject(props: List<Pair<String, ByteArray>>): ByteArray {
        val baos = ByteArrayOutputStream()
        baos.write(0x03)
        for ((k, v) in props) {
            val kb = k.toByteArray(Charsets.UTF_8)
            baos.write(kb.size shr 8); baos.write(kb.size and 0xFF); baos.write(kb); baos.write(v)
        }
        baos.write(byteArrayOf(0x00, 0x00, 0x09))
        return baos.toByteArray()
    }

    private fun invoke(csid: Int, txn: Double, vararg parts: ByteArray) {
        val baos = ByteArrayOutputStream()
        parts.forEach { baos.write(it) }
        synchronized(this) {
            writeChunk(0, csid, 0, 0x14, 0, baos.toByteArray())
        }
    }

    private fun sendConnect(p: ParsedUrl) {
        val obj = amfObject(listOf(
            "app" to amfString(p.app),
            "flashVer" to amfString("FMLE/3.0 (compatible; XiaoGuYun)"),
            "tcUrl" to amfString(url),
            "fpad" to amfBool(false),
            "capabilities" to amfNumber(15.0),
            "audioCodecs" to amfNumber(3575.0),
            "videoCodecs" to amfNumber(252.0),
        ))
        invoke(3, 0.0, amfString("connect"), amfNumber(0.0), obj)
    }

    private fun sendCreateStream() {
        invoke(3, 1.0, amfString("createStream"), amfNumber(1.0), amfNull())
    }

    private fun sendPublish(p: ParsedUrl) {
        val baos = ByteArrayOutputStream()
        baos.write(amfString("publish")); baos.write(amfNumber(0.0)); baos.write(amfNull())
        baos.write(amfString(p.streamKey)); baos.write(amfString("live"))
        synchronized(this) {
            writeChunk(0, 8, 0, 0x14, streamId, baos.toByteArray())
        }
    }

    // ---- chunk writer (fmt 0 + fmt 3 continuations) ----
    private fun writeChunk(fmt: Int, csid: Int, timestamp: Int, msgType: Int, streamId: Int, payload: ByteArray) {
        val o = out ?: return
        var offset = 0
        var first = true
        while (offset < payload.size || first) {
            val n = min(outChunkSize, payload.size - offset)
            if (first) {
                // Basic header: 1 byte (csid < 64).
                o.write((fmt shl 6) or csid)
                if (fmt == 0) {
                    val ts = if (timestamp >= 0xFFFFFF) 0xFFFFFF else timestamp
                    o.write(ts shr 16); o.write((ts shr 8) and 0xFF); o.write(ts and 0xFF)
                    o.write(payload.size shr 16); o.write((payload.size shr 8) and 0xFF); o.write(payload.size and 0xFF)
                    o.write(msgType)
                    o.write(streamId and 0xFF); o.write((streamId shr 8) and 0xFF)
                    o.write((streamId shr 16) and 0xFF); o.write((streamId shr 24) and 0xFF)
                    if (timestamp >= 0xFFFFFF) {
                        o.write((timestamp shr 24) and 0xFF); o.write((timestamp shr 16) and 0xFF)
                        o.write((timestamp shr 8) and 0xFF); o.write(timestamp and 0xFF)
                    }
                }
                first = false
            } else {
                // Continuation chunk: fmt 3, basic header only.
                o.write((3 shl 6) or csid)
                if (timestamp >= 0xFFFFFF) {
                    o.write((timestamp shr 24) and 0xFF); o.write((timestamp shr 16) and 0xFF)
                    o.write((timestamp shr 8) and 0xFF); o.write(timestamp and 0xFF)
                }
            }
            if (n > 0) o.write(payload, offset, n)
            offset += n
            if (n == 0) break
        }
        o.flush()
    }

    // ---- reader: parse server messages, answer pings, track connect/createStream ----
    private fun startReader(input: InputStream) {
        readerThread = Thread({
            try {
                val headerState = HashMap<Int, ChunkHeader>()
                val pending = HashMap<Int, ByteArrayOutputStream>()
                val pendingLen = HashMap<Int, Int>()
                val pendingType = HashMap<Int, Int>()
                val buf1 = ByteArray(1)
                while (running.get()) {
                    if (input.read(buf1) < 0) break
                    val b0 = buf1[0].toInt() and 0xFF
                    val fmt = b0 shr 6
                    var csid = b0 and 0x3F
                    if (csid == 0) {
                        val extra = readFully(input, 1); csid = (extra[0].toInt() and 0xFF) + 64
                    } else if (csid == 1) {
                        val extra = readFully(input, 2)
                        csid = ((extra[0].toInt() and 0xFF)) + ((extra[1].toInt() and 0xFF) shl 8) + 64
                    }
                    val prev = headerState[csid]
                    var timestamp = 0; var msgLen = 0; var msgType = 0; var msgStream = 0
                    var extTs = -1
                    when (fmt) {
                        0 -> {
                            val h = readFully(input, 11)
                            timestamp = ((h[0].toInt() and 0xFF) shl 16) or ((h[1].toInt() and 0xFF) shl 8) or (h[2].toInt() and 0xFF)
                            msgLen = ((h[3].toInt() and 0xFF) shl 16) or ((h[4].toInt() and 0xFF) shl 8) or (h[5].toInt() and 0xFF)
                            msgType = h[6].toInt() and 0xFF
                            msgStream = (h[7].toInt() and 0xFF) or ((h[8].toInt() and 0xFF) shl 8) or ((h[9].toInt() and 0xFF) shl 16) or ((h[10].toInt() and 0xFF) shl 24)
                            if (timestamp == 0xFFFFFF) { val e = readFully(input, 4); extTs = ((e[0].toInt() and 0xFF) shl 24) or ((e[1].toInt() and 0xFF) shl 16) or ((e[2].toInt() and 0xFF) shl 8) or (e[3].toInt() and 0xFF); timestamp = extTs }
                            headerState[csid] = ChunkHeader(timestamp, msgLen, msgType, msgStream)
                            pending[csid] = ByteArrayOutputStream(); pendingLen[csid] = msgLen; pendingType[csid] = msgType
                        }
                        1 -> {
                            val h = readFully(input, 7)
                            timestamp = ((h[0].toInt() and 0xFF) shl 16) or ((h[1].toInt() and 0xFF) shl 8) or (h[2].toInt() and 0xFF)
                            msgLen = ((h[3].toInt() and 0xFF) shl 16) or ((h[4].toInt() and 0xFF) shl 8) or (h[5].toInt() and 0xFF)
                            msgType = h[6].toInt() and 0xFF
                            msgStream = prev?.streamId ?: 0
                            if (timestamp == 0xFFFFFF) { val e = readFully(input, 4); timestamp = ((e[0].toInt() and 0xFF) shl 24) or ((e[1].toInt() and 0xFF) shl 16) or ((e[2].toInt() and 0xFF) shl 8) or (e[3].toInt() and 0xFF) }
                            headerState[csid] = ChunkHeader(timestamp, msgLen, msgType, msgStream)
                            pending[csid] = ByteArrayOutputStream(); pendingLen[csid] = msgLen; pendingType[csid] = msgType
                        }
                        2 -> {
                            val h = readFully(input, 3)
                            timestamp = ((h[0].toInt() and 0xFF) shl 16) or ((h[1].toInt() and 0xFF) shl 8) or (h[2].toInt() and 0xFF)
                            if (timestamp == 0xFFFFFF) { val e = readFully(input, 4); timestamp = ((e[0].toInt() and 0xFF) shl 24) or ((e[1].toInt() and 0xFF) shl 16) or ((e[2].toInt() and 0xFF) shl 8) or (e[3].toInt() and 0xFF) }
                            msgLen = prev?.length ?: 0; msgType = prev?.type ?: 0; msgStream = prev?.streamId ?: 0
                            headerState[csid] = ChunkHeader(timestamp, msgLen, msgType, msgStream)
                            pending[csid] = ByteArrayOutputStream(); pendingLen[csid] = msgLen; pendingType[csid] = msgType
                        }
                        else -> {
                            val p = prev ?: continue
                            if (p.timestamp == 0xFFFFFF) { val e = readFully(input, 4); extTs = 0 }
                            msgLen = p.length; msgType = p.type; msgStream = p.streamId
                        }
                    }
                    val total = pendingLen[csid] ?: continue
                    val acc = pending.getOrPut(csid) { ByteArrayOutputStream() }
                    val already = acc.size()
                    val want = min(outChunkSize, total - already)
                    if (want > 0) {
                        val chunk = readFully(input, want)
                        acc.write(chunk)
                    }
                    if (acc.size() >= total) {
                        val payload = acc.toByteArray()
                        pending.remove(csid); pendingLen.remove(csid)
                        handleServerMessage(pendingType[csid] ?: msgType, payload)
                    }
                }
            } catch (e: Exception) {
                // v1.2.3: a mid-talk server close used to fail silently — the
                // UI kept showing "对讲中" while every frame was dropped.
                if (running.get()) {
                    lastError = "RTMP 连接断开: ${e.message}"
                    DebugLog.log("TALK", lastError!!)
                }
            }
        }, "rtmp-reader").apply { isDaemon = true; start() }
    }

    private data class ChunkHeader(val timestamp: Int, val length: Int, val type: Int, val streamId: Int)

    private fun handleServerMessage(type: Int, payload: ByteArray) {
        when (type) {
            0x01 -> if (payload.size >= 4) { // SetChunkSize
                outChunkSize = ((payload[0].toInt() and 0xFF) shl 24) or ((payload[1].toInt() and 0xFF) shl 16) or ((payload[2].toInt() and 0xFF) shl 8) or (payload[3].toInt() and 0xFF)
            }
            0x04 -> if (payload.size >= 6) { // User control: event 6 = ping request -> reply event 7.
                val event = ((payload[0].toInt() and 0xFF) shl 8) or (payload[1].toInt() and 0xFF)
                if (event == 6) {
                    val ts = payload.copyOfRange(2, 6)
                    val pong = ByteArray(6)
                    pong[0] = 0; pong[1] = 7
                    ts.copyInto(pong, 2)
                    try { synchronized(this) { writeChunk(0, 2, 0, 0x04, 0, pong) } } catch (_: Exception) {}
                }
            }
            0x14 -> { // AMF0 command: _result / onStatus / _error
                try {
                    val reader = AmfReader(payload)
                    val cmd = reader.readStringOrNull()
                    if (cmd == "_result") {
                        val txn = reader.readNumberOrNull()
                        reader.readValue() // command object / null
                        if (txn == 0.0) { connectOk = true; connectLatch.countDown() }
                        else if (txn == 1.0) {
                            val info = reader.readNumberOrNull()
                            if (info != null) streamId = info.toInt()
                            createStreamLatch.countDown()
                        }
                    } else if (cmd == "_error") {
                        if (connectLatch.count > 0) connectLatch.countDown()
                        if (createStreamLatch.count > 0) createStreamLatch.countDown()
                    } else if (cmd == "onStatus") {
                        // onStatus <txn:0> <null> <object{level,code,description}>
                        reader.readNumberOrNull()
                        reader.readValue()
                        val fields = reader.readStringFields()
                        val level = fields["level"]
                        val code = fields["code"]
                        val desc = fields["description"]
                        DebugLog.log("TALK", "RTMP onStatus level=$level code=$code desc=$desc")
                        if (level == "error") {
                            lastError = "RTMP 发布被拒: $code $desc"
                            running.set(false)
                            try { socket?.close() } catch (_: Exception) {}
                        } else if (level == "status") {
                            publishAccepted = true
                        }
                    }
                } catch (_: Exception) { /* ignore malformed command */ }
            }
        }
    }

    /** Minimal AMF0 reader: only what _result parsing needs. */
    private class AmfReader(private val data: ByteArray) {
        private var pos = 0
        fun readStringOrNull(): String? {
            if (pos >= data.size) return null
            if (data[pos] != 0x02.toByte()) return null
            pos++
            val len = ((data[pos].toInt() and 0xFF) shl 8) or (data[pos + 1].toInt() and 0xFF)
            pos += 2
            val s = String(data, pos, len, Charsets.UTF_8)
            pos += len
            return s
        }
        fun readNumberOrNull(): Double? {
            if (pos >= data.size) return null
            if (data[pos] != 0x00.toByte()) return null
            pos++
            val v = ByteBuffer.wrap(data, pos, 8).order(ByteOrder.BIG_ENDIAN).double
            pos += 8
            return v
        }
        fun readValue() {
            if (pos >= data.size) return
            when (data[pos]) {
                0x00.toByte() -> { pos += 9 }
                0x01.toByte() -> { pos += 2 }
                0x02.toByte() -> readStringOrNull()
                0x03.toByte() -> { // object: skip until 00 00 09
                    pos++
                    while (pos + 2 < data.size) {
                        val kLen = ((data[pos].toInt() and 0xFF) shl 8) or (data[pos + 1].toInt() and 0xFF)
                        pos += 2
                        if (kLen == 0) { pos++; break }
                        pos += kLen
                        readValue()
                    }
                }
                0x05.toByte() -> { pos += 1 }
                0x08.toByte() -> { // ECMA array
                    pos += 5
                    while (pos + 2 < data.size) {
                        val kLen = ((data[pos].toInt() and 0xFF) shl 8) or (data[pos + 1].toInt() and 0xFF)
                        pos += 2
                        if (kLen == 0) { pos++; break }
                        pos += kLen
                        readValue()
                    }
                }
                else -> { pos++ }
            }
        }

        /**
         * Reads the STRING fields of the AMF0 object at the current position
         * (onStatus info object: level/code/description are all strings).
         * Non-string values are skipped. Returns an empty map if the next
         * byte is not an object marker.
         */
        fun readStringFields(): Map<String, String> {
            val out = HashMap<String, String>()
            if (pos >= data.size || data[pos] != 0x03.toByte()) return out
            pos++ // object marker
            while (pos + 2 < data.size) {
                val kLen = ((data[pos].toInt() and 0xFF) shl 8) or (data[pos + 1].toInt() and 0xFF)
                pos += 2
                if (kLen == 0) { pos++; break } // 00 00 09 end marker
                val key = String(data, pos, kLen, Charsets.UTF_8)
                pos += kLen
                if (pos < data.size && data[pos] == 0x02.toByte()) {
                    out[key] = readStringOrNull() ?: ""
                } else {
                    readValue()
                }
            }
            return out
        }
    }
}
