package com.albert.xiaoguyun.player

import com.albert.xiaoguyun.DebugLog
import com.albert.xiaoguyun.net.RtmpPublisher
import java.io.BufferedOutputStream
import java.io.File
import java.io.FileOutputStream
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
 * Records the live RTMP stream straight to an .flv file (stream copy:
 * the camera's H.265 + G.711 A-law, as sent — no re-encode, no decode).
 *
 * v1.2.2 replaces [VlcRecorder]: VLC 3.x cannot even play this stream
 * (it is why playback moved to ExoPlayer in v1.1.6), so its sout
 * recording produced a 0-byte file every time ("录像文件为空，sout
 * 录制可能未成功", user report 2026-11-23). This client speaks RTMP
 * itself (same handshake/AMF/chunk code as [RtmpPublisher], but `play`
 * instead of `publish`) and writes every media message (audio 0x08,
 * video 0x09, script 0x12) as an FLV tag. The result plays in VLC /
 * ffplay on a PC.
 *
 * The FLV header is written lazily on the first media message, so a
 * file only exists once the stream actually started.
 */
class RtmpRecorder(private val url: String, private val outFile: File) {

    private var socket: Socket? = null
    private var out: OutputStream? = null
    private var readerThread: Thread? = null
    private val running = AtomicBoolean(false)
    private var outChunkSize = 128
    private var streamId = 0
    private val connectLatch = CountDownLatch(1)
    private val createStreamLatch = CountDownLatch(1)
    @Volatile private var connectOk = false
    @Volatile var lastError: String? = null
        private set

    // FLV writing (guarded by the reader thread only).
    private var fileOut: BufferedOutputStream? = null
    private var headerWritten = false
    @Volatile var bytesWritten = 0L
        private set
    @Volatile var mediaMessages = 0
        private set
    // All RTMP messages seen (including protocol/control), for diagnostics.
    @Volatile private var totalMessages = 0
    val isRecording: Boolean get() = running.get()

    // Canonical RTMP split, computed in start(): app is the FIRST path
    // segment ("video"); the play name is everything after it
    // ("<sn>/1"). RtmpPublisher.parse splits off only the last segment,
    // which the relay tolerates for publish but rejects for play with
    // NetStream.Play.StreamNotFound (details showed "<sn>/1/1").
    private var connectApp = ""
    private var tcUrl = ""
    private var playName = ""

    /** Connects + handshakes + plays. Returns true when recording started. */
    fun start(): Boolean {
        val parsed = RtmpPublisher.parse(url) ?: run { lastError = "RTMP 地址解析失败"; return false }
        val segs = url.removePrefix("rtmp://").substringAfter('/', "")
            .split('/').filter { it.isNotEmpty() }
        if (segs.size < 2) { lastError = "RTMP 路径段不足"; return false }
        connectApp = segs.first()
        playName = segs.drop(1).joinToString("/")
        tcUrl = "rtmp://${parsed.host}:${parsed.port}/$connectApp"
        return try {
            val sock = Socket()
            sock.soTimeout = 0 // blocking reads; stop() closes the socket
            sock.connect(InetSocketAddress(parsed.host, parsed.port), 5000)
            socket = sock
            out = sock.getOutputStream()
            running.set(true)
            handshake(sock.getInputStream())
            startReader(sock.getInputStream())
            sendConnect()
            if (!connectLatch.await(5, TimeUnit.SECONDS) || !connectOk) {
                lastError = "RTMP connect 无响应"; stop(); return false
            }
            sendCreateStream()
            if (!createStreamLatch.await(5, TimeUnit.SECONDS) || streamId == 0) {
                lastError = "RTMP createStream 无响应"; stop(); return false
            }
            sendPlay()
            DebugLog.log("REC", "play 已发送 app=$connectApp name=$playName streamId=$streamId，等待媒体消息…")
            true
        } catch (e: Exception) {
            lastError = e.message ?: "RTMP 连接失败"
            stop()
            false
        }
    }

    /** Stops recording and returns the file (null if nothing was written). */
    fun stop(): File? {
        DebugLog.log("REC", "停止录像 媒体消息数=$mediaMessages 字节=$bytesWritten 头已写=$headerWritten")
        running.set(false)
        try { socket?.close() } catch (_: Exception) {}
        try { readerThread?.join(1000) } catch (_: Exception) {}
        socket = null; out = null
        try { fileOut?.flush(); fileOut?.close() } catch (_: Exception) {}
        fileOut = null
        return if (headerWritten && outFile.exists() && outFile.length() > 0) outFile else null
    }

    fun release() { stop() }

    // ---- FLV writing ----

    private fun ensureHeader() {
        if (headerWritten) return
        outFile.parentFile?.mkdirs()
        fileOut = BufferedOutputStream(FileOutputStream(outFile))
        // FLV header: "FLV", version 1, flags 0x05 (audio+video), offset 9.
        val header = byteArrayOf(
            0x46, 0x4C, 0x56, 0x01, 0x05,
            0x00, 0x00, 0x00, 0x09,
            0x00, 0x00, 0x00, 0x00, // previous-tag-size = 0
        )
        fileOut?.write(header)
        bytesWritten += header.size
        headerWritten = true
    }

    /** Writes one RTMP media message as an FLV tag. */
    private fun writeMedia(type: Int, timestamp: Int, payload: ByteArray) {
        try {
            ensureHeader()
            val f = fileOut ?: return
            val ts = timestamp and 0xFFFFFFFF.toInt()
            val tagHeader = ByteArray(11)
            tagHeader[0] = type.toByte()
            tagHeader[1] = ((payload.size shr 16) and 0xFF).toByte()
            tagHeader[2] = ((payload.size shr 8) and 0xFF).toByte()
            tagHeader[3] = (payload.size and 0xFF).toByte()
            tagHeader[4] = ((ts shr 16) and 0xFF).toByte()
            tagHeader[5] = ((ts shr 8) and 0xFF).toByte()
            tagHeader[6] = (ts and 0xFF).toByte()
            tagHeader[7] = ((ts shr 24) and 0xFF).toByte() // extended timestamp
            tagHeader[8] = 0; tagHeader[9] = 0; tagHeader[10] = 0 // streamID
            f.write(tagHeader)
            f.write(payload)
            val prevSize = 11 + payload.size
            f.write(byteArrayOf(
                ((prevSize shr 24) and 0xFF).toByte(),
                ((prevSize shr 16) and 0xFF).toByte(),
                ((prevSize shr 8) and 0xFF).toByte(),
                (prevSize and 0xFF).toByte(),
            ))
            bytesWritten += 11 + payload.size + 4
            mediaMessages++
        } catch (_: Exception) { /* disk full / file gone: stop() closes */ }
    }

    // ---- RTMP: handshake / AMF0 / chunk writer (same shape as RtmpPublisher) ----

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

    private fun handshake(input: InputStream) {
        val c1 = ByteArray(1536)
        Random.nextBytes(c1)
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
        o.write(s, 1, 1536)
        o.flush()
    }

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
        val baos = java.io.ByteArrayOutputStream()
        baos.write(0x03)
        for ((k, v) in props) {
            val kb = k.toByteArray(Charsets.UTF_8)
            baos.write(kb.size shr 8); baos.write(kb.size and 0xFF); baos.write(kb); baos.write(v)
        }
        baos.write(byteArrayOf(0x00, 0x00, 0x09))
        return baos.toByteArray()
    }

    private fun invoke(csid: Int, txn: Double, vararg parts: ByteArray) {
        val baos = java.io.ByteArrayOutputStream()
        parts.forEach { baos.write(it) }
        synchronized(this) {
            writeChunk(0, csid, 0, 0x14, 0, baos.toByteArray())
        }
    }

    private fun sendConnect() {
        val obj = amfObject(listOf(
            "app" to amfString(connectApp),
            "flashVer" to amfString("FMLE/3.0 (compatible; XiaoGuYun)"),
            "tcUrl" to amfString(tcUrl),
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

    /** play(playName, start=-2 live, duration=-1, reset=true). */
    private fun sendPlay() {
        val baos = java.io.ByteArrayOutputStream()
        baos.write(amfString("play")); baos.write(amfNumber(0.0)); baos.write(amfNull())
        baos.write(amfString(playName))
        baos.write(amfNumber(-2.0)); baos.write(amfNumber(-1.0)); baos.write(amfBool(true))
        synchronized(this) {
            writeChunk(0, 8, 0, 0x14, streamId, baos.toByteArray())
        }
    }

    private fun writeChunk(fmt: Int, csid: Int, timestamp: Int, msgType: Int, streamId: Int, payload: ByteArray) {
        val o = out ?: return
        var offset = 0
        var first = true
        while (offset < payload.size || first) {
            val n = min(outChunkSize, payload.size - offset)
            if (first) {
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

    // ---- reader: reassemble chunks, write media to the FLV file ----

    private fun startReader(input: InputStream) {
        readerThread = Thread({
            try {
                val headerState = HashMap<Int, ChunkHeader>()
                val pending = HashMap<Int, java.io.ByteArrayOutputStream>()
                val pendingLen = HashMap<Int, Int>()
                val pendingType = HashMap<Int, Int>()
                val pendingTs = HashMap<Int, Int>()
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
                    when (fmt) {
                        0 -> {
                            val h = readFully(input, 11)
                            timestamp = ((h[0].toInt() and 0xFF) shl 16) or ((h[1].toInt() and 0xFF) shl 8) or (h[2].toInt() and 0xFF)
                            msgLen = ((h[3].toInt() and 0xFF) shl 16) or ((h[4].toInt() and 0xFF) shl 8) or (h[5].toInt() and 0xFF)
                            msgType = h[6].toInt() and 0xFF
                            msgStream = (h[7].toInt() and 0xFF) or ((h[8].toInt() and 0xFF) shl 8) or ((h[9].toInt() and 0xFF) shl 16) or ((h[10].toInt() and 0xFF) shl 24)
                            if (timestamp == 0xFFFFFF) { val e = readFully(input, 4); timestamp = ((e[0].toInt() and 0xFF) shl 24) or ((e[1].toInt() and 0xFF) shl 16) or ((e[2].toInt() and 0xFF) shl 8) or (e[3].toInt() and 0xFF) }
                            headerState[csid] = ChunkHeader(timestamp, msgLen, msgType, msgStream)
                            pending[csid] = java.io.ByteArrayOutputStream(); pendingLen[csid] = msgLen; pendingType[csid] = msgType; pendingTs[csid] = timestamp
                        }
                        1 -> {
                            val h = readFully(input, 7)
                            timestamp = ((h[0].toInt() and 0xFF) shl 16) or ((h[1].toInt() and 0xFF) shl 8) or (h[2].toInt() and 0xFF)
                            msgLen = ((h[3].toInt() and 0xFF) shl 16) or ((h[4].toInt() and 0xFF) shl 8) or (h[5].toInt() and 0xFF)
                            msgType = h[6].toInt() and 0xFF
                            msgStream = prev?.streamId ?: 0
                            if (timestamp == 0xFFFFFF) { val e = readFully(input, 4); timestamp = ((e[0].toInt() and 0xFF) shl 24) or ((e[1].toInt() and 0xFF) shl 16) or ((e[2].toInt() and 0xFF) shl 8) or (e[3].toInt() and 0xFF) }
                            headerState[csid] = ChunkHeader(timestamp, msgLen, msgType, msgStream)
                            pending[csid] = java.io.ByteArrayOutputStream(); pendingLen[csid] = msgLen; pendingType[csid] = msgType; pendingTs[csid] = timestamp
                        }
                        2 -> {
                            val h = readFully(input, 3)
                            timestamp = ((h[0].toInt() and 0xFF) shl 16) or ((h[1].toInt() and 0xFF) shl 8) or (h[2].toInt() and 0xFF)
                            if (timestamp == 0xFFFFFF) { val e = readFully(input, 4); timestamp = ((e[0].toInt() and 0xFF) shl 24) or ((e[1].toInt() and 0xFF) shl 16) or ((e[2].toInt() and 0xFF) shl 8) or (e[3].toInt() and 0xFF) }
                            msgLen = prev?.length ?: 0; msgType = prev?.type ?: 0; msgStream = prev?.streamId ?: 0
                            headerState[csid] = ChunkHeader(timestamp, msgLen, msgType, msgStream)
                            pending[csid] = java.io.ByteArrayOutputStream(); pendingLen[csid] = msgLen; pendingType[csid] = msgType; pendingTs[csid] = timestamp
                        }
                        else -> {
                            val p = prev ?: continue
                            if (p.timestamp == 0xFFFFFF) { readFully(input, 4) }
                            timestamp = p.timestamp
                            msgLen = p.length; msgType = p.type; msgStream = p.streamId
                        }
                    }
                    val total = pendingLen[csid] ?: continue
                    val acc = pending.getOrPut(csid) { java.io.ByteArrayOutputStream() }
                    val already = acc.size()
                    val want = min(outChunkSize, total - already)
                    if (want > 0) {
                        val chunk = readFully(input, want)
                        acc.write(chunk)
                    }
                    if (acc.size() >= total) {
                        val payload = acc.toByteArray()
                        val type = pendingType[csid] ?: msgType
                        val ts = pendingTs[csid] ?: timestamp
                        pending.remove(csid); pendingLen.remove(csid); pendingType.remove(csid); pendingTs.remove(csid)
                        totalMessages++
                        if (totalMessages <= 40 || type == 0x14) {
                            DebugLog.log("REC", "收到消息 type=0x${type.toString(16)} len=${payload.size} ts=$ts csid=$csid")
                        }
                        handleServerMessage(type, ts, payload)
                    }
                }
            } catch (e: Exception) {
                DebugLog.log("REC", "读取线程退出：${e.javaClass.simpleName} ${e.message}")
            }
            DebugLog.log("REC", "读取线程结束 running=${running.get()} 媒体消息=$mediaMessages")
        }, "rtmp-recorder").apply { isDaemon = true; start() }
    }

    private data class ChunkHeader(val timestamp: Int, val length: Int, val type: Int, val streamId: Int)

    private fun handleServerMessage(type: Int, timestamp: Int, payload: ByteArray) {
        when (type) {
            0x01 -> if (payload.size >= 4) { // SetChunkSize
                outChunkSize = ((payload[0].toInt() and 0xFF) shl 24) or ((payload[1].toInt() and 0xFF) shl 16) or ((payload[2].toInt() and 0xFF) shl 8) or (payload[3].toInt() and 0xFF)
            }
            0x04 -> if (payload.size >= 6) { // User control: event 6 = ping -> reply event 7.
                val event = ((payload[0].toInt() and 0xFF) shl 8) or (payload[1].toInt() and 0xFF)
                if (event == 6) {
                    val ts = payload.copyOfRange(2, 6)
                    val pong = ByteArray(6)
                    pong[0] = 0; pong[1] = 7
                    ts.copyInto(pong, 2)
                    try { synchronized(this) { writeChunk(0, 2, 0, 0x04, 0, pong) } } catch (_: Exception) {}
                }
            }
            0x08, 0x09, 0x12 -> writeMedia(type, timestamp, payload) // audio / video / script data
            0x14 -> { // AMF0 command: _result / onStatus / ...
                try {
                    val reader = AmfReader(payload)
                    val cmd = reader.readStringOrNull()
                    // onStatus carries an AMF object with level/code/description.
                    if (cmd == "onStatus" || cmd == "onMetaData" || cmd == "_error") {
                        DebugLog.log("REC", "AMF 命令: $cmd payload=${payload.size}B 文本=${extractAmfStrings(payload)}")
                    }
                    if (cmd == "_result") {
                        val txn = reader.readNumberOrNull()
                        reader.readValue()
                        if (txn == 0.0) { connectOk = true; connectLatch.countDown(); DebugLog.log("REC", "connect _result 收到") }
                        else if (txn == 1.0) {
                            val info = reader.readNumberOrNull()
                            if (info != null) streamId = info.toInt()
                            DebugLog.log("REC", "createStream _result streamId=$streamId")
                            createStreamLatch.countDown()
                        }
                    } else if (cmd == "_error") {
                        if (connectLatch.count > 0) connectLatch.countDown()
                        if (createStreamLatch.count > 0) createStreamLatch.countDown()
                    }
                } catch (_: Exception) { /* ignore malformed command */ }
            }
        }
    }

    /** Diagnostic only: pulls readable AMF0 string runs out of a payload. */
    private fun extractAmfStrings(data: ByteArray): String {
        val out = StringBuilder()
        var i = 0
        while (i + 2 < data.size) {
            val len = ((data[i].toInt() and 0xFF) shl 8) or (data[i + 1].toInt() and 0xFF)
            if (len in 2..64 && i + 2 + len <= data.size) {
                val s = String(data, i + 2, len, Charsets.UTF_8)
                if (s.all { it.code in 0x20..0x7E }) {
                    if (out.isNotEmpty()) out.append(" | ")
                    out.append(s)
                    i += 2 + len
                    continue
                }
            }
            i++
        }
        return out.toString().ifEmpty { "(无字符串)" }
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
                0x03.toByte() -> {
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
                0x08.toByte() -> {
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
    }
}
