# 小谷云（com.dgiot.speedmonitoring v9.0）UI 现代化设计与进度

> 本轮目标：把原厂"死板、固定尺寸"的界面改成现代化布局；适配平板横屏；组件按屏幕比例自适应；参考 `揪咪` 与 `Flowmix` 两个 App 的视觉语言；补齐光效与点击动效。

## 1. 设计 token（已落地，`res/values/colors.xml` + `res/drawable/xgy_*`）

| token | 值 | 用途 |
|---|---|---|
| `xgy_bg` | `#F5F6FA` | 页面底色（浅灰，参考两套参考 App 的一致做法） |
| `xgy_surface` | `#FFFFFF` | 卡片面 |
| `xgy_surface_alt` | `#EFF1F9` | 柔和胶囊/次级面 |
| `xgy_text` / `xgy_text_2` / `xgy_text_3` | `#17181D` / `#666B78` / `#9AA0AE` | 三级文字 |
| `xgy_primary` | `#3B5BFE` | 主色（在原有蓝上提饱和、降明度，更"科技感"） |
| `xgy_accent` | `#7C5CFF` | 渐变副色（主按钮渐变、强调） |
| `xgy_divider` | `#ECEEF4` | 1dp 描边/分隔 |
| `xgy_header_top/bottom` | `#E9EEFF` → `#F5F6FA` | 头部柔和渐变（替代原蓝色大图） |

Drawable：
- `xgy_card.xml` / `xgy_card_ripple.xml`：20dp 圆角白卡 + 1dp 描边 + 点击水波纹
- `xgy_header_bg.xml`：底部 28dp 圆角的柔和渐变
- `xgy_icon_circle.xml`：圆形图标按钮（带 ripple）
- `xgy_pill.xml` / `xgy_pill_on_image.xml`：胶囊标签 / 压在画面上的半透明胶囊
- `xgy_btn_primary.xml`：主按钮（primary→accent 渐变 + 18dp 圆角 + ripple）
- `xgy_nav_bg.xml`：悬浮底部导航胶囊
- `xgy_press_scale.xml`：`stateListAnimator` 按压缩放 0.97 + 回弹（overshoot）

## 2. 已完成（真机截图验证）

1. **首页头部**：去掉蓝色大图，改浅色渐变 + 4 个圆形图标按钮（新手教程/消息通知/添加设备/扫码添加），图标 tint 主色、文字 11sp 次级灰。
2. **底部导航**：整条改为悬浮胶囊（左右 16dp、底 12dp、28dp 圆角、8dp elevation），item 背景透明 + ripple。
3. **设备卡**：白底 20dp 圆角 + 1dp 描边 + 2dp elevation + `clipToOutline` 圆角裁切；画面高度 210dp→200dp；播放键改 56dp 半透明圆形；设备名 18sp 加粗 + 文字阴影；整卡 `stateListAnimator` 按压缩放。
4. **平板横屏**：解除 `MainActivity` 与 `VideoLiveActivity` 的 `screenOrientation="portrait"` 锁定，横屏铺满（不再左右黑边）。
5. **暗色运营位/云存入口**：沿用去广告阶段的隐藏（`fl_AdContent`/`ll_adTop`/`fl_bottom_ad`/`rl_ad_hint_recharge`/`ll_yun`/`ll_cusiv_data_plan`）。

## 3. 下一步（按优先级）

1. **直播页横屏主从布局**（TP-Link 风格）：横屏时左侧 16:9 画面 + 右侧竖向控制栏；竖屏保持上下堆叠。需要新增 `res/layout-land/activity_video_live.xml` 并保留全部 id。
2. **设备卡按屏宽自适应列数**：横屏/大屏 2 列网格（`RecyclerView` + `GridLayoutManager`，按 `screenWidthDp` 动态 spanCount）。
3. **我的页 / 登录页**：按同一 token 重排（卡片分组、行高 56dp、右侧 chevron、ripple）。
4. **光效**：主按钮/图标的呼吸光、播放中的画面外发光（可用 `View` + `radial gradient` 或 `ObjectAnimator` alpha）。
5. **动效**：页面进入 `fade+translateY`、卡片 `scale` 按压已做、列表 `itemAnimator` 微调。

## 4. 踩坑（务必看）

1. **不能改 databinding 结构**：`FragmentHomeBinding` / `ItemVideolistBinding` 在 `bind()` 时校验 **全部 id**，缺一个就 `NullPointerException: Missing required view with ID`。改布局前先跑 `work2/check_binding_ids.py`（对比 binding smali 里的 `R$id` 与布局里的 `@id`）。
2. **自定义 view 的类型不能变**：`ll_contacts` 在布局里是 `FloatAdsorbContainer`，不能换成 `LinearLayout`，否则 `ClassCastException`。
3. **广告 View 标签要替换**：恢复原布局后 `item_videolist` 会带回 `<com.anythink.nativead.api.ATNativeView>`，必须再换成 `FrameLayout`（广告类已删，否则 `ClassNotFoundException`）。
4. **`android:stateListAnimator` 只对 `View` 生效**：给 `FrameLayout` 根节点加可以，给 `RoundedLinearLayout` 自定义控件加要谨慎。
5. **每次改完必须装机验证**：`adb install -r` → 冷启动 → `adb logcat -b crash`。本轮就是靠它抓到三连崩（缺 id / 类型不匹配 / 残留广告 View）。


---

## 5. 第二轮（2026-11-26 21:40–21:50）

### 5.1 体积：86.4 MB → 64.8 MB

| 处理 | 释放 |
|---|---|
| 删除 `armeabi-v7a`（18.39 MB）、`armeabi`（0.45 MB）、`x86`（1.12 MB）原生库，只保留 `arm64-v8a` | 19.96 MB |
| 删除穿山甲残留 `libPglbizssdk_ml.so`（1.08 MB）、cj 残留 `libcjaf.so`（0.22 MB） | 1.30 MB |

**不能降到 30MB 的原因**（实测拆包）：`dex` 31.3 MB（7 个 dex）、`arm64` 原生库 28.8 MB、`res` 19.5 MB。
dex 已无法再压（未开 R8，改 smali 做不了全局混淆/裁剪）；`libprotobuf`(6.7)+`libblplayer`(5.8)+`libavcodec`(3.8)
是设备协议与播放器，删了就不能出画面。

> 另外 850 个广告 SDK 资源文件（1.68 MB）**没有删**：它们与 `public.xml` 的资源 ID 绑定，
> 试删会连带 `styles.xml`/`arrays.xml` 一起报 `no definition for declared symbol`。为 1.68 MB 去重排资源 ID 不值得。

### 5.2 广告组件到底删没删

代码层：**已删除 28,328 个广告类**（TopOn/穿山甲/GDT/百青藤/倍孜/京准/趣盟/慧算/CJ/极准/开心/美数/Octopus/Taku/Growmore），
加上 208 个清单组件、2 条权限、27 个广告 .so、广告素材目录。本轮又补删了 2 个残留广告 .so。
现在剩下的只有：850 个纯图片/布局资源（无代码引用、不在清单、不参与渲染）。

### 5.3 本轮 UI 修正

1. 底部导航：改为 `wrap_content` + 水平居中 + `minWidth=420dp` + 底部 24dp（之前贴底且满宽）。
2. 设备卡：去掉 `clipToOutline` / `elevation` / 描边 / 按压缩放，换成纯白 20dp 圆角背景，消除"白边"和圆角不匹配。
3. 首页悬浮「官方技术客服」图标：`alpha=0` 隐藏（原本由代码强制显示）。
4. 直播默认画质：`selectStream` 构造默认值 1 → **0（超清）**，并把 `curDefinition` 默认置 1 保持一致。

### 5.4 下一步（未完成）

- 设备卡按屏宽自适应列数（竖屏 1 列 / 横屏 2 列）+ 画面 16:9 等比（需要改 `DeviceVideoAdapter` 的测量逻辑）；
- 直播页横屏主从布局（左画面 + 右控制栏）；
- 我的/登录/设置页按同一 token 重排；
- 客服入口从「我的」页 `rl_customer` 恢复显示（需先确认点击逻辑可用）。


---

## 6. 第三轮：超清默认值的回归与回滚（2026-11-26 22:10）

### 6.1 现象
上一轮把直播默认画质从「高清」改成「超清」（`selectStream` 构造默认 1 → 0）。用户实测后：
- 进入直播页后点「清晰度 / 灯光 / 对讲」会**自动退回首页**；
- 系统报 **应用无响应（ANR）**；
- 刚进页面约 **7 秒**卡住不动，之后才出画面。

### 6.2 证据
`dumpsys dropbox --print data_app_anr` 里抓到 4 条 ANR，全部是同一处：

```
Process: com.dgiot.speedmonitoring
Activity: com.dgiot.speedmonitoring/.ui.live.VideoLiveActivity
CPU usage: 37% 13811/com.dgiot.speedmonitoring: 34% user + 2.6% kernel / faults: 172121 minor 3520 major
```

- 没有 Java 层 `FATAL EXCEPTION`（不是崩溃，是主线程被卡住触发 ANR）；
- 37% 单进程 CPU + 3520 次 major page fault → 典型的大码流解码 + 内存抖动；
- `crash` 缓冲为空，只有 ANR。

### 6.3 结论与处理
**超清流（1920×2160 HEVC）在这台平板上解码过重**，主线程被播放器初始化/切流阻塞 →
系统判定 ANR → 回收界面（表现就是"自动退回首页"）。这不是我改 UI 引入的崩溃，是我上一轮
把默认流换成超清后**踩到了原厂播放器的性能天花板**。

处理（已验证构建 + 装上 + 进直播页能正常出画面）：
1. **默认画质回滚为高清**：撤销构造里的 `selectStream=0`，恢复原厂默认 1（高清）；
2. **彻底屏蔽「超清(CQ)」选项**：在 `VideoLiveActivity.setDefinitionPopResult()` 开头加
   `if (type == DefinitionType.CQ) return;`，这样即使手动点也切不到超清，避免再次触发 ANR；
3. 保留「高清 / 流畅」两档可用。

> 顺带说明：进页面约 7 秒才出画面是**原厂行为**（RTMP 握手 + 首帧 + 双路解码），
> 与本次改动无关；我实测同样需要等待，切回高清后没有出现页面自动关闭。

### 6.4 教训
改播放相关参数（码流档位、解码器、分包大小）必须**真机跑一遍交互**，不能只看编译和冷启动。
ANR 不看 `logcat -b crash`，要看 `dumpsys dropbox --print data_app_anr` 或 `/data/anr/`。
