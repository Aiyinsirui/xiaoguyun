package com.albert.xiaoguyun.net

import android.content.Context
import android.content.SharedPreferences
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.MasterKey
import java.util.UUID

/**
 * Only tokens are persisted, never the password. The password lives only
 * in memory during the login call. Logout clears tokens locally; there is
 * no server-side logout/revoke endpoint in the original app.
 */
class TokenStore(context: Context) {
    private val prefs: SharedPreferences = try {
        val masterKey = MasterKey.Builder(context)
            .setKeyScheme(MasterKey.KeyScheme.AES256_GCM).build()
        EncryptedSharedPreferences.create(
            context, "xiaoguyun_tokens", masterKey,
            EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
            EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM,
        )
    } catch (e: Exception) {
        // Fallback only if the keystore is unavailable on the device.
        context.getSharedPreferences("xiaoguyun_tokens", Context.MODE_PRIVATE)
    }

    var accessToken: String?
        get() = prefs.getString("token", null)
        set(v) = prefs.edit().putString("token", v).apply()
    var refreshToken: String?
        get() = prefs.getString("refresh_token", null)
        set(v) = prefs.edit().putString("refresh_token", v).apply()
    var userId: Long
        get() = prefs.getLong("user_id", 0)
        set(v) = prefs.edit().putLong("user_id", v).apply()
    var tokenSavedAt: Long
        get() = prefs.getLong("token_saved_at", 0)
        set(v) = prefs.edit().putLong("token_saved_at", v).apply()

    /** deviceId: generated once per install and persisted (original app
     *  regenerated a UUID on every login; a stable per-install id is safer). */
    val deviceId: String
        get() {
            var id = prefs.getString("device_id", null)
            if (id.isNullOrBlank()) {
                id = UUID.randomUUID().toString()
                prefs.edit().putString("device_id", id).apply()
            }
            return id!!
        }

    val isLoggedIn: Boolean get() = !accessToken.isNullOrBlank()

    fun saveTokens(t: TokenBean) {
        accessToken = t.accessToken
        refreshToken = t.refreshToken
        userId = t.userId
        tokenSavedAt = System.currentTimeMillis()
    }

    fun clear() {
        prefs.edit().remove("token").remove("refresh_token")
            .remove("user_id").remove("token_saved_at").apply()
    }
}
