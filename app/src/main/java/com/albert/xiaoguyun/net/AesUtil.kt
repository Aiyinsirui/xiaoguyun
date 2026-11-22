package com.albert.xiaoguyun.net

import android.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.SecretKeySpec

/**
 * Password encryption, mirroring the original app's login path:
 * AES/ECB/PKCS5Padding, Base64 output. The server only accepts this form,
 * so the algorithm is kept as-is (ECB is weak, but changing it would break login).
 */
object AesUtil {
    private const val KEY = "@Afwe#ofjweA$*I@"

    fun encrypt(plain: String): String {
        val spec = SecretKeySpec(KEY.toByteArray(Charsets.UTF_8), "AES")
        val cipher = Cipher.getInstance("AES/ECB/PKCS5Padding")
        cipher.init(Cipher.ENCRYPT_MODE, spec)
        val out = cipher.doFinal(plain.toByteArray(Charsets.UTF_8))
        // TODO: verify against a real login. The original used a custom
        // Base64 helper; standard Base64 is assumed here. If login returns
        // a password error despite a correct password, check the custom
        // Base64 alphabet / line-break behaviour in that helper.
        return Base64.encodeToString(out, Base64.NO_WRAP)
    }
}
