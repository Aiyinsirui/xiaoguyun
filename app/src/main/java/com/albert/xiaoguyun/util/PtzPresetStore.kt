package com.albert.xiaoguyun.util

import android.content.Context
import org.json.JSONArray
import org.json.JSONObject

/**
 * PTZ preset points (v1.2.8).
 *
 * The camera and the original app have no preset command and no
 * position report, so presets cannot live on the camera or its
 * server — they live in the app only, as dead-reckoned positions:
 * each preset records the virtual (x, y) position in milliseconds
 * (x>0 = right, y>0 = up) that LiveActivity accrued from the user's
 * PTZ moves since the last reset. Going to a preset homes the camera
 * first (dir=0) and then replays the recorded legs with the same
 * 250 ms re-send as a held direction button.
 *
 * Storage: SharedPreferences "ptz_presets", one JSON array per
 * device SN ("presets_<sn>"), max 8 presets per device. Local only,
 * never uploaded, no new permission.
 */
object PtzPresetStore {
    const val MAX_PRESETS = 8
    private const val PREFS = "ptz_presets"

    data class Preset(
        val id: String,
        val name: String,
        val xMs: Long,
        val yMs: Long,
        val createdAt: Long,
    )

    private fun key(sn: String) = "presets_$sn"

    fun load(context: Context, sn: String): List<Preset> {
        val raw = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(key(sn), null) ?: return emptyList()
        return try {
            val arr = JSONArray(raw)
            List(arr.length()) { i ->
                val o = arr.getJSONObject(i)
                Preset(
                    id = o.optString("id"),
                    name = o.optString("name"),
                    xMs = o.optLong("xMs"),
                    yMs = o.optLong("yMs"),
                    createdAt = o.optLong("createdAt"),
                )
            }.filter { it.id.isNotEmpty() }
        } catch (_: Exception) {
            emptyList()
        }
    }

    /** Adds a preset; false when the device already has 8. */
    fun add(context: Context, sn: String, preset: Preset): Boolean {
        val list = load(context, sn).toMutableList()
        if (list.size >= MAX_PRESETS) return false
        list.add(preset)
        persist(context, sn, list)
        return true
    }

    fun delete(context: Context, sn: String, id: String) {
        val list = load(context, sn).filter { it.id != id }
        persist(context, sn, list)
    }

    /** Smallest unused "预置点N" (N = 1..8), so a deleted number is reused. */
    fun nextDefaultName(context: Context, sn: String): String {
        val used = load(context, sn).map { it.name }.toSet()
        for (n in 1..MAX_PRESETS) {
            val name = "预置点$n"
            if (name !in used) return name
        }
        return "预置点${System.currentTimeMillis() % 1000}"
    }

    private fun persist(context: Context, sn: String, list: List<Preset>) {
        val arr = JSONArray()
        for (p in list) {
            arr.put(JSONObject().apply {
                put("id", p.id)
                put("name", p.name)
                put("xMs", p.xMs)
                put("yMs", p.yMs)
                put("createdAt", p.createdAt)
            })
        }
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit().putString(key(sn), arr.toString()).apply()
    }
}
