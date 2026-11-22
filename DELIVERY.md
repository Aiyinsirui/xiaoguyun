# 小谷云 v1.1.0 — 交付说明

APK：`~/workspace/your_files/xiaoguyun-app-debug.apk`（87 MB，debug 签名）
源码：`~/workspace/your_files/xiaoguyun/`（Kotlin Android 工程，服务器构建目录 `/root/xiaoguyun-build/`）
审计清单：`~/workspace/your_files/xiaoguyun/AUDIT.md`（全部非 VIP REST 端点与 WS 命令码，逐项分类）
包名：`com.albert.xiaoguyun`，应用名：小谷云，versionCode 2 / versionName 1.1.0，minSdk 24 / targetSdk 33（compileSdk 34，仅编译用）
MD5：`28684d037e5bf0aadb42948bbd3ea718`

## 验证结果（2026-11-22，服务器上完成）
- `aapt dump badging`：包名 `com.albert.xiaoguyun`、versionCode 2、versionName 1.1.0、minSdk 24、targetSdk 33、应用名 小谷云均正确；启动 Activity 为 `com.albert.xiaoguyun.ui.LoginActivity`。
- `aapt dump xmltree AndroidManifest.xml`：7 个 Activity 齐全：Login、DeviceList、Live、Playback、DeviceDetail、SdCard、Messages。
- `apksigner verify`：通过，1 个签名者（debug 签名）。
- dex 检查：广告 SDK 包名（穿山甲/ByteDance、优量汇、TopOn/AnyThink、百度、快手、Sigmob、友盟、原 App 聚合层 `hzjizhun`、`com.dgiot`、`ad.daguiot`、Google/Facebook 广告、AppLovin、IronSource、Unity、Vungle、InMobi、Mintegral）计数均为 0。
- 播放器：libVLC 3.6.0（`libvlc.so` / `libvlcjni.so` 已打进 APK），因 ExoPlayer 原生不支持 RTMP。
- 构建：`gradle assembleDebug`，BUILD SUCCESSFUL（25 秒）。编译警告仅为未使用参数/变量、已废弃的 `isSpeakerphoneOn` 存取、以及 `suspendCancellableCoroutine` 的实验性 API 提示，不影响构建。

## 审计结论（本次新增，见 AUDIT.md）
- 逐个读完 `DGApiRepository.java` / `DGApiRepositoryNew.java` / `DGSocketRepository.java` / `DGApiFileRepository.java` / `DGApiPushRepository.java` / `IotParamName.java` / `DGIotClient(.java)` / `DGIotClientManager.java` 及直播/录像/设置相关 Activity，全部非 VIP 端点与命令码已列成清单并分类（已确认可实现 / 需实测 / 无法静态确认 / 明确不做）。
- 新证实：云台 dir 上=1、下=2、左=3、右=4、停=0（v1.0 的假设正确）；`loca` 是文件内秒偏移；云回放走 getlist 下载后本地播、SD 回放走 code 23/24；预置位/巡航全仓无命令码；录像服务端删除全仓无端点。
- `DGApiRepositoryNew` 的 5 个 suspend 方法（广告×2、系统公告、在线查询、微信登录）类内无 URL 字面值，HTTP 层在另一 service 内无法静态确认；功能已被 `DGApiRepository` 的同名端点覆盖，不另实现。

## 实现的功能（v1.1.0 新增/补全）
- 云台完整：code 10 方向/速度/停止，按住 250ms 重发、松开单发停止；方向枚举已证实。
- 对讲完整：code 26 开关 + 8kHz 麦克风采集 → G.711 A-law（按原 App `G711Code` 逐行移植）→ 自写最小 RTMP 发布客户端推流到直播地址末位改 `3` 的地址，结束调 `http://<ip>:7788/closepath`；VOICE_COMMUNICATION 采集 + MODE_IN_COMMUNICATION + 通话时本地静音。**未实测。**
- 内存卡入口：设备详情 → 内存卡页，code 13 查卡（已用百分比）、code 12 格式化（二次确认）、SD 回放入口。
- 回放完整：云回放（WiFi getlist 新/旧地址 + 4G HTML 列表 → 下载后本地播）+ SD 回放（code 23/24/25/27/28，`loca` 已修正为 int 秒偏移）；日期前后切换、code 27 有录像日期、时间轴、下载、删除本地文件。
- 直播增强：抓拍（PixelCopy 存相册）、本地录像（第二路 VLC sout 写 mp4）、清晰度、静音、双摄切换（地址末位 1↔2 假设）。
- 设备设置与信息：REST 设备信息/在线/流量卡/ICCID + WS code 6/51/52；指示灯、移动侦测、追踪、翻转、录像参数查询、报警开关、PIR、录像时间表、云套餐查询；固件升级只提示不自动升级；重启；改设备名。
- 消息/报警列表入口：单设备与全部消息列表、删除消息、报警图地址展示。
- 分享设备、设备解绑/删除（二次确认）；忘记密码流程；注册/注销/云录像类型设置/推送开关 API 已接但无 UI（原因见 README）。
- v1.0 功能全部保留：手机号+密码登录、短信验证、设备列表、直播、token 3 天刷新拦截器、退出只本地清 token。

## 未实测（明确说明）
- 没有用任何真实账号登录过，没有发过密码；登录、设备列表、WS 握手/订阅、code 22 取流、RTMP 播放均未在真机上跑通。
- 登录界面可打开：仅由 manifest（LoginActivity 为 LAUNCHER）+ 布局资源存在验证，未在真机/模拟器上点开过——服务器上无 Android 设备/模拟器。
- 对讲音频上行、本地录像 sout、抓拍 PixelCopy、双摄切换、云回放 getlist（token 头、下载 IP 来源）、分享 `useful` 语义，均未实测；代码里均有 TODO，实测输入见 README。

## 静态定不死的点（代码里均有 TODO，见 README 第 12 条清单）
RTMP 地址形态、stream 映射、code 100001/401、getlist token 头与 `type`/`days`、V3 多余字段、`loca` 已确认为秒偏移、预置位/巡航无码、录像服务端删除无端点、对讲 FLV 音频标签首字节 `0x70`、双摄 1↔2 假设、分享有效期/注册 `oneKey`/录像参数枚举/格式化帧 message/ code 52 回包字段、`isVersionOk` 版本门、刷新接口行为。

## 构建说明
- 服务器：Altare，`/opt/android-sdk`（platforms 33/34、build-tools 33.0.2）+ Gradle 8.2（`/opt/gradle-8.2/bin/gradle`）+ OpenJDK 17；`gradle assembleDebug`，BUILD SUCCESSFUL。
- compileSdk 用 34 是因为 androidx core/lifecycle 2.7.0 要求至少 34；targetSdk 仍按要求保持 33。
- 构建用 nohup + 日志文件跑（避免 SSH 断开杀掉客户端进程）。
- 同步注意：服务器上的 GNU tar 解该工程的 tar 包会报 `Cannot mkdir`（原因未明，Python `tarfile` 可正常解压），本次同步改用 `python3 -c "import tarfile; ...extractall(...)"`。

## 用户实测时需要的最小信息
- 登录方式：手机号+密码（已实现；短信只能校验，不能直接登录）
- 一个设备 SN
- 设备是 WiFi 还是 4G
- 实测时看到的错误文案 / 返回 JSON（不要发密码）
