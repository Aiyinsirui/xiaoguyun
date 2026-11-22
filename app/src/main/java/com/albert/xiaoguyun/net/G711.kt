package com.albert.xiaoguyun.net

/**
 * G.711 A-law codec, pure-Kotlin port of the original app's
 * `util/G711Code.java` (linear2alaw / alaw2linear), which the original
 * `DGPlayerUtil.n_pcmToG711a` native call mirrors.
 * 8 kHz mono PCM16 -> A-law bytes for the intercom uplink.
 */
object G711 {
    private val SEG_END = shortArrayOf(255, 511, 1023, 2047, 4095, 8191, 16383, Short.MAX_VALUE)

    private fun search(v: Int, table: ShortArray, size: Int): Int {
        var i = 0
        while (i < size) {
            if (v <= table[i]) return i
            i++
        }
        return size
    }

    fun linear2alaw(input: Short): Byte {
        var s = input.toInt()
        val c: Int
        if (s >= 0) {
            c = 213
        } else {
            s = -s - 1
            c = 85 // 'U'
            if (s < 0) s = Short.MAX_VALUE.toInt()
        }
        val seg = search(s, SEG_END, 8)
        val out: Int = if (seg >= 8) {
            c xor 127
        } else {
            val mantissa = if (seg < 2) s shr 4 else s shr (seg + 3)
            ((mantissa and 15) or (seg shl 4)) xor c
        }
        return out.toByte()
    }

    /** Encodes [count] PCM16 samples starting at [offset] into A-law bytes. */
    fun encode(pcm: ShortArray, offset: Int = 0, count: Int = pcm.size - offset): ByteArray {
        val out = ByteArray(count)
        for (i in 0 until count) out[i] = linear2alaw(pcm[offset + i])
        return out
    }

    fun alaw2linear(b: Byte): Short {
        var v = (b.toInt() xor 85) and 0xFF
        val sign = v and 128
        val seg = (v and 112) shr 4
        var mantissa = (v and 15) shl 4
        mantissa = when (seg) {
            0 -> mantissa + 8
            1 -> mantissa + 264
            else -> (mantissa + 264) shl (seg - 1)
        }
        return if (sign != 0) mantissa.toShort() else (-mantissa).toShort()
    }
}
