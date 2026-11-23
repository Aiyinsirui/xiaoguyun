package com.albert.xiaoguyun.ui

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.albert.xiaoguyun.CrashLog
import com.albert.xiaoguyun.DebugLog
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.ApiException
import com.albert.xiaoguyun.net.TokenStore
import kotlinx.coroutines.launch

class LoginActivity : AppCompatActivity() {
    private lateinit var store: TokenStore
    private lateinit var api: ApiClient
    private var smsMode = false
    private var forgotMode = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        DebugLog.init(this)
        CrashLog.install(this)
        store = TokenStore(this)
        api = ApiClient(store)
        if (store.isLoggedIn) { goDevices(); return }
        setContentView(R.layout.activity_login)
        val etPhone = findViewById<EditText>(R.id.etPhone)
        val etPassword = findViewById<EditText>(R.id.etPassword)
        val cbRemember = findViewById<CheckBox>(R.id.cbRemember)
        // v1.2.0: remember account + password — pre-fill from encrypted prefs.
        store.savedPhone?.let { if (it.isNotBlank()) etPhone.setText(it) }
        store.savedPassword?.let {
            if (it.isNotBlank()) { etPassword.setText(it); cbRemember.isChecked = true }
        }
        val etCode = findViewById<EditText>(R.id.etCode)
        val smsRow = findViewById<LinearLayout>(R.id.smsRow)
        val btnLogin = findViewById<Button>(R.id.btnLogin)
        val btnSend = findViewById<Button>(R.id.btnSendCode)
        val progress = findViewById<ProgressBar>(R.id.progress)
        val tvError = findViewById<TextView>(R.id.tvError)
        val tabPassword = findViewById<RadioButton>(R.id.tabPassword)
        val tabSms = findViewById<RadioButton>(R.id.tabSms)

        fun setMode(sms: Boolean) {
            smsMode = sms
            forgotMode = false
            smsRow.visibility = if (sms) View.VISIBLE else View.GONE
            etPassword.visibility = if (sms) View.GONE else View.VISIBLE
            etPassword.hint = getString(R.string.password)
            btnLogin.text = if (sms) getString(R.string.login_sms) else getString(R.string.login_password)
        }
        tabPassword.setOnCheckedChangeListener { _, c -> if (c) setMode(false) }
        tabSms.setOnCheckedChangeListener { _, c -> if (c) setMode(true) }

        fun err(msg: String) { tvError.text = msg; progress.visibility = View.GONE; btnLogin.isEnabled = true }
        fun busy() { tvError.text = ""; progress.visibility = View.VISIBLE; btnLogin.isEnabled = false }

        // Forgot password: SMS code (smsType 10012) + new password, then
        // POST /user/V3/setPwd. NOTE: the original app sends `pwd` here
        // WITHOUT AES encryption (unlike login) — kept as-is.
        findViewById<Button>(R.id.btnForgot).setOnClickListener {
            val phone = etPhone.text.toString().trim()
            if (phone.length != 11) { err("请输入 11 位手机号"); return@setOnClickListener }
            forgotMode = true
            smsMode = false
            smsRow.visibility = View.VISIBLE
            etPassword.visibility = View.VISIBLE
            etPassword.hint = "新密码（8–20 位，含字母和数字）"
            btnLogin.text = "重设密码并登录"
            busy()
            lifecycleScope.launch {
                try {
                    api.sendSms(phone, forgot = true)
                    Toast.makeText(this@LoginActivity, "验证码已发送，输入验证码和新密码后点“重设密码并登录”", Toast.LENGTH_LONG).show()
                    progress.visibility = View.GONE; btnLogin.isEnabled = true
                } catch (e: Exception) { err((e as? ApiException)?.message ?: e.message ?: "发送失败") }
            }
        }

        btnSend.setOnClickListener {
            val phone = etPhone.text.toString().trim()
            if (phone.length != 11) { err("请输入 11 位手机号"); return@setOnClickListener }
            busy()
            lifecycleScope.launch {
                try {
                    // Audit P1: in forgot-password mode the resend must use the
                    // 10012 SMS type, not the registration 10011 type.
                    api.sendSms(phone, forgot = forgotMode)
                    Toast.makeText(this@LoginActivity, "验证码已发送", Toast.LENGTH_SHORT).show()
                    progress.visibility = View.GONE; btnLogin.isEnabled = true
                } catch (e: Exception) { err((e as? ApiException)?.message ?: e.message ?: "发送失败") }
            }
        }
        btnLogin.setOnClickListener {
            val phone = etPhone.text.toString().trim()
            if (phone.length != 11) { err("请输入 11 位手机号"); return@setOnClickListener }
            busy()
            lifecycleScope.launch {
                try {
                    if (smsMode) {
                        val code = etCode.text.toString().trim()
                        if (code.isBlank()) { err("请输入短信验证码"); return@launch }
                        api.checkSms(phone, code)
                        // No token is returned by this endpoint (see ApiClient).
                        err("验证码校验通过，但该接口不返回登录 token，无法直接登录。请切回密码登录。")
                        return@launch
                    }
                    if (forgotMode) {
                        val code = etCode.text.toString().trim()
                        val pwd = etPassword.text.toString()
                        if (code.isBlank()) { err("请输入短信验证码"); return@launch }
                        if (pwd.length < 8) { err("新密码至少 8 位"); return@launch }
                        api.forgotPassword(phone, code, pwd)
                        api.login(phone, pwd)
                        if (cbRemember.isChecked) store.saveCredentials(phone, pwd)
                        else store.clearCredentials()
                        goDevices()
                        return@launch
                    }
                    val pwd = etPassword.text.toString()
                    if (pwd.length < 8) { err("密码至少 8 位"); return@launch }
                    api.login(phone, pwd)
                    if (cbRemember.isChecked) store.saveCredentials(phone, pwd)
                    else store.clearCredentials()
                    goDevices()
                } catch (e: Exception) {
                    err((e as? ApiException)?.message ?: e.message ?: "登录失败")
                }
            }
        }
    }

    private fun goDevices() {
        startActivity(Intent(this, DeviceListActivity::class.java))
        finish()
    }
}
