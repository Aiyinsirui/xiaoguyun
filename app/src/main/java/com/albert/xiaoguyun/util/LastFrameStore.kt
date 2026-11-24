package com.albert.xiaoguyun.util

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import java.io.FileOutputStream

/**
 * Last-frame thumbnails for the home page (v1.2.6, issue 4).
 *
 * TP-Link / Daguyun show the last viewed frame on the device card;
 * XiaoGuYun showed a black placeholder. This store keeps the most
 * recent frame of each device on the phone only (never uploaded):
 * the live page saves the big view's full 640x720 frame on exit (and
 * every 30 s while watching); the home page shows its top half (gun
 * lens / panoramic) in channel 1 and its bottom half (ball lens /
 * close-up) in channel 2.
 *
 * Files: <filesDir>/lastframe/<sn>_top.jpg, <sn>_bottom.jpg and
 * <sn>_full.jpg (JPEG quality 80; halves 640x360, full 640x720). A
 * missing file simply means "never watched" — the home page keeps its
 * black placeholder. v1.2.7: the full frame is also kept so the live
 * page's new three-way channel strip can show a real "dual view"
 * snapshot instead of a second live player.
 * No network, no new permission; files are private to the app.
 */
object LastFrameStore {

    private fun dir(context: Context): File =
        File(context.filesDir, "lastframe").apply { mkdirs() }

    private fun topFile(context: Context, sn: String): File =
        File(dir(context), "${sn}_top.jpg")

    private fun bottomFile(context: Context, sn: String): File =
        File(dir(context), "${sn}_bottom.jpg")

    private fun fullFile(context: Context, sn: String): File =
        File(dir(context), "${sn}_full.jpg")

    /** Split a full 640x720 frame into its two lens halves and save
     * them, plus the whole frame. No-op when the bitmap is null or too
     * small. File I/O runs on a background thread so the UI thread
     * never blocks. */
    fun save(context: Context, sn: String, full: Bitmap?) {
        if (full == null) return
        val w = full.width
        val h = full.height
        if (w <= 0 || h < 2) return
        val appContext = context.applicationContext
        Thread {
            try {
                val half = h / 2
                val top = Bitmap.createBitmap(full, 0, 0, w, half)
                val bottom = Bitmap.createBitmap(full, 0, half, w, h - half)
                try {
                    FileOutputStream(fullFile(appContext, sn)).use { out ->
                        full.compress(Bitmap.CompressFormat.JPEG, 80, out)
                    }
                    FileOutputStream(topFile(appContext, sn)).use { out ->
                        top.compress(Bitmap.CompressFormat.JPEG, 80, out)
                    }
                    FileOutputStream(bottomFile(appContext, sn)).use { out ->
                        bottom.compress(Bitmap.CompressFormat.JPEG, 80, out)
                    }
                } finally {
                    // The halves are copies; free them promptly.
                    try { top.recycle() } catch (_: Exception) {}
                    try { bottom.recycle() } catch (_: Exception) {}
                }
            } catch (_: Exception) {
                // Best effort only — a failed snapshot must never break
                // playback or navigation.
            }
        }.start()
    }

    /** Decoded top half (gun lens), or null when never saved. Small
     * file (640x360 JPEG); synchronous decode is fine on the UI thread. */
    fun loadTop(context: Context, sn: String): Bitmap? =
        decode(topFile(context, sn))

    /** Decoded bottom half (ball lens), or null when never saved. */
    fun loadBottom(context: Context, sn: String): Bitmap? =
        decode(bottomFile(context, sn))

    /** Decoded whole frame (both lenses), or null when never saved. */
    fun loadFull(context: Context, sn: String): Bitmap? =
        decode(fullFile(context, sn))

    private fun decode(f: File): Bitmap? {
        if (!f.exists() || f.length() <= 0) return null
        return try {
            BitmapFactory.decodeFile(f.absolutePath)
        } catch (_: Exception) {
            null
        }
    }
}
