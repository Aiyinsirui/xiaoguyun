package com.albert.xiaoguyun

import android.content.Context
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Minimal crash reporter (v1.1.8): the user has no computer, so a crash
 * must explain itself on the next launch. Installs a global uncaught-
 * exception handler that appends the stack trace to
 * <external-files>/crash_last.txt, then lets the app die as usual.
 * DeviceListActivity shows the saved trace with a copy button.
 */
object CrashLog {
    private const val FILE = "crash_last.txt"

    fun install(context: Context) {
        val app = context.applicationContext
        val prev = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { t, e ->
            try {
                val sw = StringWriter()
                e.printStackTrace(PrintWriter(sw))
                val stamp = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Date())
                val text = "时间：$stamp\n线程：${t.name}\n${e.javaClass.name}: ${e.message}\n${sw}\n"
                app.getExternalFilesDir(null)?.let { File(it, FILE).writeText(text) }
            } catch (_: Exception) {
            }
            prev?.uncaughtException(t, e)
        }
    }

    fun read(context: Context): String? = try {
        context.getExternalFilesDir(null)?.let { dir ->
            File(dir, FILE).takeIf { it.exists() }?.readText()
        }
    } catch (_: Exception) {
        null
    }
}
