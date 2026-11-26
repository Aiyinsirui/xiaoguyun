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
