# 小谷云 v1.1.3 代码审查报告（比对原版大谷云 v9.0）

- 审查对象：小谷云 v1.1.3（包名 `com.albert.xiaoguyun`，versionCode 5），本地源码 `workspace/your_files/xiaoguyun/`，17 个 Kotlin 文件
- 比对对象：原版大谷云 v9.0（包名 `com.dgiot.speedmonitoring`）反编译源码，Altare 服务器 `/root/daguyun/jadx-out/sources/com/dgiot/speedmonitoring/`
- 审查方式：纯静态逐项比对，不登录、不调用真实接口、不碰账号密码、不改源码、不推 GitHub
- 审查范围：自动发送的全部帧/请求、用户点按才发的命令、回包解析、REST 接口、生命周期与重连、权限与推流、SD 卡与固件
- 结论先行：**致命 0 条，严重 2 条，一般 14 条，建议 4 条。没有发现第二个 v1.1.2 级别的“常规流程触发解绑/复位”问题。code 3 / link 已彻底删干净。v1.1.3 可以放心给用户测直播**（见 §4）。

报告里不含任何密钥、token、密码、手机号。

---

## 0. 头号核对：code 3 / link 是否删干净

**结论：干净。v1.1.3 全代码库不存在任何 code 3 发送路径，也不存在等效的解绑信号。**

- 逐文件核查全部 17 个 Kotlin 文件：`WsClient.kt` 中原 `sendLink` 方法已删除，只剩一段注释说明“code 3 DELIBERATELY NOT sent”；`LiveActivity.kt` 的 `onConnected()` 只发 code 90 订阅 + code 42 单设备订阅再取流，注释明确写了 v1.1.2 的教训；其余文件（`DeviceListActivity`、`DeviceDetailActivity`、`SdCardActivity`、`PlaybackActivity`、`IntercomManager`、`ApiClient`、`LoginActivity`、`MessagesActivity`、`RtmpPublisher`、`VlcPlayer`、`VlcRecorder`、`G711`、`AesUtil`、`TokenStore`、`Models`）均无 code 3 / `link` 字段发送代码。
- 仅有的 `link` 字样出现在只读位置：`DeviceDetailActivity` 展示 code 6 回包里的 `link` 字段值（纯显示，不发送），以及注释。
- 原版做法（核对基准）：`link=1` 只在绑定新设备时发（`pushDeviceInfoToDevice`），`link=0` 只在 REST 解绑成功后才发（`HomeFragment.unBindDevice` → `getPushBindInfo(sn, false)`）。小谷云 v1.1.3 两者都不发，与“不解绑”这一安全目标一致。
- 其余“只在解绑/删除/恢复出厂/格式化/重启/升级时才发”的帧，核查结果：
  - code 7 重启：只在设备详情页二次确认对话框后发送（`DeviceDetailActivity` “重启设备”对话框），无自动发送路径。
  - code 12 格式化：只在内存卡页二次确认对话框后发送（`SdCardActivity` “格式化内存卡”对话框），无自动发送路径。
  - code 8 升级：全代码库无发送点；固件检查只做 `GET /up-md5/getUrl` 查询并弹窗提示，从不自动升级。
  - REST 解绑 `GET /deviceBind/device/del?sn=`：只在设备详情页二次确认对话框后调用。
  - code 5 `disconnect`：`WsClient.sendDisconnect()` 存在但全代码库无调用点（与原版一致：原版退出直播也不发 code 5，`stopVideo` 只关本地播放器）。
  - 无恢复出厂命令码（静态代码中不存在）。

---

## 1. 问题清单

### 严重

#### S1. 分享接口三处 body 形状与原版错位，分享功能基本不可用

- 严重程度：**严重**（功能失效；无设备风险，不会导致解绑/复位）
- 位置：
  - 小谷云：`ApiClient.kt` → `shareBody()`（三处共用）、`shareToPhone()`、`shareToAccount()`、`acceptShare()`
  - 原版：`DGApiRepository.java` → `requestAccountShare`、`requestAccountShareAccept`、`requestBindDeviceByShare`
- 原版做法（三处各不相同）：
  1. 分享给账号：`POST /deviceBind/rabbit/device/share`，body 带 wrapper：`{code:41, message:"share", sn, data:{createDate, ownedUser, permission, sn, phone, targetPhone, useful, deviceToken:""}}`；
  2. 分享给手机号：`POST /deviceBind/device/sharePhone`，body **无 wrapper**：`{createDate, ownedUser, permission, sn, phone, useful, deviceToken:""}`；
  3. 接受分享：`POST /deviceBind/device/share`，body **无 wrapper**，形状与（2）相同。
- 小谷云做法：三处共用同一个带 wrapper 的 `shareBody()`，即 `{code:41, message:"share", sn, data:{createDate, ownedUser, permission, sn, phone, useful, deviceToken:""}}`。
- 后果：
  - `shareToPhone`（分享给手机号，详情页“分享”按钮的实际调用）：发了带 wrapper 的 body，原版该接口要的是无 wrapper 的 body，服务端大概率解析失败或直接拒绝，分享发不出去；
  - `shareToAccount`（分享给账号）：形状大体对，但 data 里缺 `targetPhone` 字段，目标账号信息不完整，分享可能失败或分享给错误对象；
  - `acceptShare`（接受分享）：同样发了带 wrapper 的 body，原版要无 wrapper，接受分享可能失败；
  - 叠加问题：`useful` 的单位静态未确认（小谷云按“天 × 86400 秒”换算，若服务端要的是天数或毫秒，分享有效期会错得离谱；`useful=-1` 是否代表永久也未确认）。
- 修复建议：把 `shareBody()` 拆成两个：有 wrapper 版（仅 `shareToAccount` 用，并补上 `targetPhone` 字段）与无 wrapper 版（`shareToPhone` 与 `acceptShare` 用）；`useful` 单位先用抓包或实测确认一例再定，不要猜。

#### S2. WS 收到 401（token 失效）后无限重连死循环，永不提示重新登录

- 严重程度：**严重**（功能失效 + 耗电 + 刷服务器；无设备风险）
- 位置：
  - 小谷云：`WsClient.kt` → `handleMessage()` 的 `401` 分支、`scheduleReconnect()`
  - 原版：`DGIotClientManager.java`（收到 `code==200 + state==401` 时在**同一连接**上重发 subdevice，且有失败计数 `setFailNum > 15` 时关闭 socket 的保护）
- 原版做法：401 时不关闭 socket、不重连，在原连接上重发订阅；失败计数超过 15 次才关闭。
- 小谷云做法：`401` 分支调 `client?.close()`，`onClose` 触发 `scheduleReconnect()`（1s → 2s → 5s → 10s 封顶退避），重连后 `onConnected` 重新订阅；直播页还会重新发 code 22 取流。token 已失效，重连后服务端必定再回 401，于是**每 10 秒循环一次，永不停止，没有次数上限，也不提示重新登录**。
- 后果：用户一旦在别处改了密码、token 被服务端吊销、或 refresh token 也过期，小谷云会在列表页/直播页里无限闪“信令断开/信令错误”，耗电并持续向服务器发无效连接；用户只能杀进程或手动回登录页。正常登录后 token 有效时不触发，所以不影响本次直播测试，但属于长期使用的硬伤。
- 修复建议：401 分支不要走重连循环：连续 401 达到 2–3 次即停掉重连（`wantConnected=false`）、清 token、跳回登录页并提示“登录已过期，请重新登录”。`DeviceListActivity` 的 REST 401 已有“清 token 回登录页”逻辑，WS 401 应复用同一处理。

---

### 一般

#### M1. 同一 code 的并发请求会互相顶掉等待者，导致偶发误报失败

- 严重程度：**一般**（偶发功能误报；无设备风险）
- 位置：
  - 小谷云：`WsClient.kt` → `request()`、`requestVideo()`，`pending` 是以 code 为键的单槽 map
  - 原版：`DGIotClientManager` 的命令回调按 sn + message 区分等待者，无此竞态
- 原版做法：每个命令有独立回调，不会互相覆盖。
- 小谷云做法：`pending[code] = waiter`，同一 code 第二次请求会覆盖第一次的等待者；且 `request()` 的超时清理是无条件 `pending.remove(code)`，第一个请求的超时会删掉第二个请求的等待者并谎报失败。
- 后果：详情页“刷新”连点两下（`loadWsInfo()` 两条链交错，code 6/51/52 各发两次），或直播页快速点两次“重试”，都会出现一次 5–12 秒后无故报“无响应/取流失败”，而实际上设备回包已被丢弃。
- 修复建议：给每个请求一个唯一 id（或在 `pending` 的 key 里拼一个递增序号），回包按 id 匹配；超时清理只删属于自己的等待者（`remove(code, waiter)` 的条件删除）。简单修法：详情页刷新按钮加防重复点击、直播重试按钮在 pending 期间禁用。

#### M2. code 23 / 24 / 27（SD 回放）无超时、无发送失败清理，设备无响应时界面永远卡住

- 严重程度：**一般**
- 位置：
  - 小谷云：`WsClient.kt` → `requestRecordDates()`、`requestRecordList()`、`requestRecordPlay()`；`PlaybackActivity.kt` → `loadSdList()`、`playSdFile()`
  - 原版：`DGIotClientManager` 有 5 秒超时（DelayRunnable）后调 `connectFail`
- 原版做法：所有一发一答的命令都有 5 秒超时，超时后回调失败。
- 小谷云做法：`request()` 通用方法有 5 秒超时，但 code 23/24/27 三个方法绕开了它，直接 `pending[code] = onResult; sendRaw(...)`，且发送失败（socket 未连接）时不清理 `pending`、不回调。
- 后果：SD 回放页在设备离线/信号差时，点一条录像后界面一直停在“正在请求 SD 回放地址…”，没有任何失败提示；`loadList()` 在 `onCreate` 的 `setSource()` 里先跑一次（此时 WS 还没连上），这个孤儿等待者还会一直占着 `pending[27]`。
- 修复建议：让这三个方法复用 `request()` 的超时机制（5–8 秒），发送失败时立即回调 null 并清理 `pending`。

#### M3. code 12 格式化内存卡的 message 字段值静态无法确认，且成功判定与原版不一致

- 严重程度：**一般**（功能可能失效 + 误报；格式化本身有二次确认，不会误触）
- 位置：
  - 小谷云：`WsClient.kt` → `sendFormatTf()`（发 `message=""`）；`SdCardActivity.kt` → `rawListener` 的 code 12 分支（成功判定 `code==200 || message=="success"`）
  - 原版：`DGSocketRepository.java` → 格式化帧的 message 是混淆常量 `a.C0105a.d`；`DeviceCardInfoActivity.java` → 按 `IotParamName.isFormatTf`（认 `"code":12` 或 `"state":12`）判定回包到达
- 原版做法：message 是一个静态读不出的混淆常量值；成功/失败按 code 12 回包本身判定。
- 小谷云做法：发空 message（赌服务端只按 code 分发）；成功判定要求回包里 `code==200` 或 `message=="success"`。
- 后果：若服务端校验 message 字段，格式化会静默失败（设备收不到或拒绝执行）；若回包是 `{"state":12, "data":{...}}` 这种不带 code/message 的形状，即使格式化成功了，小谷云也会显示“格式化返回：{…}”，用户无法分辨成功与否。
- 修复建议：实测一次格式化回包的真实形状再定判定条件；成功判定应以“收到 code/state 为 12 的回包”为准，再结合回包内容判断成败；message 常量值建议从真机抓包确认，不要继续猜。

#### M4. code 53 设置录像时间表帧格式错误（死代码，暂无调用点）

- 严重程度：**一般**（死代码；一旦被调用就会发错帧）
- 位置：
  - 小谷云：`WsClient.kt` → `setRecordTimeList()`：`send(53, "", sn, JSONObject().put("data", param))`，即 data 被包成 `{"data": "<参数字符串>"}`
  - 原版：`DGSocketRepository.java` → 设置录像时间表时 data 就是参数字符串本身（`data: "<参数字符串>"`，不是对象）
- 原版做法：`{"code":53, "message":"", "sn":..., "data": "<参数字符串>"}`。
- 小谷云做法：多包了一层对象。
- 后果：目前详情页只有“查询录像时间表”（code 54），`setRecordTimeList` 在已读的 UI 文件中无调用点，所以现在无害；但它是颗埋好的雷——将来一旦有人从详情页接上“设置时间表”按钮，就会发错帧导致设置失败。
- 修复建议：要么按原版改对（data 直接放字符串），要么直接删掉该方法；不要留着错的 API 等人踩。

#### M5. 云回放下载依赖一次直播取流（code 22），设备离线时云文件明明在服务器上也下不了

- 严重程度：**一般**
- 位置：
  - 小谷云：`PlaybackActivity.kt` → `cloudDownloadUrl()`、`suspendRtmpHost()`（调 `ws.requestVideo()` 取 RTMP 地址再抠 host 当文件服务器 IP）
  - 原版：云文件下载地址由 `YunInfoUtil` 按 SN/天数拼出，文件服务器 IP 不依赖一次直播取流
- 原版做法：下载 URL 的 host 不需要先请求直播。
- 小谷云做法：每次下载云录像前先发一次 code 22 `videoplay`，等 12 秒取 RTMP 地址，拿它的 host 拼 `http://<ip>:7738/...` 下载地址。
- 后果：① 回放页会无端唤醒设备开一路直播流（设备侧多一次推流、服务端多一次流分配）；② 设备离线/取流超时时，云录像下载直接失败并提示“无法确定云文件服务器 IP”，即使文件本身就在云端；③ 每次下载最多白等 12 秒。
- 修复建议：确认文件服务器 IP 的真正来源（优先从 code 22 之外的已有信息推导，如云套餐接口返回、或固定域名），把取流只作为最后的回退手段；不要每次下载都发 videoplay。

#### M6. 明文 HTTP 路径（getlist / 下载 / closepath）跳过 token 刷新检查

- 严重程度：**一般**
- 位置：
  - 小谷云：`ApiClient.kt` → `wifiFileList()`、`fourGFileList()`、`getPlainText()`、`downloadToFile()`（直接用 `store.accessToken` 当 `token` 头，不调 `ensureFreshToken()`）
  - 原版：`RequestPreconditionManager.checkRequestPreconditions` 在每次请求前检查（超 3 天则刷新）
- 原版做法：所有请求前先过刷新检查。
- 小谷云做法：只有 `postJson` / `get` / `postJsonArray` 会调 `ensureFreshToken()`；明文 HTTP 的几条路直接拿可能已过期 3 天的 accessToken 当 `token` 头。
- 后果：App 打开超过 3 天没触发过一次带鉴权的 REST 调用时（例如一直只看回放），云录像列表会突然加载失败，用户只能回列表页随便点一下触发刷新，或重新登录。
- 修复建议：`wifiFileList()` / `downloadToFile()` 开头也调一次 `ensureFreshToken()`。

#### M7. 每 Activity 一个 WS 连接，列表页与直播页同时在线两条连接

- 严重程度：**一般**
- 位置：
  - 小谷云：`DeviceListActivity`、`LiveActivity`、`DeviceDetailActivity`、`SdCardActivity`、`PlaybackActivity` 各自 `WsClient(store)` + `connect()`；`DeviceListActivity.onDestroy()` 才断开
  - 原版：`DGIotClientManager` 全局单例单连接，所有页面共用
- 原版做法：一个账号一个 WS 长连接，`onOpen` 发一次 subdevice。
- 小谷云做法：进直播页时列表页的 WS 还连着（列表页只是 stopped，没 destroy），于是同一账号同时有两条 WS 连接，都订阅了同一台设备。
- 后果：目前无已知的设备侧危害（服务器允许多连接）；但状态回包会同时发往两条连接，订阅/重连逻辑分裂——例如直播页重连时列表页的订阅可能已过期失效，返回列表后在线状态可能停在旧值；也多占一份服务器连接资源。
- 修复建议：下版把 `WsClient` 改成应用级单例（或放到 Application / Service 里），各页面只注册监听器；短期可接受现状。

#### M8. 4G / WiFi 分支用 REST 的 netType 判断，原版用 SN 第 5 位判断

- 严重程度：**一般**（对本设备无影响；对其他设备可能走错分支）
- 位置：
  - 小谷云：`PlaybackActivity.kt` → `loadCloudList()`、`cloudDownloadUrl()`（`netType?.contains("4G")`）
  - 原版：`DeviceInfoUtil.isWifiDevice(sn)`（SN 第 5 位字符：`'1'` = WiFi，`'0'` = 有线；其余按 4G 处理）
- 原版做法：纯 SN 规则，与服务端返回无关。
- 小谷云做法：依赖 REST 设备列表返回的 `netType` 字段。
- 后果：本设备 SN 第 5 位是 `1`（WiFi 版），即使 `netType` 为空小谷云也会默认走 WiFi 分支，所以本次测试不受影响；但若某台 4G 设备的 `netType` 为空或取了别的写法，就会错误地走 WiFi 的 getlist 地址，云回放列表加载失败。
- 修复建议：改成与原版一致的 SN 规则为主，`netType` 只做辅助校验。

#### M9. 云台松开时多发一帧 dir=0 停止帧，原版松开只停发不发帧

- 严重程度：**一般**（低风险偏差；方向本身已确认正确）
- 位置：
  - 小谷云：`LiveActivity.kt` → `bindPtz()` 的 `ACTION_UP / ACTION_CANCEL` 分支（`ws.sendMotor(sn, PTZ_STOP)`）
  - 原版：`VideoLiveActivity.java:1416 stopPTZActionControl()`（只把 `currentAction` 置 -1 并取消 250ms 定时重发，不发任何帧）；`SteeringWheelControl.java:22 TRIGGER_INTERVAL = 250`
- 原版做法：按住每 250ms 重发方向帧，松开即停发，设备靠收不到帧自行停转。
- 小谷云做法：按住每 250ms 重发（一致），松开时**额外**发一帧 code 10 `dir=0`。
- 后果：`dir=0` 是协议内的停止值，设备收到后停转，预期无害；但它是一次未经原版验证的额外发送——若某固件把 `dir=0` 理解为别的动作，云台可能多动一下。另有一处不一致：正常松开发停止帧，但退出直播页时若正按住云台，`onDestroy()` 只取消定时器不补发停止帧（与原版行为相同，但与小谷云自己的“松开发停止帧”逻辑不一致）。
- 修复建议：保留 dir=0（停转更干脆），但在 `onDestroy()` 里若云台正处于按住状态也补发一帧 dir=0，保持行为一致。方向映射本身已确认无误：转盘 0=上/1=下/2=左/3=右 → `changeSteeringWheelDirection`（0→2、1→3、2→0、3→1）→ `changePTZActionValue`（0→3、1→4、2→1、3→2），合成上=1、下=2、左=3、右=4、停=0。

#### M10. 对讲上行音频 FLV 首字节 0x70 未实测，stop 时有 publisher 赋值竞态

- 严重程度：**一般**（对方可能听不到；开关本身已确认正确）
- 位置：
  - 小谷云：`RtmpPublisher.kt` → `sendAudio()`（`payload[0] = 0x70`）；`IntercomManager.kt` → `start()` / `stop()`
  - 原版：`VideoLiveActivity.java:1790-1836 controlVol()`（先发 code 26 `volplay`，再 `recordingSound(<rtmp 地址末位改 3>)`；关闭时 `requestCloseAudioStream("http://<ip>:7788/closepath?rtmpurl=rtmp://<ip>:7768/video/<sn>/3")`）
- 原版做法：原生 dgplayer 推流；code 26 开关帧 + closepath URL 格式小谷云已逐字对齐。
- 小谷云做法：自写最小 RTMP 发布器；FLV 音频标签首字节固定 `0x70`（SoundFormat 7 = G.711 A-law、速率码 0、8bit、单声道），代码注释承认 FLV 没有 8kHz 速率码、服务端可能期望别的速率码；`stop()` 里 `publisher?.stop()` 与录音线程内 `publisher = pub` 的赋值存在竞态——若在 `pub.start()` 刚跑起来、赋值还没完成时松开对讲，`stop()` 拿到的 publisher 是 null，推流 socket 会泄漏、一直静默推流到服务端超时。
- 后果：最坏情况是对方听到静音/杂音（code 26 开关仍正常，摄像头端已进入对讲态）；竞态触发概率低（只在按下对讲 1 秒内立即退出直播页时）。
- 修复建议：实测时若对方听不到，先试 `0x72`（速率码 1）；`stop()` 里用局部变量快照 publisher 并在赋值处加同步，或在 `stop()` 后再检查一次并关闭残留的 publisher。

#### M11. 设置移动侦测时硬编码 led=1，会顺带改指示灯状态

- 严重程度：**一般**
- 位置：
  - 小谷云：`DeviceDetailActivity.kt` → `btnSetDetection`（`ws.setDetection(sn, sw, sen, 1)`）
  - 原版：`DGSocketRepository.java` → `setdetection` 的 data 是 `{sw, sen, led}` 三个字段，led 取设备当前值
- 原版做法：发设置帧时 led 用当前设备的实际值。
- 小谷云做法：UI 只有开关和灵敏度两个输入框，led 固定写死 1。
- 后果：用户只想开/关移动侦测时，会把指示灯状态也改成开（若用户之前是关灯状态，灯会被意外点亮；反之亦然）。
- 修复建议：先用 code 11 / code 15 的回包读当前 led 值再发，或在 UI 上加一个指示灯开关与侦测设置联动。

#### M12. 从详情页解绑/改名后返回列表，列表不刷新

- 严重程度：**一般**（纯 UI 问题）
- 位置：
  - 小谷云：`DeviceListActivity.kt`（无 `onResume()`，只在 `onCreate` 和手动点“重试”时 `loadDevices()`）
  - 原版：`HomeFragment` 在回到前台时刷新设备列表
- 原版做法：回到列表页即刷新。
- 小谷云做法：详情页解绑成功后 `finish()` 回到列表，列表仍显示已解绑的设备；必须手动点“重试”才会消失。
- 后果：用户可能对着已解绑的设备点进直播页，然后取流失败，误以为设备坏了。
- 修复建议：`DeviceListActivity` 加 `onResume()` 调 `loadDevices()`（或至少在从详情页返回时刷新）。

#### M13. 绑定设备时 deviceToken 发空字符串

- 严重程度：**一般**（待实测；本设备已绑定，影响小）
- 位置：
  - 小谷云：`ApiClient.kt` → `bindDevice()`（`GET deviceBind/v3/boundUser?sn=...&deviceToken=&check=...`）
  - 原版：`DGApiRepository.java` → 绑定时 `deviceToken` 传推送 registrationId
- 原版做法：`deviceToken` 是推送注册 id。
- 小谷云做法：无推送 SDK，发空字符串（代码注释已标注 TODO）。
- 后果：服务端可能接受（仅用于推送），也可能拒绝绑定；本设备已在原 App 里绑好，日常使用走不到这条路。
- 修复建议：实测一次扫码绑定；若被拒，考虑去掉该参数或填一个固定占位值后复测。

#### M14. stream 0/1 清晰度映射与双摄 1↔2 后缀切换仍是假设，未实测

- 严重程度：**一般**（影响出不出画面 / 切换对不对；不影响设备安全）
- 位置：
  - 小谷云：`WsClient.kt` → `STREAM_HIGH = 1`、`STREAM_FLUENT = 0`；`LiveActivity.kt` → `switchLens()`（地址末位 1↔2 互换）
  - 原版：静态代码中无 stream 0/1 ↔ 清晰度的映射；原版双摄是同一 RTMP 地址 + 两个画面，无“改后缀切换镜头”的逻辑
- 原版做法：默认发 `stream=1`；双摄不靠改地址后缀切换。
- 小谷云做法：假设 1=高清、0=流畅；假设直播地址以 `/1` 或 `/2` 结尾且互换即切换镜头（无此后缀时按钮会提示并拒绝切换，已做防护）。
- 后果：若映射反了，“高清/流畅”按钮显示与实际相反；若地址形态不是 `/1`、`/2` 结尾，双摄切换按钮点下无事发生（有提示，不会发错地址）。
- 修复建议：实测时以 code 22 回包的真实 `addr` 为准校正；不要在未确认前把切换逻辑改成发别的信令。

---

### 建议

#### P1. 忘记密码流程中，重复点“发送验证码”会发错短信类型

- 位置：`LoginActivity.kt` → `btnSend` 未区分 `forgotMode`，一律发 `smsType=10011`（注册）；找回密码应发 `10012`。
- 后果：找回流程里用户没收到验证码想重发时，会收到注册短信或被服务端拒绝（手机号已注册）。
- 修复：`btnSend` 按 `forgotMode` 选择 `sendSms(phone, forgot = forgotMode)`。

#### P2. 首次授权录音权限后，对讲按钮要再点一次才生效

- 位置：`LiveActivity.kt` → 对讲按钮 `ACTION_DOWN` 里请求权限后直接返回，未重写 `onRequestPermissionsResult` 在授权通过后自动开始对讲。
- 后果：纯体验问题，用户会以为第一下没点上。
- 修复：补 `onRequestPermissionsResult`，授权通过后自动调 `intercom.start()`。

#### P3. 缺云台方向反转设置

- 位置：原版 `VideoLiveActivity.java:1490-1495 sendPTZActionControl()` 会按 `DGConfiguration.getYunTaiDirectionState(sn, 1/2)`（分水平/垂直两档）对方向值做反转；小谷云无此设置。
- 后果：默认反转是关闭的，绝大多数用户无感知；若用户曾在原 App 里开过方向反转，小谷云的云台方向会是反的。
- 修复：下版在详情页加两个开关（水平反转 / 垂直反转），按原版逻辑换算后再发。

#### P4. RTMP 40 秒缓存是每 WsClient 实例的，且取流时 WS 未连接无明确提示

- 位置：`WsClient.kt` → `lastRtmpAddr / lastRtmpAt` 是实例字段；`LiveActivity.kt` → `requestVideo()` 在 `!ws.isOpen()` 时只调 `ws.connect()` 就返回。
- 原版做法：40 秒缓存放在 `DGConfiguration`（全局共享）；取流失败有 5 秒超时回调。
- 后果：回列表再进直播会重新取流（多一次 code 22，无害）；token 为空导致 `connect()` 静默失败时，界面会一直停在“正在请求直播地址…”。
- 修复：缓存改到应用级单例；`requestVideo()` 在 `connect()` 失败时显示“信令未连接，请检查登录状态”。

---

## 2. 已核对通过的逐项对照（无问题）

### 自动发送的帧 / 请求

| 触发点 | 原版 | 小谷云 | 结论 |
|---|---|---|---|
| 登录 | `POST /user/V2/login`，`{phone, password: AES/ECB+Base64, deviceId: 每次 new UUID}` | 同接口同字段；`deviceId` 为每安装固定一个 UUID（见 §3 说明） | 通过 |
| token 刷新 | `POST /user/refresh`，无 body，`Bearer <refreshToken>`；距上次保存 refresh token 超 3 天（259200000ms）触发 | 同接口；空 body；距 `tokenSavedAt` 超 3 天触发 | 通过 |
| 拉设备列表 | `GET /deviceBind/list?owned=1` 与 `GET /deviceBind/V3/list` 都用 | 先回退接口、再 V3，字段解析一致 | 通过 |
| 进列表页 | WS 握手仅 `Authorization: Bearer` 头；`onOpen` 发 code 90 `subdevice` | 同头；`onConnected` 发 code 90（帧格式一致） | 通过 |
| 进直播页 | 已订阅的前提下直接发 code 22 `videoplay {stream}` | 先 code 90 + code 42 再发 code 22（多一次单设备订阅，无害） | 通过 |
| 退直播页 | 不发 code 5、不发 code 3 | 不发 code 5、不发 code 3 | 通过 |
| 进详情页 | code 6 / 51 / 52 顺序查询 | 同顺序 | 通过 |
| 进回放页 | code 27 查日期、code 23 查列表；云回放走 HTTP getlist | 一致；另见 M5 | 通过 |
| 进内存卡页 | code 13 查卡 | 一致 | 通过 |
| 后台重连 | 断线重连后重发 subdevice | 重连后 `onConnected` 重发订阅 | 通过（401 循环见 S2） |
| 登出 | 本地清 token，无服务端登出接口 | `store.clear()`，一致 | 通过 |

### 用户点按才发的命令

| 命令 | 原版 | 小谷云 | 结论 |
|---|---|---|---|
| 云台 code 10 | `{dir, speed:1}`，250ms 重发，松开停发 | 帧一致，250ms 重发；松开多发 dir=0（见 M9） | 基本通过 |
| 对讲 code 26 | `{state:1/0}`，开→推流到地址末位改 3，关→`GET http://<ip>:7788/closepath?...` | 顺序与 URL 格式逐字一致 | 通过 |
| SD 回放 code 24/25/28 | `recplay {recfile, continue, loca:int, date}`；`recpause {state: 0播/1停/-1关}`；`recfast {recfile, loca, date}` | 一致（`loca` 已由 v1.1 修为空字符串→int） | 通过 |
| 格式化 code 12 | 二次确认弹窗；message 为混淆常量 | 二次确认弹窗；message 发空（见 M3） | 待确认 |
| 重启 code 7 | 二次确认后发送 | 二次确认后发送 | 通过 |
| 解绑 REST | `GET /deviceBind/device/del?sn=`，二次确认 | 一致 | 通过 |
| 退出分享 / 取消分享 | `GET /deviceBind/device/out?iotId=`；`POST /deviceBind/device/cancel {iotId:[...], sn}` | 一致 | 通过 |
| 删消息 | `POST /message/del/msgs` | 一致 | 通过 |
| 设置类 code 11/14/16/18/35/38/59 | 帧格式与字段一致 | 一致（code 35 的 message 沿用原版错字 `"getalarm"`，与原版相同） | 通过 |
| 录像参数设置 code 20 | 参数格式未展开 | 详情页按钮已禁用，只 toast 提示不发送 | 通过 |
| 录像时间表设置 code 53 | data 为参数字符串本身 | 包错了（见 M4，死代码） | 见 M4 |
| 固件升级 code 8 | 需 OTA 返回的 sv/sp/md5/fatid 参数 | 从不发送，只查 OTA 做提示 | 通过 |
| 注册 / 注销账号 | 有接口 | API-ready，无 UI 调用 | 通过 |

### 回包解析

- **state/code 双字段识别（v1.1.1 的修）已确认修好**：`WsClient.handleMessage()` 按原版 `IotParamName` 的规则，`state` 是已知命令码时优先，否则用 `code`；`{"code":200,"state":90}`、`{"state":22,"data":{"addr":...}}` 等形状都能正确路由。
- 在线判定：`DeviceInfo.isOnline` 为 `status != 0 && status != 3`，与原版“WS 状态 0=离线、非 0=在线；REST 3=离线”一致。
- code 22 回包 `data` 为 JSON 字符串时也能解析出 `addr`（v1.1.2 的修仍在）。
- code 90/91 回包三种形状（`data` 数组、`data` 对象、顶层 `sn`）都有处理。
- `100001` 回包按原版处理为忽略；code 2 报警、code 41 分享通知走 `rawListener`，无丢弃。
- 错误码：REST 401 在 `DeviceListActivity` 会清 token 回登录页；WS 401 的问题见 S2。

### REST 其他

- 密码只存内存，token 存 `EncryptedSharedPreferences`（原版明文存密码的坏习惯已改掉）。
- 短信验证码登录：原版 v9.0 无此接口，小谷云的短信页诚实地告知用户“校验通过但不返回 token，请切回密码登录”，没有伪造登录。
- 找回密码 `POST /user/V3/setPwd` 的 `pwd` 不 AES，与原版一致（服务端就是这么要求的）。
- 密码长度校验 ≥8 位，与原版 `LoginViewModel.isPasswordValid`（`length > 7`）一致。
- 注销账号 `POST /user/cancel` 沿用原版“建 `{"sn":[...]}` 却 POST 裸 JSONArray”的做法，无 UI 调用。
- TLS 校验正常开启（原版关闭了校验，小谷云改对了）。

### 生命周期

- 旋转屏幕：`LiveActivity` 的 manifest 配了 `configChanges`，旋转不重建、不重发取流。
- 退出直播：`onDestroy()` 停云台定时器、若在对讲则 `stop()`、释放录像器与播放器、断开 WS；不发 code 3、不发 code 5。
- 退出 SD 回放：`onDestroy()` 发 code 25 `state=-1` 关闭回放。
- 退出列表：`onDestroy()` 断开 WS。
- 40 秒 RTMP 缓存：逻辑与原版一致（见 P4 的实例级差异）。

---

## 3. 立即修 / 下版修 / 不用修

### 立即修（v1.1.4，修好再长期用）

1. **S1 分享接口三处 body 形状**：拆 `shareBody()` 为有 wrapper / 无 wrapper 两个版本，`shareToAccount` 补 `targetPhone`；`useful` 单位实测确认。
2. **S2 WS 401 无限重连**：401 连续 2–3 次即停重连、清 token、回登录页提示重新登录。

### 下版修（v1.1.5，按顺序）

3. M1 pending 单槽竞态（请求加唯一 id 或防重复点击）。
4. M2 code 23/24/27 补超时与发送失败回调。
5. M3 code 12 格式化：以 code/state 12 回包到达为准判定，message 常量抓包确认。
6. M5 云回放下载不要每次先发 code 22 取流。
7. M6 明文 HTTP 路径补 `ensureFreshToken()`。
8. M4 code 53 改对或删除。
9. M7 WS 改应用级单例。
10. M8 4G/WiFi 分支改 SN 规则为主。
11. M9 云台 `onDestroy()` 时若按住则补发 dir=0。
12. M10 对讲 FLV 首字节实测（先试 0x72），修 stop 竞态。
13. M11 侦测设置先读当前 led 值。
14. M12 列表页 `onResume()` 刷新。
15. M13 绑定 deviceToken 实测。
16. M14 stream 映射与双摄后缀以真实 code 22 回包校正。
17. P1–P4 四条建议。

### 不用修（与原版的有意合理差异，或已确认无害）

- 登录 `deviceId` 每安装固定一个 UUID（原版每次登录 new UUID）：无原版踢人逻辑，固定 id 更稳定，且不向服务端多注册设备身份。
- 正常 TLS 校验（原版关闭校验）：更安全。
- 密码只存内存、token 加密存储（原版明文存密码）：更安全。
- 退出直播不发 code 5 `disconnect`：与原版一致。
- 固件只提示、不自动升级、不发 code 8：安全。
- 录像参数设置（code 20）不开放、服务端录像删除无接口所以只删本地：与静态事实一致。
- 云台方向反转默认关闭：绝大多数用户无感知（见 P3）。

---

## 4. 结论：v1.1.3 能不能放心给用户测直播

**能。**

- 直播主路径（密码登录 → 设备列表 → code 90/42 订阅 → code 22 取流 → RTMP 播放）上**没有发现任何设备风险**：没有常规流程会发解绑/复位/格式化/重启/升级帧；code 3 / link 已彻底删除（§0）；重启、格式化、解绑都有二次确认且只在用户点按后发送。
- 最坏情况是**不出画面**，不是设备出事：stream 0/1 映射反了、或直播地址形态与假设不符，都只会导致取流失败提示，不会让摄像头复位丢 WiFi。
- 测之前提醒用户三件事：① 分享功能不要测（S1，必失败，等 v1.1.4）；② 内存卡格式化先别点（M3，message 值未确认）；③ 若直播页出现持续“信令断开/信令错误”且重登无效，可能是 token 失效触发了 S2 的重连循环，退出重登即可，不要反复点重试。
- 建议先修 S2 再长期用，但 S2 只在 token 失效时触发，不影响本次直播测试。

---

## 附录：需实测确认的假设清单（静态无法确认）

1. stream 0/1 ↔ 高清/流畅映射（M14）。
2. 直播地址形态与双摄 1↔2 后缀切换（M14）。
3. 对讲 FLV 音频首字节 0x70 还是 0x72（M10）。
4. code 12 格式化 message 常量值与回包形状（M3）。
5. 分享 `useful` 的单位与 -1 含义（S1）。
6. WiFi getlist 的 `token` 头取值（现为 accessToken）与 `type` 取值（现为 "video"）。
7. 云文件下载是否需要鉴权头（现为空头下载）。
8. 绑定时 `deviceToken=""` 是否被接受（M13）。
9. 本地录制 sout mp4 是否出空文件（`VlcRecorder`，上轮遗留）。
10. code 53 录像时间表参数字符串格式（M4）。
11. code 40 云套餐回包里 `state:1` 的含义（现按原版帧格式发送）。
12. code 100001 回包含义（原版与小谷云都忽略）。
