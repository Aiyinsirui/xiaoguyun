# 小谷云 v1.1.0 — 静态审计清单（AUDIT）

审计对象：大谷云 v9.0（`com.dgiot.speedmonitoring`，versionCode 90）jadx 产物
`/root/daguyun/jadx-out/`，逐类阅读 `DGApiRepository.java`（1445 行）、
`DGApiRepositoryNew.java`（446 行）、`DGSocketRepository.java`（548 行）、
`DGApiFileRepository.java`、`DGApiPushRepository.java`、`IotParamName.java`、
`DGIotClient.java` / `DGIotClientManager.java`、`YunInfoUtil.java`、`G711Code.java`、
`VideoLiveActivity.java`（4331 行）、`VideoLiveViewUtil.java`、
`VideoLiveClickControl.java`、`VideoRecordFragment.java`、
`VideoRecordYunFragment.java`、`DeviceCardInfoActivity.java`、
`DeviceSettingActivity.java`、`DGPlayerController.java` / `DGPlayerUtil.java`。

方法：只读反编译产物，未登录、未调真实接口、未发密码。密钥值一律不记录。
分类：**已确认可实现** = 静态证据完整（方法名+路径/码+字段齐全）；
**需实测** = 静态有骨架、个别枚举/字段值须真机核对；**无法静态确认** = 静态无证据或证据矛盾。

> 本次审计的新结论（相对协议报告 v1.0）：云台 dir 枚举已证实——方向盘索引
> 0=上/1=下/2=左/3=右 → `changeSteeringWheelDirection`（0→2, 1→3, 2→0, 3→1）→
> `changePTZActionValue`（0→3, 1→4, 2→1, 3→2），合成：上=1、下=2、左=3、右=4、
> 停=0；v1.0 的假设正确，另补原 App 按住 250ms 重发、松开单发 dir 0。
> `loca` 不是云/SD 标志，是 code 24/28 的**文件内秒偏移**（文件名头 6 位为 HHMMSS，
> `getPlaySecond = HH*3600+MM*60+SS+loca`）。云回放不走 code 24，走 getlist 下载后本地播；
> SD 回放走 code 23 列表 + code 24 取流。预置位/巡航：全仓无对应命令码。

## 1. REST 端点（`https://application.daguiot.com/`，信封 `{success,code,message,data}`，`data` 为字符串需二次解析）

鉴权头（除登录/短信外全部）：`Authorization: Bearer <accessToken>` + `device: <deviceId>`；
刷新：`POST /user/refresh` 无 body，头换 `Bearer <refreshToken>`，3 天窗口。

| 方法 | 路径 / Body | 分类 | 备注 |
|---|---|---|---|
| 登录 | `POST /user/V2/login` `{phone, password: AES/ECB/PKCS5+Base64, deviceId}` | 已确认可实现 | v1.0 已有 |
| 查是否注册 | `POST /user/V3/queryUser` `{phone}` | 已确认可实现 | |
| 注册 | `POST /user/V3/registerV2` `{phone, code, oneKey, avatarUrl: Build.MODEL, password: AES}` | 已确认可实现 | `oneKey` 含义未展开，需实测；v1.1 只接 API，未做注册 UI |
| 忘记密码 | `POST /user/V3/setPwd` `{phone, code, pwd}`（**pwd 不加密**，与登录不一致） | 已确认可实现 | v1.1 已接 UI |
| 发短信码 | `POST /smsMessage/v2/sendSmsMessage` `{phone, smsType: "10011" 注册 / "10012" 找回}` | 已确认可实现 | |
| 校验短信码 | `POST /smsMessage/getSmsMessage` `{phone, code}` | 已确认可实现 | 只用于注册/找回，不返回 token（结论不变） |
| 用户信息 | `POST /user/info` 无 body | 已确认可实现 | |
| 改昵称 | `GET /user/changeName?name=` | 已确认可实现 | |
| 注销账号 | `POST /user/cancel` body 为裸 `JSONArray`（方法内拼了 `{"sn":[...]}` 但实际传数组） | 需实测 | 以抓包为准；v1.1 只接 API，未做 UI |
| 刷新 token | `POST /user/refresh` 无 body | 已确认可实现 | v1.0 已有 |
| 设备列表 V3 | `GET /deviceBind/V3/list` → `data.listResults[]` | 已确认可实现 | |
| 设备列表 | `GET /deviceBind/list?owned=1` → `data` 直接数组 | 已确认可实现 | v1.0 已有 |
| 设备详情 | `GET /device/info?sn=` | 已确认可实现 | 字段见 DeviceInfoBean |
| 在线查询 | `GET /user/online?sn=` | 已确认可实现 | |
| 流量卡 | `GET /card/V2/query/flow?sn=` | 已确认可实现 | |
| ICCID | `GET /device/device/iccid?sn=` | 已确认可实现 | |
| 保存 ICCID | `GET /deviceBind/baocuniccid?sn=&iccid=` | 已确认可实现 | 未做 UI（无写入场景） |
| 改设备名 | `GET /deviceBind/update/name?sn=&name=` | 已确认可实现 | |
| 绑定设备 | `GET /deviceBind/v3/boundUser?sn=&deviceToken=<推送 registrationId>&check=<code>` | 需实测 | 依赖推送 registrationId；小谷云无推送，`deviceToken` 传空串，需实测 |
| 查是否已绑 | `GET /deviceBind/V2/checkSn?sn=&code=` | 已确认可实现 | |
| 分享列表 | `GET /deviceBind/share/list?sn=`；`GET /deviceBind/share/all`；`GET /deviceBind/share/from` | 已确认可实现 | |
| 分享给账号 | `POST /deviceBind/rabbit/device/share` `{code:41, message:"share", sn, data:{createDate, ownedUser, permission, sn, phone, targetPhone, useful, deviceToken:""}}` | 需实测 | `permission`=`"1,2"`（`,3` 为录像权）；`useful`/`permissionsTime` 语义（秒？-1 永久？）未展开 |
| 分享给手机号 | `POST /deviceBind/device/sharePhone` 同上 body（`deviceToken:""`） | 需实测 | 同上；v1.1 用此口做分享入口 |
| 接受分享 | `POST /deviceBind/device/share` 同上 body（原 App `deviceToken` 为推送 id） | 需实测 | 同上 |
| 拒绝分享 | `GET /deviceBind/share/turnDown?sn=` | 已确认可实现 | |
| 删除设备 | `GET /deviceBind/device/del?sn=` | 已确认可实现 | 解绑，二次确认 |
| 退出分享设备 | `GET /deviceBind/device/out?iotId=` | 已确认可实现 | |
| 取消分享 | `POST /deviceBind/device/cancel` `{iotId:[...], sn}` | 已确认可实现 | |
| 上报设备 token | `POST /deviceBind/update/token` `{deviceToken, snList[]}` | 无法静态确认 | 依赖推送 id；小谷云无推送，未实现 |
| 云套餐信息 | `GET /cloud/v3/app/getInfo?sn=` → `data.{hasPackage, hasDefaultCard, videoDuration, defDays, overTime}` | 已确认可实现 | 只读展示；套餐购买不做 |
| 云套餐列表 | `GET /defoos/getlist?sn=` | 已确认可实现 | 只读展示 |
| 云图地址 | `GET /cloud/getV2Url?sn=` | 已确认可实现 | |
| 云录像类型设置 | `POST /cloud/V2/set` `{sn, videoType:"<int 字符串>"}` | 需实测 | `videoType` 枚举值未展开；v1.1 只接 API，未做 UI |
| OTA 查地址 | `GET /up-md5/getUrl?sv=`；`GET /up-md5/v2/getUrl?sv=&msv=` | 已确认可实现 | 只查只提示，不自动升级；返回结构未展开，按原始 JSON 展示 |
| 推送开关 | `GET /user/set/push?type=<int>&pushType=<0/1>` | 需实测 | `type` 枚举未展开；v1.1 只接 API，未做 UI |
| 消息列表（单设备） | `GET /message/device/list?sn=&date=` | 已确认可实现 | 字段见 DeviceMessageBean |
| 消息列表（全部） | `POST /message/list` `{date, sn:[...]}` | 已确认可实现 | |
| 删除消息 | `POST /message/del/msgs` `[{sn, msgIds:[...]}]` | 已确认可实现 | |
| 报警图地址 | `http://pic.dagucloud.com:7736/<sn 倒数第 2 位>/<date>/…/<sn>`（`PIC_URL + pic`） | 已确认可实现 | code 2 入站 `data.pic` 为相对路径 |
| 录像文件列表 4G | `GET http://cloud.daguiot.com:7738/<sn 倒数第 2 位>/<days>/<date>/<sn>/video`（明文 HTTP，无鉴权头，返回 HTML 目录页，正则 `<A[^>]*>([^<]+)</A>` 且 `^[0-9_]+(_[0-9_]+)*$`） | 需实测 | `days` 语义未展开（疑似保留天数）；v1.1 默认取云套餐 `videoDuration`，无则 7 |
| 录像文件列表 WiFi（旧） | `GET http://dos.dagucloud.com:7736/getlist`，头 `sn / token / days / date / type / Content-Range: <startIndex>` | 需实测 | `token` 是 accessToken 还是文件密钥仍未确认；v1.1 先试 accessToken；`type` 暂传 `"video"` |
| 录像文件列表 WiFi（新） | `GET https://newcloud.daguipc.com/getlist`（同上头） | 需实测 | 同上；v1.1 优先用新地址，失败回退旧地址 |
| 文件下载 WiFi | `http://<ip>:7738/<sn 倒数第 2 位>/<days>/<date>/<sn>/video/<文件名>` | 需实测 | `<ip>` 来源未展开；v1.1 先用 RTMP 地址 host |
| 文件下载 4G | 上条列表 URL + `/<文件名>` | 已确认可实现 | |
| 录像文件删除（服务端） | — | 无法静态确认 | 全仓无录像文件删除端点/命令码；v1.1 只删本地已下载文件，消息删除走 `/message/del/msgs` |
| App 版本检查 | `GET /file/ver?name=`；`GET /file/v2/ver?name=&mobileType=` | 已确认可实现 | 未做 UI（小谷云自有版本，与原 App 版本无关） |
| H5 标志 | `GET /sys-user-yn/h5yn?sn=` | 已确认可实现 | 未实现（H5/VIP 相关） |
| 服务是否激活 | `POST https://application.daguiot.com/isServiceActivate` | 无法静态确认 | body 为空；用途未展开，未实现 |
| 系统公告 | `POST https://www.daguiot.com/error`（`requestSystemNote`） | 无法静态确认 | 疑似异常上报口，非业务口，未实现 |
| 首页提示 | `GET /user/homeTips`；`GET /user/tips?sn=` | 已确认可实现 | 活动/运营提示，未实现（广告/运营向） |
| 热点 WiFi | 直连设备 AP 的 POST（`requestHotWifi`，URL 由设备 IP 拼） | 无法静态确认 | 配网流程，未实现 |
| OOS 存储 | `GET /oos/V2/mobile/bucket`；`GET /oos/V2/mobile/url?sn=` | 需实测 | 云存储桶信息；v1.1 未接（下载走 getlist 直链） |
| 微信登录/支付、小程序 | `GET /user/wx/callback?code=&phone=`；`POST /wechatPay/app/pay`、`/wechatPay/app/netPay`、`/wechatPay/app/net5GPay`；`GET /wechatPay/geturl?sn=`；`GET /api/v1/coupon/*` | 明确不做 | VIP/付费/微信支付，任务要求不做 |
| 广告上报 | `http://ad.daguiot.com/show`、`/result`；`requestAdEvent`、`requestDayActiveInfo`、`requestUserAdState`、`requestGetAdState`、`requestUpdateAdState`；`DGApiRepositoryNew` 的 `requestAdActiveInfo` / `requestAdEventInfo` | 明确不做 | 广告 SDK 相关，零广告原则不接 |
| `DGApiRepositoryNew` 其余 | `requestSystemNote` / `requestUserOnlineInfo` / `requestWXLogin`（suspend，返回 `Result<ResponseSuccessInfo>`） | 无法静态确认 | 该类内无 URL 字面值，HTTP 层在另一 Retrofit service 内，jadx 未追到；功能已被 `DGApiRepository` 的同名端点覆盖（在线查询、系统公告、微信登录），不另实现 |

## 2. WS 命令码（`wss://vlink.daguipc.com:9443/cloud`，帧 `{code,message,sn,data?}`，入站 `code`/`state` 子串匹配）

| code | message | 方法 / data | 分类 |
|---|---|---|---|
| 3 | `link APP[ANDROID]` | `getPushBindInfo(sn,isBind)`，顶层 `link: 1/0` | 已确认可实现（未做 UI：推送绑定，小谷云无推送） |
| 5 | `disconnect` | `getDisconnectParam` | 已确认可实现 |
| 6 | `deviceinfo` | `getDeviceInfoParam`；回 `data.{sn,iccid,ssid,use,link,dbm,bat,hv,sv}`（示例见 `DGIotClientManager.sendTest`） | 已确认可实现 |
| 7 | `reboot` | `getRebootParam` | 已确认可实现 |
| 8 | `ota` | `getUpdateVersionParam`，顶层 `sv/sp/md5/fatid` | 需实测（参数来自 OTA 查地址返回，结构未展开；v1.1 不发 code 8，只提示） |
| 10 | `motor` | `getMotorSetParam`，`data.{dir,speed:1}`；dir：上=1、下=2、左=3、右=4、停=0（已证实，见文首）；按住 250ms 重发，松开单发 dir 0 | 已确认可实现 |
| 11 | `led` | `getLedSetParam`，`data.{led:int}` | 需实测（led 取值 0/1 未在调用处展开；v1.1 按开关理解） |
| 12 | （混淆常量） | `getTFInfoSetParam`，格式化 TF 卡；回包 `code:12`，`code==200` 或 `message=="success"` 视作成功 | 需实测（message 字面值是混淆常量，静态不可读；v1.1 发空 message，服务端按 code 分发） |
| 13 | `gettfinfo` | `getTFInfoParam(sn,flag)`；回 `data.use`（已用百分比；`use>=0` 视为有卡） | 已确认可实现（`flag` 入参在帧里不出现，各调用处传 1/3/5/33 不等，含义未展开） |
| 14 | `setdetection` | `getSetDetectionParam`，`data.{sw,sen,led}` | 已确认可实现 |
| 15 | `getdetection` | `getDetectionParam` | 已确认可实现 |
| 16 | `settrack` | `getSetTrackParam`，`data.{sw,sen}` | 已确认可实现 |
| 17 | `gettrack` | `getTrackParam` | 已确认可实现 |
| 18 | `setflip` | `getSetFlipParam`，`data.{sw:0/1}` | 已确认可实现 |
| 19 | `getflip` | `getFlipParam` | 已确认可实现 |
| 20 | `setrecparm` | `getVideoSetRecParam`，`data.{mode,qlty}` | 需实测（mode/qlty 枚举未展开；v1.1 只做查询展示，设置入口留 TODO 说明） |
| 21 | `getrecparm` | `getVideoRecParam` | 已确认可实现 |
| 22 | `videoplay` | `getVideoStreamParam`，`data.{stream}`；回 `data.addr`（RTMP）；40 秒缓存复用；`isVersionOk`：`sv` 去点后数值 `< 20012` 才用缓存 | 需实测（addr 完整形态、`stream` 0/1 与清晰度映射仍以实测 JSON 为准；v1.0 假设保留） |
| 23 | `recinfo` | `getVideoListParam`，`data.{date:"yyyy-MM-dd"}` | 已确认可实现（SD 录像列表；文件名头 6 位 HHMMSS） |
| 24 | `recplay` | `getVideoOnDemandParam`，`data.{recfile,continue:0/1,loca:int 秒偏移,date}`；回 `data.addr` | 已确认可实现（v1.0 曾把 `loca` 发成空字符串，已修正为 int；`continue` 含义为断点续播） |
| 25 | `recpause` | `getVideoOnControlParam`，`data.{state:0=播,1=暂停}`；关闭 `state:-1` | 已确认可实现 |
| 26 | `volplay` | `getVideoVolPlayParam`，`data.{state:0/1}` | 已确认可实现 |
| 27 | `recdate` | `getMonthVideoListParam`，`data.{date}`（有录像日期） | 已确认可实现 |
| 28 | `recfast` | `getVideoOnRecfastParam`，`data.{recfile,loca:int 秒偏移,date}`；回 `state:28` 且 `code==200` 视作成功 | 已确认可实现 |
| 35 | `getalarm`（疑似复制粘贴遗留，set 也用此 message） | `getSetAlarmParam`，`data.{sw,sen,type:1}` | 需实测（sw/sen 语义与 code 14 detection 的关系未展开） |
| 36 | `getalarm` | `getGetAlarmParam` | 已确认可实现 |
| 37 | `setalarmsound` | `getSetAlarmSoundParam`，`data.{data:<声音数据>,filename}` | 无法静态确认（声音数据格式未展开；未实现） |
| 38 | `getalarmsound` | `getGetAlarmSoundParam`；回 `data.data` 为声音数据 | 无法静态确认（格式未展开；v1.1 只做查询展示原始 JSON） |
| 40 | `package` | `getSetDevicePackageParam`，顶层 `state:1`；回包为云套餐信息 | 已确认可实现 |
| 41 | — | 入站：账号分享通知 | 已确认可实现（仅接收展示，无 UI 入口） |
| 42 | （空） | `getGetSubscribeDeviceParam`，`data.{operation:1}` | 已确认可实现 |
| 43 | （空） | `getGetDeviceStateParam` | 已确认可实现 |
| 51 | `getbat` | `getLowPowerDeviceBat`；回 `data.{power,chg}` | 已确认可实现 |
| 52 | （空） | `getDeviceWifiInfo` | 已确认可实现（回包字段未展开，原始 JSON 展示） |
| 53 | （空） | `getSetDeviceRecordTimeListParam`，`data` 为透传参数字符串 | 无法静态确认（参数字符串格式未展开；未实现设置，只接查询） |
| 54 | （空） | `getGetDeviceRecordTimeListParam` | 已确认可实现（回包原始 JSON 展示） |
| 58 | （空） | `getGetPirParam` | 已确认可实现 |
| 59 | （空） | `getSetPirParam`，`data.{sw:0/1,sen:int}` | 已确认可实现 |
| 90 | `subdevice` | `getSubDeviceParam`，`data:[{sn}]`；回 `state:90` 在线表 `[{sn,status,bat}]` | 已确认可实现 |
| 91 | — | 入站：单设备状态变化 `data.{sn,status,bat}` | 已确认可实现 |
| 2 | — | 入站：报警，`data.pic` 为报警图相对路径 | 已确认可实现（仅路由到 rawListener；报警列表走 REST `/message/*`） |
| 401 | `check_token` | `getCheckTokenParam(base64Token)`，全仓无调用方，疑似死代码 | 明确不做（WS 鉴权就是握手头 Bearer token） |
| 100001 | — | 入站：收到即直接 return，含义未说明 | 无法静态确认（忽略） |
| — | — | 预置位 / 巡航 | **无法静态确认：全仓无对应命令码**；v1.1 界面上不设预置位/巡航入口，并在 README 列出 |

## 3. 对讲音频链（静态证据）

- 开关：code 26（已确认）。
- 上行地址：当前 RTMP 地址末字符改 `3`，即 `rtmp://<ip>:7768/video/<sn>/3`（`controlVol`）。
- 采集：`AudioCapture`：`AudioRecord`，`DEFAULT_SAMPLE_RATE = 8000`，单声道（`CHANNEL_CONFIG = 16` 即 `CHANNEL_IN_MONO`），`PCM_16BIT`；`DGPlayerUtil.initWebRtc()` 置 `AudioManager.MODE_IN_COMMUNICATION` + 扬声器（WebRTC 回声处理）。
- 编码：PCM → G.711 A-law（native `n_pcmToG711a`，另有纯 Java `G711Code.linear2alaw`，算法已按 jadx 逐行移植到 `net/G711.kt`）。
- 推流：原 App 用原生 `dgplayer` 的 `recordingSound(address)` 发布 RTMP；libVLC **不能**发布 RTMP，v1.1 自写最小 RTMP 发布客户端（`net/RtmpPublisher.kt`，握手 + AMF0 connect/createStream/publish + 音频分片），FLV 音频标签首字节按 G.711A 取 `0x70`（format 7、rate 码 0、8bit、单声道），**未实测**，服务端是否接受该 rate 码须抓包核对。
- 结束：code 26 `state:0` + `stopRecord()` + `GET http://<ip>:7788/closepath?rtmpurl=rtmp://<ip>:7768/video/<sn>/3`（`DGApiPushRepository.requestCloseAudioStream`，OkHttp 直接 GET，无鉴权头）。

## 4. 双摄（抢球双摄）

- 原 App：`doubleVideo = true`（默认），大小两个画面（`glsBig` / `glsSmall`，可互换大小），但只取到一个 RTMP 地址（`upVideoUrl`）；未找到第二个镜头专用的 `stream`/通道参数——code 22 只有 `stream`（清晰度）一个参数。
- 直播地址后缀疑似 `/video/<sn>/1` 或 `/2`（报告 §5-#1），对讲用 `/3`；v1.1 的“镜头切换”实现为：把当前 RTMP 地址末位 `1 ↔ 2` 互换后重播，**纯假设，未实测**，若返回的 addr 形态不同则该按钮无效，以实测 addr 为准。

## 5. 未实现 / 未实测总表（v1.1）

见 `README.md` 与 `DELIVERY.md`；静态定不死的点在代码里均有 `TODO` 标记。
