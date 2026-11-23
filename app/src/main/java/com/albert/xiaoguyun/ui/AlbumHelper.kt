package com.albert.xiaoguyun.ui

import android.content.Context
import android.content.Intent
import android.provider.MediaStore
import android.widget.Toast

/**
 * "相册"入口：打开系统相册。抓拍存在 Pictures/XiaoGuYun，本地录像在
 * Movies/xiaoguyun，系统相册都能看到。纯 UI 跳转，不碰设备命令。
 */
object AlbumHelper {
    fun openAlbum(context: Context) {
        try {
            val i = Intent(Intent.ACTION_VIEW, MediaStore.Images.Media.EXTERNAL_CONTENT_URI)
            context.startActivity(i)
        } catch (e: Exception) {
            Toast.makeText(context, "无法打开相册：${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
}
