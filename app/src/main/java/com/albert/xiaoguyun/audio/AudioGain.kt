package com.albert.xiaoguyun.audio

import kotlin.math.abs
import kotlin.math.sqrt

/**
 * Small software AGC for the intercom uplink.
 *
 * The original app captures through the native WebRTC engine, whose APM
 * includes automatic gain control. Our pure-Java AudioRecord path has no
 * such stage, so quiet talkers arrive at the camera side as a faint
 * murmur. This class normalises each 20 ms frame to a telephone-grade
 * loudness while avoiding the two classic AGC artefacts:
 *
 *  - noise pumping: a gate freezes/ramps the gain down when the frame RMS
 *    sits under [gateRms] (room-noise floor), so silence is not amplified
 *    into a hiss;
 *  - clipping distortion: a soft limiter squeezes samples above
 *    [limiterStart] instead of hard-clipping them.
 *
 * State is single-threaded: call [process] from the recorder thread only.
 */
class AudioGain {
    // Target frame RMS in 16-bit PCM units (~ -20.8 dBFS, comfortably loud
    // for G.711 A-law which only carries 13 bits anyway).
    private val targetRms = 2800.0
    // Below this RMS (~ -48 dBFS) the frame is treated as silence/noise.
    // Measured room floor on the target tablet is ~15-20, so soft speech
    // (frame RMS ~150+) still opens the gate.
    private val gateRms = 120.0
    private val maxGain = 12.0
    private val minGain = 1.0
    // Attack ~100 ms (5 frames), release ~1.2 s (60 frames) at 20 ms/frame.
    private val attackCoeff = 0.45
    private val releaseCoeff = 0.04
    private val limiterStart = 26000

    private var gain = 1.0

    /** Peak |sample| measured AFTER gain, for diagnostics. */
    var lastOutPeak = 0
        private set

    /** RMS of the frame BEFORE gain, for diagnostics. */
    var lastInRms = 0.0
        private set

    fun process(pcm: ShortArray, len: Int = pcm.size) {
        var sumSq = 0.0
        for (i in 0 until len) {
            val v = pcm[i].toDouble()
            sumSq += v * v
        }
        val rms = sqrt(sumSq / len)
        lastInRms = rms

        val wanted = if (rms < gateRms) {
            // Gate: drift back to unity instead of amplifying the noise.
            minGain
        } else {
            (targetRms / rms).coerceIn(minGain, maxGain)
        }
        val coeff = if (wanted > gain) attackCoeff else releaseCoeff
        gain += (wanted - gain) * coeff

        var outPeak = 0
        for (i in 0 until len) {
            var scaled = pcm[i] * gain
            // Soft limiter: linear up to limiterStart, then compress toward
            // the 16-bit ceiling instead of clipping square waves.
            if (scaled > limiterStart) {
                scaled = limiterStart + (32767 - limiterStart) *
                    (1 - Math.exp(-(scaled - limiterStart) / (32767 - limiterStart).toDouble()))
            } else if (scaled < -limiterStart) {
                val pos = -scaled
                scaled = -(limiterStart + (32767 - limiterStart) *
                    (1 - Math.exp(-(pos - limiterStart) / (32767 - limiterStart).toDouble())))
            }
            val s = scaled.toInt().coerceIn(-32768, 32767).toShort()
            pcm[i] = s
            val a = abs(s.toInt())
            if (a > outPeak) outPeak = a
        }
        lastOutPeak = outPeak
    }
}
