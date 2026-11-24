# 小谷云 App 交接记录（v1.2.4，2026-11-23）

> 本文档为 AI 智能体之间的工作交接记录，按时间线沉淀已修复问题、根因证据、协议要点、待办与踩坑。
> **脱敏声明：本文档不含任何 SSH 私钥、GitHub token、服务器口令。** 此类信息仅存在于仓库外的
> `.handover-ssh/` 目录与云服务器交接文档中，禁止写入仓库、禁止提交。

---

## 1. 任务背景与用户诉求（跨会话整理）

小谷云（包名 `com.albert.xiaoguyun`，Kotlin + Media3 + 手写 RTMP）是原版"大谷云"
（包名 `com.dgiot.speedmonitoring`）的干净重写版，去广告。用户的核心诉求按优先级：

1. **修复对讲功能**（用户实测无声，最高优先级）。
2. 允许通过 ADB 连接 Redmi Pad Pro（型号 24018RPACC，HyperOS 3 / Android 16）现拍现测；
   禁止访问/修改指定时间点之前的手机文件。
3. 对比原版反编译代码（云服务器 `/root/daguyun/jadx-out/`）补齐缺失功能，本轮新增**补光灯开关**。
4. 优化 App 页面。
5. 修复本地录像 size=0、清晰度映射反转等已知问题。
6. APK 与源码推送到 xiaoguyun 仓库的**非 main 新分支**；交接文档一并推送，token/密钥不推送。
7. 用户偏好：先自行调试验证再交付；如实标注"仅编译核验/真机未验证"；给精确命令与方案对比。

---

## 2. 版本与分支

- 当前版本：`versionCode=16 / versionName=1.2.4`（app/build.gradle.kts）。
- 工作分支：`v1.2.3-intercom-blackscreen-fix`（历史）→ 本轮新建 **`v1.2.4-led-recording-ui`**。
- main 分支只保留稳定版，**禁止**直接推 main、禁止自行建 Release。
- 签名：debug 与 release 均用仓库外 keystore 自动签名（local.properties 中配置，该文件已 gitignore），
  两者同一证书（SHA-256 `6f4115…a658b0`，DN `CN=Android Debug`），可互相覆盖安装；
  fresh clone / CI 无 local.properties 时 release 保持未签名，仓库内无任何密钥材料。
- release 签名配置位于 `app/build.gradle.kts` 的 `buildTypes.release`，复用 `signingConfigs.handover`；
  同时开启 `buildFeatures.buildConfig = true`，用于 `BuildConfig.DEBUG` 门控
  （MicSelfTest 的 ADB 诊断广播只在 debug 包注册）。

---

## 3. 本轮已完成的修复与功能（均有实测/编译证据）

### 3.1 【高优】对讲无声：麦克风被系统路由到后置麦（v1.2.4 核心修复）

**根因（dumpsys media.audio_flinger HAL 层铁证，非 app 层自报）：**
- 该平板 HyperOS 3 的音频策略：`MODE_IN_COMMUNICATION` + `isSpeakerphoneOn=true` 时，
  所有 AudioRecord 音源被强制路由到 `AUDIO_DEVICE_IN_BACK_MIC`（0x80000080，后置麦），
  信号 -55~-64 dBFS，近噪底；用户朝屏幕说话后置麦几乎收不到。
- 对照实验：扬声器**关**时，同样 MODE_IN_COMMUNICATION 下路由到
  `AUDIO_DEVICE_IN_BUILTIN_MIC`（0x80000004，底部主麦），电平最佳。
- 坑：`AudioRecord.getRoutedDevice()` 的 app 层报告不可信（报主麦但 HAL 实际是后置麦），
  只有 audio_flinger dump 是真相；解析 dump 只取 `Standby: no` 的活动录音线程。
- VOICE_COMMUNICATION(source 7) 在该 ROM 不稳定，平台 AEC 会把人声门控到数字静音，弃用。

**修复（IntercomManager.kt）：**
1. 保留 `MODE_IN_COMMUNICATION`，**删除 `isSpeakerphoneOn = true`**（对讲时本地直播静音，
   扬声器本就无声，不影响体验）。
2. AudioRecord 构造后 `setPreferredDevice()` 钉选 `TYPE_BUILTIN_MIC`（双保险，日志记录成败）。
3. 保持 MIC(source 1) / 8kHz / MONO / PCM16，与 G.711 帧结构（160 short = 20ms）兼容。
4. 编码前加软件 AGC（新增 `audio/AudioGain.kt`）：目标 RMS 2800、门限 gateRms=120
   （实测环境底噪 RMS 14~20，留 6 倍余量）、增益 1~12 倍、软限幅 26000。
5. 回声仍靠半双工 `setLocalMuted(true)`（说话时静音本地直播）。

**验证：**
- HAL dump 活动录音线程 = `AUDIO_DEVICE_IN_BUILTIN_MIC`，source=1，8000Hz（已确认）。
- debug.log：`setPreferredDevice(底部主麦)=true`、`录音已启动 实际路由=底部主麦`、
  RTMP `NetStream.Publish.Start` 服务端确认、423~476 帧/次正常发送。
- **待办：人声音量端到端验证尚未做**（用户当时不方便说话）。环境噪声下原始峰值 80~270
  属正常；需用户配合说话后看"原始峰值/AGC后峰值"，预期原始峰值 >1000、AGC 后 9000~17000。

### 3.2 清晰度按钮与实际画质反转（108 组实测数据）

- 配对 108 组 code-22 请求与 PLAYER 渲染分辨率日志：**wire stream=1 → 640x720（流畅），
  stream=0 → 1920x2160（高清）**。旧常量 `STREAM_HIGH=1 / STREAM_FLUENT=0` 正好标反。
- 修复：WsClient 交换常量值（`STREAM_HIGH=0 / STREAM_FLUENT=1`）；LiveActivity 默认取流
  保持 wire=1（与原版默认一致，流畅起播）；两布局按钮初始文字改为"流畅"。
- 影响面：全部引用走符号常量，PlaybackActivity 仅借常量探测 RTMP 主机，无副作用。

### 3.3 本地录像 size=0：RTMP play 流名拼接错误

**根因（服务端 onStatus 原文）：**
- 录制器复用 `RtmpPublisher.parse()`，它把 URL `rtmp://host:7768/video/<sn>/1` 切成
  app=`video/<sn>`、streamKey=`1`；而服务端规范是 app=`video`、play 名=`<sn>/1`。
- 服务端回 `NetStream.Play.StreamNotFound`，details 显示查找名被拼成 `<sn>/1/1`，
  15 秒后主动断开 TCP，0 条媒体消息、文件 0 字节。
- 对讲上行（publish）用旧切分能容忍，**故只改录制器播放路径，不动 RtmpPublisher**。

**修复（RtmpRecorder.kt）：**
- start() 内按 RTMP 规范重新切分：app=首个路径段（`video`），playName=其余段拼接（`<sn>/1`），
  tcUrl=`rtmp://host:port/video`；connect/createStream/play 全部使用新值。
- 同时补齐全链路诊断日志（connect/createStream 回包、每条消息 type/len、AMF onStatus 文本、
  读取线程退出原因、stop 统计），并新增 `extractAmfStrings()` 提取 AMF 文本。

**验证：**
- 实测 15 秒录像：594 个 RTMP 媒体消息，产出 1,173,204 字节 .flv。
- 自写 FLV 遍历器校验：594 tag 全部 PreviousTagSize 自洽、精确收尾到 EOF；
  378 音频 tag（G.711 A-law，音频头 0x7?）、213 视频 tag（首字节 0x1C = 增强 FLV/ExVideo，
  新版 VLC 可播）、3 script tag（@setDataFrame/onStatus/onMetaData，编码器 Lavf58.12.100）。
- 录像保存路径：`/sdcard/Android/data/com.albert.xiaoguyun/files/Movies/xiaoguyun/*.flv`。
- 历史遗留的 0 字节 .mp4/.ts（VlcRecorder 时代产物）仍在设备目录，可手动删除。

### 3.4 新功能：补光灯开关（对齐原版，code 11 "led"）

原版反编译依据：`DGSocketRepository.getLedSetParam`、`VideoLiveActivity.setLed/requestLedSet`、
`VideoLiveClickControl`（ibVox/ibLedLand 两个切换按钮）。

协议（2026-11-23 晚真机实测确认）：
- 发送：`frame(11, "led", sn, {"led": n})`；**n=1 开、n=0 关、n=3 查询当前状态**。
- 回包实测两种形态：
  - 正常应答 `{"data":{"led":1,"utc":...},"code":11,"message":"ok"}`，data.led 即真实状态；
  - 早期在旧 socket 上收到过 message="led"、data.led=3 的回显帧（非真实状态），
    代码对 3 按"关态呈现"兜底，与原版 `setSelected(led==1)` 语义一致。
- 原版进直播页自动发 led=3 查询；开启后 **5 分钟（300000ms）自动关闭**。

实现：
- WsClient：`sendLed()` 补全 KDoc（原 TODO 已落实），新增 `requestLedState(sn)`。
- LiveActivity：btnFillLight 点击切换；rawListener 处理 code 11 回包刷新状态；
  Handler 实现 5 分钟自动关（onDestroy 清理回调）；开启时按钮琥珀色 #FFB300，关闭恢复主题色。
- 竖屏通栏按钮、横屏与全屏/复位/追踪同行（四等分），两布局 id 一致。

**真机验证中发现并修复的两个问题：**
1. **进页面查询帧被静默丢弃，按钮永久停在"查询中…"**：LiveActivity 新建 WsClient 后
   立即在 onCreate 发 led=3，此时 socket 未开；`sendRaw()` 未连接时只写 WS>> 日志并返回 false，
   帧实际没发出，新 socket 上永远等不到回包。修复：`requestLedState()` 改走
   `runWhenSubscribed {}` 门控（等 state-90 订阅 ack，最多等 3 秒）再发。
2. **回包丢帧无兜底**：新增 `ledQueryTimeout`（8 秒），若按钮仍是"查询中"则按关态呈现；
   手动切换检查 sendLed 返回值，socket 未开时 Toast 提示且不做乐观翻转；onDestroy 清理该回调。

**真机验证结果（22:55-22:58，平板 Redmi Pad Pro）：**
- 进页面 led=3 查询 → 服务端 ok 回包 data.led=1（设备灯当时确为开），按钮正确显示"开"。
- 手动关：发 led=0 → 回 ok led=0 → 按钮"关"（主题色）；手动开：发 led=1 → ok led=1 →
  按钮"开"（琥珀色）。指令/回包/UI 三者闭环，日志均有"补光灯状态回包"记录。
- 横竖屏布局均验证：横屏紧凑两栏、竖屏四个分区标题（画面与声音/抓拍与录像/云台控制/语音对讲）
  与补光灯按钮全部在视图树中（uiautomator dump 确认）。

### 3.5 页面优化（直播页，两布局同步）

- 分区标题："画面与声音 / 抓拍与录像 / 云台控制 / 语音对讲"，13sp 灰色加粗，控件按功能分组。
- 删除用户可见的开发者技术长文（code 26、G.711A、HyperOS、RTMP 末位改 3 等），
  替换为一句用户向提示；"预置位/巡航不存在"的解释性文字移除（本就无入口）。
- 对讲按钮：minHeight 56dp、加粗；按下变红色 #D32F2F + 文案"正在说话…（松开结束）"，松开复原。
- 录像按钮：录制中变红色 #D32F2F，停止恢复主题色。
- 补光灯按钮：开=琥珀色，关=主题色。
- 所有 view id 保持不变，逻辑代码无破坏性改动。

### 3.6 AUDIT-v1.1.3 遗留项顺手清理（低风险四项，2026-11-23 晚）

1. **M12 列表页返回不刷新（已真机验证）**：DeviceListActivity 新增 `onResume()`，
   首次 resume（onCreate 已加载）跳过，之后从详情/直播返回自动 `loadDevices()`。
   实测：启动只发 1 次 deviceBind/list；从直播页 BACK 返回后自动再发 1 次并刷新。
2. **P1 找回密码重发验证码类型错误（编译核验）**：LoginActivity 的 btnSend 原来固定
   `sendSms(forgot=false)`（10011 注册短信），改为按 `forgotMode` 选择，找回流程重发走 10012。
3. **P2 录音权限授权后无反馈（编译核验）**：LiveActivity 补 `onRequestPermissionsResult`，
   授权/拒绝均 Toast 明确提示。**有意不自动开对讲**：按住说话模型下授权弹窗关闭时手指已抬起，
   自动 start 没有配对的 ACTION_UP 会导致麦克风卡在讲话状态；提示用户再按一次更安全。
4. **M4 code 53 帧格式错误（编译核验，当前无 UI 调用点的死代码）**：setRecordTimeList
   原来把参数包成 `{"data":{"data":"<param>"}}`，按原版改为裸字符串 `"data":"<param>"`，
   用 sendRaw 直发完整帧，返回 Boolean。

### 3.7 APK 体积分析：为什么 release 只有 6.1 MB（旧构建约 87 MB）

**结论先说**：87 MB 那版把 `org.videolan.android:libvlc-all:3.6.0`（约 78 MB 的 AAR，
内置 arm64-v8a / armeabi-v7a / x86 / x86_64 四套 VLC 原生 .so）打进了包；当前版本已彻底移除
libVLC（v1.2.2 用 Media3 播放 + RtmpRecorder 直存替代），且只保留 2 个 ABI，
所以体积从约 87 MB 降到 6.1 MB。**功能不是被裁掉，而是换成了更小的实现。**

实测拆包（`dist/xiaoguyun-1.2.4-release.apk`，6,105,805 字节）：

| 组成 | 原始字节 | 压缩后 | 说明 |
|---|---|---|---|
| `classes.dex` | 7,734,660 | 3,193,235 | Media3/OkHttp/Gson/Kotlin 标准库，未开 R8 混淆压缩 |
| `classes2.dex` | 6,208,372 | 2,152,781 | 同上（dex 超 64K 方法数自动分包） |
| `resources.arsc` | 315,656 | 315,656 | 资源索引，APK 中强制不压缩 |
| `res/`（388 个文件） | ~291,601 | — | 布局/图片/多语言 |
| `lib/arm64-v8a/librtmp-jni.so` | 92,072 | 92,072 | 唯一保留的原生库：RTMP 推流 JNI |
| `lib/armeabi-v7a/librtmp-jni.so` | 67,168 | 67,168 | 同上，32 位 ABIs |
| 其余（manifest/META-INF/assets） | ~15 KB | — | — |

要点：
1. **原生库只有 159 KB**。对比旧包：libVLC 的 .so 单架构就有 20 MB 级、四架构合计约 78 MB，
   这是 87 MB 的绝对主因。
2. **dex 原始 13.9 MB、压缩后 5.3 MB**，占了本包 87% 的体积。原因是 `isMinifyEnabled = false`
   （release 未开 R8），三方库代码全量保留。若将来要再瘦身：开 R8 + `shrinkResources`，
   预计可降到 3~4 MB，但需要回归测试反射/Gson 模型，**本轮刻意不做**（稳定性优先）。
3. `abiFilters` 只有 `arm64-v8a` + `armeabi-v7a`；平板是 arm64，x86 模拟器包不参与。
4. 包内没有 assets 视频/模型等大文件，也没有多套 ABI 的重复原生库。

---

## 4. 关键文件清单

| 文件 | 本轮改动 |
|---|---|
| `app/build.gradle.kts` | 版本 15/1.2.3 → 16/1.2.4；release 复用 handover 签名；开启 buildConfig |
| `ui/IntercomManager.kt` | 去强制扬声器、setPreferredDevice 主麦、接入 AudioGain、路由日志 |
| `audio/AudioGain.kt` | 新增：软件 AGC（gateRms=120，增益 1~12，软限幅） |
| `audio/MicSelfTest.kt` | 新增（诊断工具，广播注册已用 `BuildConfig.DEBUG` 门控，仅 debug 生效） |
| `player/RtmpRecorder.kt` | 修 app/playName 切分；全链路日志；FLV 写入逻辑不变 |
| `ws/WsClient.kt` | 清晰度常量交换；sendLed/requestLedState（查询走 runWhenSubscribed 门控）；M4 修 code 53 帧 |
| `ui/LiveActivity.kt` | 补光灯（回包/查询超时兜底/发送失败保护/5 分钟自动关）、按钮视觉反馈、默认流畅、MicSelfTest 注册、P2 权限回调 |
| `ui/DeviceListActivity.kt` | M12：onResume 返回自动刷新（首次不重复） |
| `ui/LoginActivity.kt` | P1：找回密码模式重发验证码走 10012 |
| `res/layout(-land)/activity_live.xml` | 补光灯按钮、分区、文案精简、对讲主按钮样式 |
| `.gitignore` | 白名单放行 `dist/*.apk`（release 包随分支交付，本地 build 输出仍忽略） |
| `dist/xiaoguyun-1.2.4-release.apk` | 随分支交付的 release 安装包（不建 GitHub Release） |

---

## 5. 待办与风险（下一位接手优先看）

1. **对讲人声端到端验证（用户选择稍后再验，唯一未闭环高优项）**。操作步骤：
   ① 平板打开直播页，等三画面出流；② 按住"对讲（按住说话）"按钮，用正常音量
   对平板底部麦克风持续说话 10 秒后松开；③ 拉取
   `/sdcard/Android/data/com.albert.xiaoguyun/files/debug.log`，过滤 `TALK 麦克风电平`，
   预期说话时**原始峰值 >1000、AGC 后峰值 9000~17000**（环境底噪原始峰值仅 74~127，
   对比非常明显）；④ 同时请人在摄像头旁确认喇叭能听到人声。
   若原始峰值仍 <300：先查 `TALK 录音已启动 实际路由=` 是否为底部主麦，再考虑
   `audio/MicSelfTest.kt` 广播自检（adb am broadcast -a com.albert.xiaoguyun.MIC_SELF_TEST
   -p com.albert.xiaoguyun，约 40 秒，结果写同一 debug.log）。
2. ~~发布前移除 MicSelfTest~~ **已完成（2026-11-24）**：改为 `if (BuildConfig.DEBUG)` 门控，
   release 包不注册该广播；debug 包保留，因为待办 1 的人声验证可能还要用它。
   `MicSelfTest.kt` 与 import 仍在，属 debug-only 资产，不再影响正式包。
   后续若要彻底移除，删注册块 + import + 该文件即可。
3. **补光灯 5 分钟自动关未做长等实测**：逻辑与原版同参数（300000ms），代码路径已核验；
   协议开关与回包已真机闭环（见 3.4）。后续可顺手观察一次自动关。
4. **增强 FLV 兼容性**：录像视频 tag 为 0x1C 增强 FLV（摄像头推流即如此），旧播放器可能不认；
   新版 VLC/ffmpeg 5+ 支持。若用户反馈无法播放，再评估录制端转封装为标准 AVC/HEVC tag。
5. v1.2.2 黑屏回归：本轮直播三画面渲染正常，未复现；保持观察。
6. AUDIT-v1.1.3-review.md 进度：S2（401 死循环）、M9（云台 dir=0）、M10（0x72/竞态）、
   M14（stream 映射）已在历史版本修复；本轮再清 M4/M12/P1/P2（见 3.6）。
   **仍未处理的主要项**：S1 分享接口 body 形状（需实测 useful 单位）、M1 pending 单槽竞态、
   M2 SD 回放超时、M5 云下载依赖取流、M6 明文 HTTP 跳过 token 刷新、M7 WS 多连接单例化、
   M8 SN 第 5 位判 netType、M11 侦测设置硬编码 led=1（可复用本轮 code 11 查询能力修）、
   P3 云台反转、P4 RTMP 缓存单例化。按用户优先级排期。
7. 勿再添加 code 3 link 帧（v1.1.2 曾导致摄像头重置丢 WiFi，见 WsClient 注释）。
8. 无预置位/巡航命令：原版静态代码确认不存在，勿编造。

---

## 6. 环境与操作手册（仓库内不含任何密钥）

- JDK17、Gradle 8.2（无 wrapper，用 gradle.bat）、Android SDK（android-34）、
  platform-tools/adb 的具体路径见本机 `.toolchain/` 与 local.properties（均在仓库外或 gitignore）。
- 构建：设置 `JAVA_HOME`、`ANDROID_SDK_ROOT` 后 `gradle.bat assembleDebug --console=plain`；
  产物 `app/build/outputs/apk/debug/app-debug.apk`（*.apk 已 gitignore，不会入库）。
- Release 构建：`gradle.bat assembleRelease --console=plain`；产物
  `app/build/outputs/apk/release/app-release.apk`（v1.2.4 实测 6,105,805 字节 / 6.1 MB）。
  签名核验：`apksigner verify --print-certs app-release.apk`（本机 build-tools 36.0.0）。
- 装机：`adb install -r`；App 内日志：`/sdcard/Android/data/com.albert.xiaoguyun/files/debug.log`
  （HyperOS 屏蔽第三方 logcat，必须拉此文件）。
- 系统级诊断：`adb shell dumpsys media.audio_flinger`（只看 Standby: no 的线程）。
- 原版反编译源码在云服务器（连接方式与凭据见仓库外交接材料，**禁止入库**）。

### PowerShell 5 / adb 踩坑（实测）
1. `[byte] -shl 8` 在 byte 宽度内溢出得 0，位移前必须 `[int]` 强转。
2. `$b[$i+1] -shl 16` 会被解析成 `$b[($i+1) -shl 16]`，索引用中间变量拆开。
3. 远程 ssh 命令含括号/双引号时，PowerShell 用单引号包整条命令，grep 模式内部避免 `(`。
4. `adb exec-out screencap -p > x.png` 会因 CRLF 损坏二进制；先 `screencap` 到 /sdcard 再 pull。
5. adb `am broadcast` 是 shell uid，动态广播必须 RECEIVER_EXPORTED，否则静默丢弃。
6. `TYPE_BUILTIN_BACK_MIC`(API31=27) 在 android-34 平台 jar 编译不可见，用字面量 27。
7. PowerShell 5 不支持 `&&`、不能用 cmd /c、.ps1 可能被执行策略拦截，优先 .cmd。
8. git 命令加 `--no-pager`；只在用户明确要求时提交/推送；不推 main。
9. **本机直推 GitHub 会卡死 — 真实根因已查明（2026-11-24）**：不是网络，是 Git 凭据助手
   `git-credential-manager get` 挂起。该进程由 `git push` 拉起，在无 GUI 可见的会话里等待凭据
   输入，空转 11 小时、累计 CPU 645 秒，`git` 因此一直阻塞（表象为 TCP 停在 Bound）。
   处理：`Stop-Process` 杀掉即可，无副作用；推送仍走服务器中转。
   **以后不要在本机直接 push 该仓库**，否则又会拉起同一个挂起进程。
   可行路径：`git bundle create` 打包分支 → scp 到新加坡服务器 → 服务器上 clone bundle 后
   用 GIT_ASKPASS（token 运行时从服务器交接文档 grep，脚本用完即删）推 GitHub。
   中转脚本模板在本机 `.toolchain/push-relay.sh`（仓库外，不含 token）。
10. 平板切竖屏：`adb shell settings put system accelerometer_rotation 0; settings put system user_rotation 0`，
    恢复自动旋转：`accelerometer_rotation 1`（`cmd window set-user-rotation` 在 HyperOS 3 不存在）。

---

## 7. 本轮自动化测试记录摘要

- 对讲两次 9~10 秒会话：volplay 回包、RTMP Publish.Start、423/476 音频帧、HAL 主麦路由，全部正常。
- 录像 15 秒会话：StreamNotFound 修复后 594 媒体消息、1.15MB FLV、结构校验 0 错误。
- 清晰度：108 组请求/分辨率配对统计，stream1=640x720（70 次）、stream0=1920x2160（8 次）。
- 补光灯（22:55-22:58）：led=3 查询回 ok led=1；手动 0/1 各一轮均回 ok 且按钮状态色正确翻转；
  竖屏四分区标题、横屏紧凑布局经 uiautomator 全部确认。
- 录像回归（23:05，修复后的新包）：15 秒录像 675 媒体消息、1,448,640 字节 FLV；
  自写解析器校验 675 tag（430 音频/242 视频/3 script）PreviousTagSize 全自洽、精确 EOF；
  日志无 StreamNotFound，读取线程正常退出。
- 清晰度回归（23:07）：流畅→高清三路画面全部重渲为 1920x2160，高清→流畅发 stream=1 回到 640x720，
  按钮文字与实际分辨率一致。
- 对讲机械链路（23:08，模拟按住 7 秒）：路由=底部主麦、Publish.Start 确认、326 帧/7.1 秒、
  停止干净；环境噪声原始峰值 74~127、RMS 13~35（低于 gateRms=120 不放大，符合设计）；
  一次瞬时峰值 541 被 AGC 放大到 4240（约 7.8 倍），增益链有效。**仍缺真人说话端到端确认（见待办 1）。**
- 全部构建 BUILD SUCCESSFUL；debug APK 已安装平板并完成上述回归。

### Release 打包（2026-11-24 01:25）
- 变更：`buildTypes.release` 复用 handover 签名（此前 release 无签名配置，只能产出 unsigned 包）；
  开启 `buildFeatures.buildConfig = true`；MicSelfTest 诊断广播改为 `if (BuildConfig.DEBUG)` 门控，
  **release 包不再注册该导出广播**（原注释即要求发布前移除）。
- `assembleRelease` + `assembleDebug` 均 BUILD SUCCESSFUL；`app-release.apk` 6,105,805 字节。
- `apksigner verify --print-certs` 通过：签名者证书 `CN=Android Debug`，
  SHA-256 `6f411583767986c50636fe1903e8da691ac4bc80f06f1133746787bbf3a658b0`，
  与 debug 包同一证书 → 可覆盖安装平板现有版本。
- **真机未验证（诚实标注）**：打包时平板 adb 已离线（`adb devices` 空、`adb mdns services` 无发现），
  release 包本轮仅完成构建 + 签名核验；下次设备可用时执行
  `adb install -r app-release.apk` 做一次冒烟（重点看三画面出流、补光灯、录像）。

### 推送记录
- 分支 `v1.2.4-led-recording-ui`，不推 main、不建 Release；远端与本机该分支保持同步，
  关键提交链：c534b43（功能集）→ b6809b3（补光灯门控修复）→ 2d01a0e（回归记录）
  → c819c54（审计四项清理）→ c3c5e5e（release 签名/门控/APK）→ 其后为文档同步提交。
- 本机直推 GitHub 卡死（见踩坑 9），改用 bundle + 新加坡服务器中转；服务器侧临时 askpass
  脚本与 bundle 用完即删（已 ls 核验），token 未出现在任何提交/文档/本机磁盘中。

---

## 8. 接手后操作流水（按时间顺序，含失败尝试）

> 这一章记录"实际做了什么"，方便下一位复现或跳过弯路。全部在本机 `d:\Dev\tare\xiaoguyun` 下完成。

1. **读服务器交接材料**：ssh 到新加坡服务器 `grep` 交接文档，取 GitHub 仓库地址与 token 使用方式
   （token 只在内存/临时 askpass 中使用，未落盘、未写进任何文件）。原版反编译源码在
   `/root/daguyun/jadx-out/`，用于比对补光灯协议。
2. **补光灯实现**：WsClient 补 `sendLed`（原 TODO）+ `requestLedState`；LiveActivity 加按钮、回包处理、
   5 分钟自动关；两布局各加 `btnFillLight`。
3. **首次真机验证 → 发现两个缺陷**：
   - 进页面 led=3 查询被静默丢弃（`sendRaw` 未连接只写日志返回 false）→ 改 `runWhenSubscribed` 门控；
   - 回包无兜底 → 加 8 秒 `ledQueryTimeout` + 手动切换检查 `sendLed` 返回值。
   修复后实测：查询回 ok led=1、手动 0/1 均回 ok、按钮紫/琥珀翻转正确。
4. **页面验证**：横屏（默认）截图比对；用 `settings put system user_rotation 0` 切竖屏，
   uiautomator dump 确认四个分区标题与全部控件存在，随后恢复自动旋转。
5. **录像回归**：15 秒录像 → 675 tag / 1,448,640 字节，自写解析器验证 PreviousTagSize 自洽、精确 EOF。
6. **清晰度回归**：流畅↔高清往返，三画面分辨率与按钮文案一致。
7. **对讲机械链路**：`adb shell input swipe` 模拟按住 7 秒 → 主麦路由、Publish.Start、326 帧、
   峰值 541→AGC 后 4240；底噪不放大符合门限设计。**人声端到端仍缺（需用户配合）。**
8. **首轮推送尝试失败**：本机 `git push` 卡死 10 分钟 → 杀进程 → 改 **bundle + 服务器中转**，成功。
   事后（11-24）复查进程列表才发现真凶：`git-credential-manager get` 残留进程从 22:43 挂到次日、
   CPU 累计 645 秒，即"卡死"其实是凭据弹窗在无界面会话里永远等不到输入。已 `Stop-Process` 清理。
   教训：本机 git 操作卡住时先看 `Get-Process git-credential-manager`，不要只盯网络状态。
9. **中转脚本踩坑**：第一版用 `git clone <bundle>` + `git push` 失败（bundle clone 后没有本地分支，
   `-u origin <branch>` refspec 找不到）；改为 `git init` + `fetch refs/heads/*:refs/remotes/bundle/*`
   + `checkout -b` 后推送成功；同时加 `trap ... EXIT` 保证清理，避免 `set -e` 中断导致残留。
10. **审计遗留清理**：M12（onResume 首次跳过）、P1（找回密码短信类型）、P2（权限回调，有意不自动开对讲）、
    M4（code 53 帧 data 改裸字符串）。M12 真机验证：启动 1 次请求、返回再 1 次。
11. **release 打包**：release 原无签名 → 复用 handover 签名；AGP 8.2 默认不出 BuildConfig →
    `buildFeatures.buildConfig = true`；MicSelfTest 广播改 `if (BuildConfig.DEBUG)`；
    `assembleRelease` + `assembleDebug` 成功；`apksigner verify` 核验证书。
12. **交付方式**：`.gitignore` 加 `!dist/`、`!dist/*.apk` 白名单，release APK 放 `dist/` 随分支推送；
    工作区根目录与仓库内各存一份本文档。

## 9. 关键决策与理由（为什么这么做）

1. **对讲不强制开扬声器**：HAL 证据表明 `MODE_IN_COMMUNICATION` + 扬声器开会把麦克风路由到
   BACK_MIC（-60 dBFS）；改为 `setPreferredDevice(BUILTIN_MIC)`，牺牲"免提外放"换取可靠上行。
2. **AGC 门限 120**：环境底噪 RMS 14~20，门限 180 会吞掉正常说话起始段；120 只压真静音。
3. **补光灯查询走订阅门控而不是 sleep**：sleep 依赖时序，弱网必错；`runWhenSubscribed`
   以服务端 ack 为准，最多等 3 秒，语义正确。
4. **权限授予后不自动开对讲**：按住说话模型下，系统权限弹窗关闭时手指已抬起，
   自动 start 没有配对的 ACTION_UP，会让麦克风一直开着（隐私+流量风险），故只 Toast 提示。
5. **MicSelfTest 门控而非删除**：人声端到端验证还没做，debug 包需要这个诊断入口；
   release 用 `BuildConfig.DEBUG` 排除，兼顾"正式包不暴露导出广播"与"调试可用"。
6. **release 复用 debug 证书**：内测阶段唯一目的是覆盖平板现有安装、便于回归；
   仓库内不含密钥（local.properties gitignore，keystore 在 `.handover-ssh/`）。
   **上线渠道分发前应换正式签名**，否则与调试证书绑定。
7. **不推 main、不建 Release**：用户明确约束；APK 通过 `dist/` 目录随分支交付。
8. **不开 R8**：可再省约 2 MB，但反射/Gson 模型有回归风险，本轮以稳定优先（见 3.7）。
9. **FLV 不转封装**：摄像头原生推 0x1C 增强 FLV，转封装需重编码/重写 tag，收益低、风险高；
   先观察用户播放器兼容性。
