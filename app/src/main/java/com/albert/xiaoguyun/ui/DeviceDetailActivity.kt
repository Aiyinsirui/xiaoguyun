package com.albert.xiaoguyun.ui

import android.app.AlertDialog
import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.albert.xiaoguyun.R
import com.albert.xiaoguyun.net.ApiClient
import com.albert.xiaoguyun.net.ApiException
import com.albert.xiaoguyun.net.TokenStore
import com.albert.xiaoguyun.ws.WsClient
import kotlinx.coroutines.launch
import org.json.JSONObject

/**
 * Device detail & settings. Everything here is a confirmed non-VIP endpoint
 * (see AUDIT.md): REST device info / online / card flow / ICCID / cloud
 * package / OTA lookup (prompt only), WS code 6/51/52 info, code 11 LED,
 * 14/15 detection, 16/17 track, 18/19 flip, 21 rec-parm query, 35/36 alarm,
 * 58/59 PIR, 40 package, 54 record-time list, 7 reboot, sharing and unbind.
 *
 * NOT here: preset/cruise (no command code exists statically), VIP/cloud
 * purchase, paid H5 pages, ad SDKs.
 */
class DeviceDetailActivity : AppCompatActivity() {
    private lateinit var api: ApiClient
    private lateinit var ws: WsClient
    private lateinit var sn: String
    private lateinit var tvInfo: TextView
    private lateinit var tvWsInfo: TextView
    private lateinit var tvCloud: TextView
    private lateinit var tvShare: TextView
    private var sv: String = ""
    private var msv: String = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sn = intent.getStringExtra("sn").orEmpty()
        setContentView(R.layout.activity_device_detail)
        findViewById<TextView>(R.id.tvTitle).text = "设备详情 · ${intent.getStringExtra("name") ?: sn}"
        tvInfo = findViewById(R.id.tvInfo)
        tvWsInfo = findViewById(R.id.tvWsInfo)
        tvCloud = findViewById(R.id.tvCloud)
        tvShare = findViewById(R.id.tvShare)
        val store = TokenStore(this)
        api = ApiClient(store)
        ws = WsClient(store)
        ws.subscribeSns = listOf(sn)
        ws.listener = object : WsClient.Listener {
            override fun onConnected() { runOnUiThread { loadWsInfo() } }
            override fun onDisconnected(reason: String) {}
            override fun onDeviceStates(states: Map<String, WsClient.DeviceState>) {}
            override fun onError(message: String) {}
        }
        ws.rawListener = { code, obj ->
            runOnUiThread {
                if (code == 40) tvCloud.text = "云套餐（WS code 40）：${obj.toString(2)}"
            }
        }
        ws.connect()
        loadRestInfo()
        loadCloudInfo()

        findViewById<Button>(R.id.btnRefresh).setOnClickListener { loadRestInfo(); loadWsInfo(); loadCloudInfo() }
        findViewById<Button>(R.id.btnSdCard).setOnClickListener {
            val i = Intent(this, SdCardActivity::class.java)
            i.putExtra("sn", sn); startActivity(i)
        }
        findViewById<Button>(R.id.btnMessages).setOnClickListener {
            val i = Intent(this, MessagesActivity::class.java)
            i.putExtra("sn", sn); startActivity(i)
        }
        findViewById<Button>(R.id.btnReboot).setOnClickListener {
            AlertDialog.Builder(this).setTitle("重启设备")
                .setMessage("确定要重启该设备吗？（WS code 7）")
                .setPositiveButton("重启") { _, _ -> ws.sendReboot(sn); toast("重启命令已发送") }
                .setNegativeButton("取消", null).show()
        }
        findViewById<Button>(R.id.btnCheckFw).setOnClickListener { checkFirmware() }
        // Rename
        val etName = findViewById<EditText>(R.id.etDeviceName)
        findViewById<Button>(R.id.btnRename).setOnClickListener {
            val name = etName.text.toString().trim()
            if (name.isBlank()) { toast("请输入新名称"); return@setOnClickListener }
            lifecycleScope.launch {
                try {
                    val env = api.renameDevice(sn, name)
                    toast(if (env.code == 200) "改名成功" else (env.message ?: "改名失败"))
                } catch (e: Exception) { toast(errText(e)) }
            }
        }
        // LED
        findViewById<Button>(R.id.btnLedOn).setOnClickListener { ws.sendLed(sn, 1); toast("指示灯开（code 11，取值未展开）") }
        findViewById<Button>(R.id.btnLedOff).setOnClickListener { ws.sendLed(sn, 0); toast("指示灯关（code 11，取值未展开）") }
        // Detection
        val etDetSen = findViewById<EditText>(R.id.etDetSen)
        val etDetSw = findViewById<EditText>(R.id.etDetSw)
        findViewById<Button>(R.id.btnGetDetection).setOnClickListener {
            ws.requestDetection(sn) { obj -> runOnUiThread { tvWsInfo.text = "移动侦测（code 15）：${obj?.toString(2) ?: "无响应"}" } }
        }
        findViewById<Button>(R.id.btnSetDetection).setOnClickListener {
            val sw = etDetSw.text.toString().toIntOrNull() ?: 1
            val sen = etDetSen.text.toString().toIntOrNull() ?: 2
            ws.setDetection(sn, sw, sen, 1)
            toast("移动侦测已设置：开关=$sw 灵敏度=$sen（code 14）")
        }
        // Track
        val etTrackSen = findViewById<EditText>(R.id.etTrackSen)
        val etTrackSw = findViewById<EditText>(R.id.etTrackSw)
        findViewById<Button>(R.id.btnGetTrack).setOnClickListener {
            ws.requestTrack(sn) { obj -> runOnUiThread { tvWsInfo.text = "追踪（code 17）：${obj?.toString(2) ?: "无响应"}" } }
        }
        findViewById<Button>(R.id.btnSetTrack).setOnClickListener {
            val sw = etTrackSw.text.toString().toIntOrNull() ?: 1
            val sen = etTrackSen.text.toString().toIntOrNull() ?: 2
            ws.setTrack(sn, sw, sen)
            toast("追踪已设置：开关=$sw 灵敏度=$sen（code 16）")
        }
        // Flip
        findViewById<Button>(R.id.btnFlipOn).setOnClickListener { ws.setFlip(sn, true); toast("画面翻转开（code 18）") }
        findViewById<Button>(R.id.btnFlipOff).setOnClickListener { ws.setFlip(sn, false); toast("画面翻转关（code 18）") }
        findViewById<Button>(R.id.btnGetFlip).setOnClickListener {
            ws.requestFlip(sn) { obj -> runOnUiThread { tvWsInfo.text = "翻转（code 19）：${obj?.toString(2) ?: "无响应"}" } }
        }
        // Rec parm (query only — set enums unconfirmed)
        findViewById<Button>(R.id.btnGetRecParm).setOnClickListener {
            ws.requestRecParm(sn) { obj -> runOnUiThread { tvWsInfo.text = "录像参数（code 21）：${obj?.toString(2) ?: "无响应"}" } }
        }
        findViewById<Button>(R.id.btnSetRecParm).setOnClickListener {
            toast("录像参数 mode/qlty 枚举静态未确认，暂不开放设置（见 AUDIT.md）")
        }
        // Alarm
        val etAlarmSen = findViewById<EditText>(R.id.etAlarmSen)
        val etAlarmSw = findViewById<EditText>(R.id.etAlarmSw)
        findViewById<Button>(R.id.btnGetAlarm).setOnClickListener {
            ws.requestAlarm(sn) { obj -> runOnUiThread { tvWsInfo.text = "报警设置（code 36）：${obj?.toString(2) ?: "无响应"}" } }
        }
        findViewById<Button>(R.id.btnSetAlarm).setOnClickListener {
            val sw = etAlarmSw.text.toString().toIntOrNull() ?: 1
            val sen = etAlarmSen.text.toString().toIntOrNull() ?: 1
            ws.setAlarm(sn, sw, sen)
            toast("报警已设置：开关=$sw 灵敏度=$sen（code 35）")
        }
        // PIR
        val etPirSen = findViewById<EditText>(R.id.etPirSen)
        val etPirSw = findViewById<EditText>(R.id.etPirSw)
        findViewById<Button>(R.id.btnGetPir).setOnClickListener {
            ws.requestPir(sn) { obj -> runOnUiThread { tvWsInfo.text = "PIR（code 58）：${obj?.toString(2) ?: "无响应"}" } }
        }
        findViewById<Button>(R.id.btnSetPir).setOnClickListener {
            val sw = etPirSw.text.toString().toIntOrNull() ?: 1
            val sen = etPirSen.text.toString().toIntOrNull() ?: 2
            ws.setPir(sn, sw == 1, sen)
            toast("PIR 已设置：开关=$sw 灵敏度=$sen（code 59）")
        }
        findViewById<Button>(R.id.btnGetRecordTime).setOnClickListener {
            ws.requestRecordTimeList(sn) { obj -> runOnUiThread { tvWsInfo.text = "录像时间表（code 54）：${obj?.toString(2) ?: "无响应"}" } }
        }
        findViewById<Button>(R.id.btnGetPackage).setOnClickListener {
            ws.requestPackage(sn) { obj -> runOnUiThread { tvCloud.text = "云套餐（WS code 40）：${obj?.toString(2) ?: "无响应"}" } }
        }
        // Share
        val etSharePhone = findViewById<EditText>(R.id.etSharePhone)
        val etUsefulDays = findViewById<EditText>(R.id.etUsefulDays)
        findViewById<Button>(R.id.btnShare).setOnClickListener {
            val phone = etSharePhone.text.toString().trim()
            if (phone.length != 11) { toast("请输入 11 位手机号"); return@setOnClickListener }
            val days = etUsefulDays.text.toString().toIntOrNull() ?: -1
            val useful = if (days < 0) -1 else days * 86400
            lifecycleScope.launch {
                try {
                    val env = api.shareToPhone(sn, phone, "1,2", useful)
                    toast(if (env.code == 200) "分享已发送" else (env.message ?: "分享失败"))
                    loadShareList()
                } catch (e: Exception) { toast(errText(e)) }
            }
        }
        findViewById<Button>(R.id.btnShareList).setOnClickListener { loadShareList() }
        val etCancelIotId = findViewById<EditText>(R.id.etCancelIotId)
        findViewById<Button>(R.id.btnCancelShare).setOnClickListener {
            val iotId = etCancelIotId.text.toString().trim()
            if (iotId.isBlank()) { toast("请输入要取消分享的 iotId"); return@setOnClickListener }
            lifecycleScope.launch {
                try {
                    val env = api.cancelShare(iotId, sn)
                    toast(if (env.code == 200) "已取消分享" else (env.message ?: "取消失败"))
                    loadShareList()
                } catch (e: Exception) { toast(errText(e)) }
            }
        }
        findViewById<Button>(R.id.btnExitShared).setOnClickListener {
            val iotId = etCancelIotId.text.toString().trim()
            if (iotId.isBlank()) { toast("请输入 iotId（被分享的设备用此退出）"); return@setOnClickListener }
            lifecycleScope.launch {
                try {
                    val env = api.unbindSharedDevice(iotId)
                    toast(if (env.code == 200) "已退出分享设备" else (env.message ?: "退出失败"))
                } catch (e: Exception) { toast(errText(e)) }
            }
        }
        findViewById<Button>(R.id.btnUnbind).setOnClickListener {
            AlertDialog.Builder(this).setTitle("解绑设备")
                .setMessage("确定要解绑该设备吗？解绑后设备将从你的账号移除（GET /deviceBind/device/del）。")
                .setPositiveButton("解绑") { _, _ ->
                    lifecycleScope.launch {
                        try {
                            val env = api.unbindDevice(sn)
                            if (env.code == 200) {
                                toast("已解绑")
                                finish()
                            } else toast(env.message ?: "解绑失败")
                        } catch (e: Exception) { toast(errText(e)) }
                    }
                }
                .setNegativeButton("取消", null).show()
        }
    }

    private fun loadRestInfo() {
        tvInfo.text = "加载中…"
        lifecycleScope.launch {
            try {
                val info = api.deviceInfo(sn)
                val online = api.userOnline(sn)
                val flow = api.cardFlow(sn)
                val iccid = api.deviceIccid(sn)
                tvInfo.text = "设备信息（REST）：\n" +
                    "详情：${info.dataString()?.take(600) ?: "—"}\n" +
                    "在线：${online.dataString()?.take(300) ?: "—"}\n" +
                    "流量卡：${flow.dataString()?.take(300) ?: "—"}\n" +
                    "ICCID：${iccid.dataString()?.take(300) ?: "—"}"
            } catch (e: Exception) { tvInfo.text = "设备信息加载失败：${errText(e)}" }
        }
    }

    private fun loadWsInfo() {
        tvWsInfo.text = "正在查询设备基础信息（WS code 6）…"
        ws.requestDeviceInfo(sn) { obj ->
            runOnUiThread {
                if (obj == null) { tvWsInfo.text = "code 6 无响应（设备可能离线）"; return@runOnUiThread }
                val data = obj.optJSONObject("data")
                sv = data?.optString("sv").orEmpty()
                msv = data?.optString("msv").orEmpty()
                tvWsInfo.text = "设备基础信息（WS code 6）：\n" +
                    "SN：${data?.optString("sn")}\n" +
                    "固件 sv：$sv\n硬件 hv：${data?.optString("hv")}\n" +
                    "WiFi SSID：${data?.optString("ssid")}\n信号 dbm：${data?.optInt("dbm", -1)}\n" +
                    "电量 bat：${data?.optInt("bat", -1)}\nICCID：${data?.optString("iccid")}\n" +
                    "use：${data?.optInt("use", -1)} link：${data?.optInt("link", -1)}"
                ws.requestBat(sn) { batObj ->
                    runOnUiThread {
                        val d = batObj?.optJSONObject("data")
                        if (d != null) tvWsInfo.append("\n电量查询（code 51）：power=${d.optInt("power", -1)} chg=${d.optInt("chg", -1)}")
                    }
                }
                ws.requestWifiInfo(sn) { wifiObj ->
                    runOnUiThread {
                        if (wifiObj != null) tvWsInfo.append("\nWiFi 信息（code 52）：${wifiObj.toString().take(400)}")
                    }
                }
            }
        }
    }

    private fun loadCloudInfo() {
        tvCloud.text = "加载中…"
        lifecycleScope.launch {
            try {
                val info2 = api.cloudInfo2(sn)
                val list = api.cloudInfoList(sn)
                val raw2 = info2.dataString() ?: ""
                val o = try { JSONObject(raw2) } catch (_: Exception) { null }
                tvCloud.text = "云套餐（REST）：\n" +
                    "有套餐：${o?.optBoolean("hasPackage")}\n默认卡：${o?.optBoolean("hasDefaultCard")}\n" +
                    "录像保留天数 videoDuration：${o?.optInt("videoDuration", -1)}\n默认天数 defDays：${o?.optInt("defDays", -1)}\n" +
                    "到期 overTime：${o?.optString("overTime")}\n套餐列表：${list.dataString()?.take(300) ?: "—"}\n" +
                    "（套餐购买/续费为 VIP 付费功能，不做）"
            } catch (e: Exception) { tvCloud.text = "云套餐加载失败：${errText(e)}" }
        }
    }

    private fun loadShareList() {
        lifecycleScope.launch {
            try {
                val env = api.shareList(sn)
                tvShare.text = "分享列表：${env.dataString()?.take(800) ?: "—"}"
            } catch (e: Exception) { tvShare.text = "分享列表加载失败：${errText(e)}" }
        }
    }

    /**
     * Firmware check only: queries the OTA URL by sv/msv and shows the
     * result. Never triggers an upgrade automatically and never sends
     * WS code 8 (its sv/sp/md5/fatid parameters come from the OTA response,
     * whose shape is unconfirmed — see AUDIT.md).
     */
    private fun checkFirmware() {
        if (sv.isBlank()) { toast("请先等 code 6 基础信息返回（需要固件版本号 sv）"); return }
        lifecycleScope.launch {
            try {
                val env = if (msv.isBlank()) api.otaUrl(sv) else api.otaUrlV2(sv, msv)
                val raw = env.dataString().orEmpty()
                AlertDialog.Builder(this@DeviceDetailActivity).setTitle("固件升级提示")
                    .setMessage(
                        "当前固件：$sv\n服务端返回：${raw.take(500).ifBlank { env.message ?: "无新版本信息" }}\n\n" +
                            "小谷云只提示、不自动升级。如需升级，请在原 App 内操作，或以服务端返回为准人工确认后再升级。",
                    )
                    .setPositiveButton("知道了", null).show()
            } catch (e: Exception) { toast(errText(e)) }
        }
    }

    private fun toast(msg: String) = Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
    private fun errText(e: Exception) = (e as? ApiException)?.message ?: e.message ?: "请求失败"

    override fun onDestroy() {
        ws.disconnect()
        super.onDestroy()
    }
}
