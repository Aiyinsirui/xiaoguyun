package com.albert.xiaoguyun.player

import androidx.media3.common.C
import androidx.media3.common.Format
import androidx.media3.common.MimeTypes
import androidx.media3.common.util.ParsableByteArray
import androidx.media3.common.util.UnstableApi
import androidx.media3.container.NalUnitUtil
import androidx.media3.extractor.AvcConfig
import androidx.media3.extractor.Extractor
import androidx.media3.extractor.ExtractorOutput
import androidx.media3.extractor.ExtractorInput
import androidx.media3.extractor.ExtractorsFactory
import androidx.media3.extractor.HevcConfig
import androidx.media3.extractor.PositionHolder
import androidx.media3.extractor.SeekMap
import androidx.media3.extractor.TrackOutput

/**
 * FLV extractor that also handles what stock Media3 / VLC 3.x cannot:
 *
 * - legacy HEVC in FLV (video codec id 12, same layout as AVC id 7);
 * - enhanced RTMP (veovera enhanced-rtmp-v1): video tag byte 0 bit 7 set,
 *   low nibble = PacketType (0 = SequenceStart, 1 = CodedFrames,
 *   2 = SequenceEnd), followed by a 4-byte FourCC ('avc1' / 'hvc1') and
 *   then the decoder configuration record (SequenceStart) or length-
 *   prefixed NAL units (CodedFrames, no composition-time field).
 *
 * Reference: FFmpeg libavformat/flvdec.c (flv_read_packet), enhanced-rtmp
 * spec. Audio tags are skipped: this camera's audio is G.711, which
 * Media3 cannot decode from FLV; video-only keeps live working first.
 * Local files do NOT use this extractor (default extractors handle them).
 */
@UnstableApi
class FlvEnhancedExtractor : Extractor {

    companion object {
        val FACTORY: ExtractorsFactory = ExtractorsFactory { arrayOf(FlvEnhancedExtractor()) }

        const val STATE_READING_FLV_HEADER = 1
        const val STATE_SKIPPING_TO_TAG_HEADER = 2
        const val STATE_READING_TAG_HEADER = 3
        const val STATE_READING_TAG_DATA = 4

        const val FLV_HEADER_SIZE = 9
        const val FLV_TAG_HEADER_SIZE = 11

        const val TAG_TYPE_AUDIO = 8
        const val TAG_TYPE_VIDEO = 9
        const val TAG_TYPE_SCRIPT_DATA = 18

        const val FLV_TAG = 0x00464C56

        const val FRAME_KEYFRAME = 1
        const val FRAME_VIDEO_INFO = 5

        const val CODEC_AVC = 7
        const val CODEC_HEVC = 12

        // Enhanced RTMP PacketType values (low nibble of the tag's first
        // byte when bit 7 is set).
        const val PKT_SEQUENCE_START = 0
        const val PKT_CODED_FRAMES = 1

        const val FOURCC_AVC1 = 0x61766331 // 'avc1'
        const val FOURCC_HVC1 = 0x68766331 // 'hvc1'
    }

    private val scratch = ParsableByteArray(4)
    private val headerBuffer = ParsableByteArray(FLV_HEADER_SIZE)
    private val tagHeaderBuffer = ParsableByteArray(FLV_TAG_HEADER_SIZE)
    private val tagData = ParsableByteArray()
    private val nalStartCode = ParsableByteArray(NalUnitUtil.NAL_START_CODE)
    private val nalLength = ParsableByteArray(4)

    private var extractorOutput: ExtractorOutput? = null
    private var state = STATE_READING_FLV_HEADER
    private var outputFirstSample = false
    private var mediaTagTimestampOffsetUs = 0L
    private var bytesToNextTagHeader = 0
    private var tagType = 0
    private var tagDataSize = 0
    private var tagTimestampUs = 0L
    private var outputSeekMap = false

    private var videoOutput: TrackOutput? = null
    private var hasOutputFormat = false
    private var hasOutputKeyframe = false
    private var nalUnitLengthFieldLength = 4
    private var isHevc = false

    override fun sniff(input: ExtractorInput): Boolean {
        input.peekFully(scratch.data, 0, 3)
        scratch.setPosition(0)
        if (scratch.readUnsignedInt24() != FLV_TAG) return false
        input.peekFully(scratch.data, 0, 2)
        scratch.setPosition(0)
        if ((scratch.readUnsignedShort() and 0xFA) != 0) return false
        input.peekFully(scratch.data, 0, 4)
        scratch.setPosition(0)
        val dataOffset = scratch.readInt()
        input.resetPeekPosition()
        input.advancePeekPosition(dataOffset)
        input.peekFully(scratch.data, 0, 4)
        scratch.setPosition(0)
        return scratch.readInt() == 0
    }

    override fun init(output: ExtractorOutput) {
        extractorOutput = output
    }

    override fun seek(position: Long, timeUs: Long) {
        if (position == 0L) {
            state = STATE_READING_FLV_HEADER
            outputFirstSample = false
            hasOutputFormat = false
            hasOutputKeyframe = false
        } else {
            state = STATE_READING_TAG_HEADER
        }
        bytesToNextTagHeader = 0
    }

    override fun release() {}

    override fun read(input: ExtractorInput, seekPosition: PositionHolder): Int {
        while (true) {
            when (state) {
                STATE_READING_FLV_HEADER -> {
                    if (!readFlvHeader(input)) return Extractor.RESULT_END_OF_INPUT
                }
                STATE_SKIPPING_TO_TAG_HEADER -> {
                    input.skipFully(bytesToNextTagHeader)
                    bytesToNextTagHeader = 0
                    state = STATE_READING_TAG_HEADER
                }
                STATE_READING_TAG_HEADER -> {
                    if (!readTagHeader(input)) return Extractor.RESULT_END_OF_INPUT
                }
                STATE_READING_TAG_DATA -> {
                    if (readTagData(input)) return Extractor.RESULT_CONTINUE
                }
                else -> throw IllegalStateException()
            }
        }
    }

    private fun readFlvHeader(input: ExtractorInput): Boolean {
        if (!input.readFully(headerBuffer.data, 0, FLV_HEADER_SIZE, true)) return false
        headerBuffer.setPosition(0)
        headerBuffer.skipBytes(4)
        val flags = headerBuffer.readUnsignedByte()
        val hasVideo = (flags and 0x01) != 0
        if (hasVideo && videoOutput == null) {
            videoOutput = extractorOutput?.track(TAG_TYPE_VIDEO, C.TRACK_TYPE_VIDEO)
        }
        extractorOutput?.endTracks()
        bytesToNextTagHeader = headerBuffer.readInt() - FLV_HEADER_SIZE + 4
        state = STATE_SKIPPING_TO_TAG_HEADER
        return true
    }

    private fun readTagHeader(input: ExtractorInput): Boolean {
        if (!input.readFully(tagHeaderBuffer.data, 0, FLV_TAG_HEADER_SIZE, true)) return false
        tagHeaderBuffer.setPosition(0)
        tagType = tagHeaderBuffer.readUnsignedByte()
        tagDataSize = tagHeaderBuffer.readUnsignedInt24()
        var ts = tagHeaderBuffer.readUnsignedInt24().toLong()
        ts = (tagHeaderBuffer.readUnsignedByte().toLong() shl 24) or ts
        tagTimestampUs = ts * 1000L
        tagHeaderBuffer.skipBytes(3) // streamId
        state = STATE_READING_TAG_DATA
        return true
    }

    private fun readTagData(input: ExtractorInput): Boolean {
        var wasSampleOutput = false
        if (tagType == TAG_TYPE_VIDEO && videoOutput != null) {
            ensureReadyForMediaOutput()
            wasSampleOutput = consumeVideoTag(prepareTagData(input))
        } else {
            // Audio / script / unknown: skip the payload unread.
            input.skipFully(tagDataSize)
        }
        if (!outputFirstSample && wasSampleOutput) {
            outputFirstSample = true
            mediaTagTimestampOffsetUs = -tagTimestampUs
        }
        bytesToNextTagHeader = 4 // previous-tag-size before the next header
        state = STATE_SKIPPING_TO_TAG_HEADER
        return wasSampleOutput
    }

    private fun prepareTagData(input: ExtractorInput): ParsableByteArray {
        if (tagDataSize > tagData.capacity()) {
            tagData.reset(ByteArray(maxOf(tagData.capacity() * 2, tagDataSize)), 0)
        } else {
            tagData.setPosition(0)
        }
        tagData.setLimit(tagDataSize)
        input.readFully(tagData.data, 0, tagDataSize)
        return tagData
    }

    private fun ensureReadyForMediaOutput() {
        if (!outputSeekMap) {
            extractorOutput?.seekMap(SeekMap.Unseekable(C.TIME_UNSET))
            outputSeekMap = true
        }
    }

    private fun currentTimestampUs(): Long =
        if (outputFirstSample) mediaTagTimestampOffsetUs + tagTimestampUs else 0L

    /**
     * Parses one video tag's payload. Returns true if a sample was output.
     * Layouts (FFmpeg flvdec.c):
     * - legacy: [frameType<<4 | codecId][pktType][cts:3][payload]
     * - enhanced (bit7 set): [frameType<<4 | 0x80 | pktType][fourcc:4][payload]
     */
    private fun consumeVideoTag(data: ParsableByteArray): Boolean {
        if (data.bytesLeft() < 1) return false
        val first = data.readUnsignedByte()
        val frameType = (first shr 4) and 0x0F
        if (frameType == FRAME_VIDEO_INFO) return false
        val enhanced = (first and 0x80) != 0
        val timeUs = currentTimestampUs()
        return if (enhanced) {
            consumeEnhanced(data, first and 0x0F, frameType, timeUs)
        } else {
            consumeLegacy(data, first and 0x0F, frameType, timeUs)
        }
    }

    private fun consumeEnhanced(
        data: ParsableByteArray, pktType: Int, frameType: Int, timeUs: Long,
    ): Boolean {
        if (data.bytesLeft() < 4) return false
        val fourcc = data.readUnsignedInt().toInt()
        val hevc = when (fourcc) {
            FOURCC_HVC1 -> true
            FOURCC_AVC1 -> false
            else -> return false // AV1 / VP9 etc.: not supported here
        }
        return when (pktType) {
            PKT_SEQUENCE_START -> {
                outputFormat(data, hevc)
                false
            }
            PKT_CODED_FRAMES -> {
                if (!hasOutputFormat || isHevc != hevc) return false
                outputCodedFrames(data, frameType, timeUs)
            }
            else -> false // SequenceEnd / metadata: ignore
        }
    }

    private fun consumeLegacy(
        data: ParsableByteArray, codecId: Int, frameType: Int, baseTimeUs: Long,
    ): Boolean {
        val hevc = when (codecId) {
            CODEC_AVC -> false
            CODEC_HEVC -> true
            else -> return false
        }
        if (data.bytesLeft() < 4) return false
        val pktType = data.readUnsignedByte()
        // Signed 24-bit composition time.
        var cts = data.readUnsignedInt24()
        if (cts and 0x800000 != 0) cts -= 0x1000000
        val timeUs = baseTimeUs + cts * 1000L
        return when (pktType) {
            0 -> { // sequence header
                outputFormat(data, hevc)
                false
            }
            1 -> { // NAL units
                if (!hasOutputFormat || isHevc != hevc) return false
                outputCodedFrames(data, frameType, timeUs)
            }
            else -> false
        }
    }

    private fun outputFormat(data: ParsableByteArray, hevc: Boolean) {
        val configBytes = ParsableByteArray(ByteArray(data.bytesLeft()))
        data.readBytes(configBytes.data, 0, data.bytesLeft())
        val output = videoOutput ?: return
        try {
            if (hevc) {
                val cfg = HevcConfig.parse(configBytes)
                nalUnitLengthFieldLength = cfg.nalUnitLengthFieldLength
                output.format(
                    Format.Builder()
                        .setContainerMimeType(MimeTypes.VIDEO_FLV)
                        .setSampleMimeType(MimeTypes.VIDEO_H265)
                        .setCodecs(cfg.codecs)
                        .setWidth(cfg.width)
                        .setHeight(cfg.height)
                        .setPixelWidthHeightRatio(cfg.pixelWidthHeightRatio)
                        .setInitializationData(cfg.initializationData)
                        .build()
                )
            } else {
                val cfg = AvcConfig.parse(configBytes)
                nalUnitLengthFieldLength = cfg.nalUnitLengthFieldLength
                output.format(
                    Format.Builder()
                        .setContainerMimeType(MimeTypes.VIDEO_FLV)
                        .setSampleMimeType(MimeTypes.VIDEO_H264)
                        .setCodecs(cfg.codecs)
                        .setWidth(cfg.width)
                        .setHeight(cfg.height)
                        .setPixelWidthHeightRatio(cfg.pixelWidthHeightRatio)
                        .setInitializationData(cfg.initializationData)
                        .build()
                )
            }
            isHevc = hevc
            hasOutputFormat = true
        } catch (_: Exception) {
            // Malformed config record: keep waiting for the next one.
        }
    }

    /** Converts length-prefixed NAL units to Annex B and outputs one sample. */
    private fun outputCodedFrames(
        data: ParsableByteArray, frameType: Int, timeUs: Long,
    ): Boolean {
        val isKeyframe = frameType == FRAME_KEYFRAME
        if (!hasOutputKeyframe && !isKeyframe) return false
        val output = videoOutput ?: return false
        val nalLengthData = nalLength.data
        nalLengthData[0] = 0
        nalLengthData[1] = 0
        nalLengthData[2] = 0
        val diff = 4 - nalUnitLengthFieldLength
        var bytesWritten = 0
        while (data.bytesLeft() > 0) {
            if (data.bytesLeft() < nalUnitLengthFieldLength) return false
            data.readBytes(nalLength.data, diff, nalUnitLengthFieldLength)
            nalLength.setPosition(0)
            val bytesToWrite = nalLength.readUnsignedIntToInt()
            if (bytesToWrite <= 0 || bytesToWrite > data.bytesLeft()) return false
            nalStartCode.setPosition(0)
            output.sampleData(nalStartCode, 4)
            bytesWritten += 4
            output.sampleData(data, bytesToWrite)
            bytesWritten += bytesToWrite
        }
        output.sampleMetadata(
            timeUs,
            if (isKeyframe) C.BUFFER_FLAG_KEY_FRAME else 0,
            bytesWritten, 0, null
        )
        hasOutputKeyframe = true
        return true
    }
}
