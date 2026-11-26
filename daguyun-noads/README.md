# 大谷云 v9.0 → 小谷云（去广告 / 去运营 / 启动提速 / 屏蔽更新）

> 本目录是**重打包工程的可重建补丁集**，不是原始工程源码（原厂未开源）。
> 做法：把原厂 APK 用 apktool 解包，按 `patch/` 覆盖改动文件、按 `deleted-dirs.txt` 删掉广告 SDK 目录，再回编译 + 重签。

## 0. 身份信息

| 项 | 原包 | 本工程产物 |
|---|---|---|
| 包名 | `com.dgiot.speedmonitoring` | 同（不改包名，避免签名/数据/推送通道变化） |
| versionName / Code | v9.0 / 90 | 同 |
| 桌面名称 | 大谷云 | **小谷云**（`AndroidManifest.xml` 的 `android:label` + `res/values/strings.xml` 的 `app_name`） |
| 大小 | 113,390,978 B | 90,557,742 B |
| MD5 / SHA-256 | MD5 `28EF61F1D6EE704DAB0AA4C30D52A6C5` | SHA-256 `86BAC770E97E66F5CD7AAC5E67680A55E478903C131E487BA01D5B03412EEDAA` |
| 签名 | 原厂 `CN=DG` | 自签 `CN=DSH Repack`（v1+v2+v3） |

> 自签意味着**必须卸载原版才能安装**，登录态会清空。这是所有重打包应用的固有代价。

## 1. 目录说明

```
patch/                  改动后的完整文件（按原路径存放，直接覆盖即可）
deleted-dirs.txt        原包解包后需要整体删除的目录及文件数（广告 SDK 树）
```

`patch/` 里 31 个文件，覆盖：
- `AndroidManifest.xml`（删 208 个广告组件 + 2 条广告权限 + 改桌面名）
- `res/values/strings.xml`（`app_name` → 小谷云）
- `res/menu/bottom_nav_menu.xml`（去掉「福利」栏）
- 9 个布局（隐藏运营位/云存入口/广告位/更新入口）
- 20 个 smali（启动链、广告包装层、云存弹窗、更新入口、支付页）

## 2. 重建步骤（Windows / 需 apktool 2.11.1 + build-tools 34+）

```powershell
$APK   = "daguyun-v9.0-base.apk"        # 原厂包，MD5 28EF61F1D6EE704DAB0AA4C30D52A6C5
$WORK  = ".\work"; $OUT = ".\out"
New-Item -ItemType Directory -Force $WORK,$OUT | Out-Null

java -Xmx6g -jar apktool_2.11.1.jar d -f -j 8 $APK -o "$WORK\decoded"

# 1) 覆盖补丁
Copy-Item -Recurse -Force .\patch\* "$WORK\decoded\"

# 2) 删除广告目录（按 deleted-dirs.txt 第一列）
Get-Content .\deleted-dirs.txt | Where-Object { $_ -and -not $_.StartsWith("#") } |
  ForEach-Object { $d = ($_ -split '\s+')[0]; Remove-Item -Recurse -Force "$WORK\decoded\$d" -ErrorAction SilentlyContinue }

# 3) 回编译 + 对齐 + 签名
java -Xmx6g -jar apktool_2.11.1.jar b "$WORK\decoded" -o "$OUT\unsigned.apk"
zipalign.exe -p -f 4 "$OUT\unsigned.apk" "$OUT\aligned.apk"
apksigner.bat sign --ks <keystore> --ks-key-alias <alias> --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true --out "$OUT\xiaoguyun-noads.apk" "$OUT\aligned.apk"
```

## 3. 改了什么（详细版见内部报告）

1. **去广告**：移除 15 套广告栈共 28,328 类（TopOn/AnyThink、穿山甲 Pangle 全家、优量汇、百青藤、倍孜、京准、趣盟、慧算、创竞 CJ、极准 JZ、开心 openset、美数、Octopus、Taku 素材监控、Growmore），连同 208 个清单组件、2 条权限、广告素材与 27 个 `.so`。
2. **去运营位**：首页运营横幅（`fl_AdContent`/`vpBanner`）、设备卡「云存」入口、底部「云存储订单待支付」条、直播页云存按钮、云回放 tab、我的页「订单」「广告说明」、底部「福利」tab、支付页 `PayWeb`。
3. **启动提速**：拆掉 `goMain → requestAd（拉广告配置）→ 广告状态分支 → 10 秒超时兜底` 的等待链，改为 `goMain → goMainPage → forceJumpToMain`；冷启动到首页 **3–5 s → 约 0.81 s**。
4. **屏蔽更新**：`DGApplication.initUpdate()`、`HomeFragment.checkUpdate()`、`AboutActivity.checkVersion()` 全部置空，关于页「新版本检测」行隐藏；XUpdate 的检查/下载链路不可达。
5. **直播页云存跑马灯**：`live_control_menu1.xml` 的 `fl_tips` 隐藏 + `VideoLiveActivity.initTips()` 置空（文案由服务端下发）。

## 4. 已知边界

- 包内仍有 378 个广告 SDK 的**纯图片/布局资源**（`res/drawable/anythink_*` 等）。保留原因：与 `public.xml` 的资源 ID 绑定，硬删会重排 ID 导致文案/图标错位；它们无代码引用、不在清单、不参与渲染。
- 推送通道（友盟/华为/小米/vivo/魅族/OPPO/Firebase）保留，因为报警消息依赖它；服务端若下发"新版本"推送消息，因更新链路已断开，点进去也进不了更新流程。
- 设备固件 OTA（`DeviceFirmwareInfo*Activity`）未动，属设备功能。
- `com.google.android.gms.ads.identifier`（AdvertisingIdClient）保留：Firebase measurement 依赖，只取广告 ID，不展示广告。

## 5. 事故记录（务必看）

第一次启动改造因**方法体漏 `return-void`** 触发 `java.lang.VerifyError: Can flow through to end of code area`，导致启动即崩、系统反复重启。
教训：apktool 打包成功 ≠ 能跑；改完必须「装机 + 冷启动 + `adb logcat -b crash`」三步验证。
本次已加入自检脚本（扫描所有非 abstract 方法最后一条指令是否为 `return*`/`throw*`）。
