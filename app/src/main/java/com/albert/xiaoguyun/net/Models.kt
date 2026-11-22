package com.albert.xiaoguyun.net

import com.google.gson.JsonElement
import com.google.gson.annotations.SerializedName

/** Generic envelope: {success, code, message, data} where data is a JSON string or value. */
data class Envelope(
    val success: Boolean = false,
    val code: Int = -1,
    val message: String? = null,
    val data: JsonElement? = null,
) {
    /** data as a raw string, whether it arrived as a JSON string or as an object/array. */
    fun dataString(): String? = when {
        data == null || data.isJsonNull -> null
        data.isJsonPrimitive -> data.asString
        else -> data.toString()
    }
}

data class TokenBean(
    val accessToken: String? = null,
    val refreshToken: String? = null,
    val userId: Long = 0,
    val userName: String? = null,
)

data class DeviceInfo(
    val sn: String = "",
    val nickName: String? = null,
    val deviceName: String? = null,
    val productName: String? = null,
    val productKey: String? = null,
    val thingType: String? = null,
    val iotId: String? = null,
    val identityId: String? = null,
    val owned: Int = 0,
    // REST status: 1 = online, 3 = offline. Unreliable — WS subscription wins.
    val status: Int = 3,
    val bat: Int = -1,
    val iccid: String? = null,
    val netType: String? = null,
    val dbm: String? = null,
    val deviceToken: String? = null,
    val categoryImage: String? = null,
    val cardExpirationTime: String? = null,
    val createDate: String? = null,
    val gmtModified: Long = 0,
    val tags: String? = null,
    val power: String? = null,
) {
    val displayName: String get() = nickName?.takeIf { it.isNotBlank() }
        ?: deviceName?.takeIf { it.isNotBlank() }
        ?: productName?.takeIf { it.isNotBlank() }
        ?: sn
    val isOnline: Boolean get() = status == 1
}

data class V3ListData(
    @SerializedName("listResults") val listResults: List<DeviceInfo> = emptyList(),
)

/** Cloud package info: GET /cloud/v3/app/getInfo?sn= -> data. */
data class CloudInfo(
    val hasPackage: Boolean = false,
    val hasDefaultCard: Boolean = false,
    val videoDuration: Int = -1,
    val defDays: Int = 0,
    val overTime: String? = null,
)

/** Alarm / message record: /message/device/list, /message/list -> data items. */
data class AlarmMessage(
    val id: Int? = null,
    val messageId: Int? = null,
    val sn: String? = null,
    val title: String? = null,
    val body: String? = null,
    val gmtCreate: String? = null,
    val type: String? = null,
    val messageType: String? = null,
    val isRead: String? = null,
    val alarm: String? = null,
    val iotId: String? = null,
)

/** One recording file, from code-23 lists or HTTP getlist. */
data class RecordFile(
    val recfile: String,
    /** Seconds from 00:00:00 of its date, parsed from the HHMMSS file-name prefix. -1 if unknown. */
    val startSecond: Int = -1,
    val date: String = "",
    val source: String = "", // "sd" | "cloud"
) {
    companion object {
        fun startSecondOf(name: String): Int {
            return try {
                val h = name.substring(0, 2).toInt()
                val m = name.substring(2, 4).toInt()
                val s = name.substring(4, 6).toInt()
                h * 3600 + m * 60 + s
            } catch (_: Exception) { -1 }
        }
    }
}
