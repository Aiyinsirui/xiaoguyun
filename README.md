# 小谷云 — 无广告干净客户端（v1.1.0）

包名 `com.albert.xiaoguyun`，应用名 小谷云，minSdk 24 / targetSdk 33。
只用自己的大谷云账号登录自己的设备。零广告：未集成任何广告 SDK。
完整静态审计清单见 `AUDIT.md`（全部非 VIP REST 端点与 WS 命令码，逐项分类）。

## 功能（v1.1.0 新增/补全）
- 登录：手机号+密码登录（密码 AES 加密后才发，见 `net/AesUtil.kt`；密码不本地保存，只存 token）；短信验证（发码 + 校验）；**忘记密码**（短信码 + 新密码，`POST /user/V3/setPwd`，按原 App 该接口 pwd 不加密）
- 设备列表（`GET /deviceBind/list?owned=1` 为主，V3 为备用），WS code 90 订阅在线状态为准；每台设备有“详情”入口；顶部“消息”入口
- 直播：WS `wss://vlink.daguipc.com:9443/cloud` + code 22 取 RTMP 地址，libVLC 播放，40 秒地址缓存复用
- 清晰度切换（stream 1/0）、静音、**抓拍**（PixelCopy 保存到相册 /XiaoGuYun）、**本地录像**（第二路 VLC `sout` 写 mp4）、**双摄切换**（RTMP 地址末位 1↔2，假设，未实测）
- 云台完整：code 10，方向已证实（上=1、下=2、左=3、右=4、停=0），按住每 250ms 重发、松开单发停止；**预置位/巡航无入口**（全仓无对应命令码，见 AUDIT.md）
- 对讲完整：code 26 开关 + 8kHz 单声道麦克风采集 → G.711 A-law（`net/G711.kt`，按原 App `G711Code` 移植）→ 自写最小 RTMP 发布客户端（`net/RtmpPublisher.kt`）推到直播地址末位改 `3` 的地址；结束调 `http://<ip>:7788/closepath`；回声处理：VOICE_COMMUNICATION 采集 + MODE_IN_COMMUNICATION + 通话时本地静音。按住说话，松开结束
- 内存卡入口（设备详情 → 内存卡）：code 13 查卡（已用百分比）、code 12 格式化（二次确认）、SD 回放入口
- 回放完整：**云回放**（getlist：WiFi 走 `newcloud.daguipc.com/getlist` 优先、`dos.dagucloud.com:7736/getlist` 回退；4G 走 `cloud.daguiot.com:7738` HTML 列表 → 下载后本地播）+ **SD 回放**（code 23 列表 + code 24 取流，`loca` 已修正为 int 秒偏移 + code 28 快进 + code 25 暂停/继续/关闭）；日期前后切换、code 27 有录像日期、时间轴（云按文件时长、SD 按日内秒数）、下载、删除本地文件
- 设备详情与设置：REST 设备信息/在线/流量卡/ICCID、WS code 6 基础信息（SN/固件 sv/硬件 hv/SSID/信号/电量）、code 51 电量、code 52 WiFi 信息；指示灯 code 11、移动侦测 code 14/15、追踪 code 16/17、画面翻转 code 18/19、录像参数查询 code 21、报警开关 code 35/36、PIR code 58/59、录像时间表 code 54、云套餐 code 40；云套餐 REST 查询（只读）；固件升级只提示（查 `/up-md5/getUrl`，不自动升级、不发 code 8）；重启 code 7；改设备名
- 消息/报警列表：`GET /message/device/list`、全部消息 `POST /message/list`、删除 `POST /message/del/msgs`；报警图地址 `pic.dagucloud.com:7736 + pic`
- 分享设备：分享给手机号（`POST /deviceBind/device/sharePhone`）、分享列表、取消分享、退出分享设备；设备解绑/删除（`GET /deviceBind/device/del`，二次确认）

## 明确不做
VIP 会员、云存储购买、付费页面、支付 H5（`m.daguiot.com/#/hs/pay` 等）、微信支付/微信登录、任何广告 SDK、注册 UI（API 已接，`oneKey` 字段含义未展开）、注销账号 UI（API 已接，`POST /user/cancel` 传裸 JSONArray 的行为须抓包确认）、推送（无推送 SDK，`deviceToken` 相关口传空串）。

## 构建
服务器：`/opt/android-sdk`，Gradle 8.2（`/opt/gradle-8.2/bin/gradle`），`gradle assembleDebug`，产物
`app/build/outputs/apk/debug/app-debug.apk`。构建目录 `/root/xiaoguyun-build/`。
注意：服务器上的 GNU tar 解该工程的 tar 包会报 `Cannot mkdir`（原因未明，Python `tarfile` 可正常解压），同步请用 `python3 -c "import tarfile; ...extractall(...)"`。

## 未实测（无真实账号登录）
- 登录、列表、WS 取流、RTMP 播放均未用真实账号跑通。
- 短信登录：原 App 的短信接口只用于注册/找回，不返回 token，所以短信页校验通过后仍需密码登录；若服务端另有短信登录接口，需把它的 token 响应接进来。
- 对讲音频上行（RTMP 发布 + G.711A 标签字节）、本地录像 sout、抓拍 PixelCopy、双摄 1↔2 切换、云回放 getlist 的 token 头与下载 IP 来源，均未实测。

## 静态定不死的点（代码里均有 TODO，实测后改一行即可）
1. RTMP 地址完整形态：`parseRtmpAddress` 只取 `data.addr`，其余字段被丢弃；直播后缀、端口以外的形态以实测返回的完整 `data` JSON 为准。
2. stream 0/1 与清晰度映射：默认 1 为高清（原 App 默认值），切换时 `i ^ 1`；若反了，在 `WsClient.STREAM_HIGH/FLUENT` 处对调。
3. 云台 dir 枚举：**已证实**——上=1、下=2、左=3、右=4、停=0（`VideoLiveViewUtil.changePTZActionValue` + `VideoLiveClickControl.changeSteeringWheelDirection` 合成，见 AUDIT.md）；按一次各方向抓帧核对即可，不再是假设。
4. code 100001 / state:401：100001 原 App 直接 return；401 疑似 token 失效重订阅；当前忽略，实测 token 过期时观察。
5. WiFi getlist 的 token 头：已实现回放 HTTP getlist，先试 accessToken；若服务端要的是文件密钥，改 `ApiClient.wifiFileList` 的 token 取值。另：`type` 头暂传 `"video"`，`days` 默认取云套餐 `videoDuration`、无则 7。
6. V3 列表多余字段：只解析 `listResults`，有无 total/分页以原始 JSON 为准。
7. `loca` 是文件内秒偏移（文件名头 6 位 HHMMSS），不是云/SD 标志；SD 回放用 code 23/24，云回放用 getlist 下载后本地播。
8. 预置位/巡航：全仓无命令码，未实现。
9. 录像服务端删除：全仓无端点/命令码，只删本地已下载文件。
10. 对讲 FLV 音频标签首字节暂取 `0x70`（G.711A、rate 码 0）；若对方听到静音/杂音，先试 `0x72`。
11. 双摄切换：地址末位 1↔2 是假设；若实测 addr 无此后缀，按钮会提示并不执行。
12. 分享 `useful`（有效期）单位、注册 `oneKey`、录像参数 mode/qlty 枚举、code 12 格式化帧的 message 字面值（混淆常量）、code 52 WiFi 回包字段，均未展开，见 AUDIT.md。
另：`isVersionOk` 的版本门（sv 去点后数值 < 20012 才用 40 秒缓存）、刷新接口在 accessToken 未过期时的行为，同样需实测。

## 实测需要提供的最小信息
- 登录方式（密码登录即可）
- 一个设备 SN
- 设备是 WiFi 还是 4G
- 实测时看到的错误文案 / 返回 JSON（不要发密码）
