.class public final Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;
.super Lcom/dgiot/speedmonitoring/base/BaseFragment;
.source "MineFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/BaseFragment<",
        "Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineFragment.kt\ncom/dgiot/speedmonitoring/ui/mine/MineFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,439:1\n1855#2,2:440\n1855#2,2:442\n37#3,2:444\n*S KotlinDebug\n*F\n+ 1 MineFragment.kt\ncom/dgiot/speedmonitoring/ui/mine/MineFragment\n*L\n216#1:440,2\n263#1:442,2\n271#1:444,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u0017H\u0002J\u0008\u0010\u001a\u001a\u00020\u0017H\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016J\u0006\u0010\u001d\u001a\u00020\u0017J\u0006\u0010\u001e\u001a\u00020\u0017J\u0018\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0013H\u0002J\u0008\u0010\"\u001a\u00020\u0017H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;",
        "Lcom/dgiot/speedmonitoring/base/BaseFragment;",
        "Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;",
        "()V",
        "adJgNativeAd",
        "adNotePopupView",
        "Lcom/lxj/xpopup/core/BasePopupView;",
        "getAdNotePopupView",
        "()Lcom/lxj/xpopup/core/BasePopupView;",
        "setAdNotePopupView",
        "(Lcom/lxj/xpopup/core/BasePopupView;)V",
        "mNativeView",
        "Landroid/widget/FrameLayout;",
        "getFlowDevice",
        "",
        "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
        "rawDeviceList",
        "getNameDic",
        "",
        "sn",
        "getViewBinding",
        "goAccountSetting",
        "",
        "goWXApplet",
        "initAd",
        "initialize",
        "onPause",
        "onResume",
        "requestAd",
        "shareLogFile",
        "showNote",
        "title",
        "content",
        "updateAdData",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields

.field private adNotePopupView:Lcom/lxj/xpopup/core/BasePopupView;

.field private mNativeView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$1PgRujjU1XLxOrVC0Wp8B4qGsJg(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$1(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4EqkAvWYIskatcyHz8PI-mFfQZA(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$8(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5WvcjVJPNYoxikVnG9zoAGZNf2g(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$3(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5w2gGhun1x8P08cZ5-mkPyQMcME(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$5(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7DrTkCuPnDCX8KN4IP6Fjbf11ks(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$2(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9sYniOGaBK89EWD26N0hUw4gxDY(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$10(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FErAmH5Wb51sja5ktEf20lCA-q4(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$13(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G_WuAg6yJP3jU1oSUGPCc-_yGys(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->goWXApplet$lambda$20(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UD5-mVp9APa1rCDCTKj6ztOx80k(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$6(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAsc1h9R0TSzxbeKTLF3pmwk4kU(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$11(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ykSn-p3cgKH38kV-5vdRkJjYEQ(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$9(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eBBf3-pf-PbR42mRnRI_4gxR24E(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$7(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i91DFr4HhUdSQPVaJFZDvgO7dCU(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$15(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mVjhjRe_UWyXxVACDQuLfFNTriE(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$12(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7l5N6DqdILgJ9Xtep9hG6oKVLg(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$14(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNNNysJ6lLlKdwCWuuSowZ5wU_g(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$4(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFHBrDw3Aq0VJw-bjlm0WVAn65Q(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initialize$lambda$16(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    return-object p0
.end method

.method private final getFlowDevice(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 216
    check-cast p1, Ljava/lang/Iterable;

    .line 440
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 217
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final getNameDic(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 301
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final goAccountSetting()V
    .locals 3

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dgiot/speedmonitoring/ui/person/setting/AccountSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final goWXApplet()V
    .locals 19

    .line 241
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 243
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 244
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 246
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 247
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v4

    :cond_0
    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v2, v0, v4}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    move-object/from16 v1, p0

    goto/16 :goto_3

    .line 251
    :cond_1
    :try_start_0
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceInfo(Ljava/lang/String;)Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    move-result-object v1

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->is5g(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)Z

    move-result v1

    .line 252
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v7}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v8}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v9

    check-cast v9, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v4

    :goto_1
    check-cast v9, Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    :cond_3
    move v10, v2

    sget-object v11, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;->other:Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;

    invoke-virtual/range {v5 .. v11}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v4

    :cond_4
    move-object/from16 v16, v4

    check-cast v16, Landroid/view/View;

    const/16 v17, 0x1

    sget-object v18, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;->other:Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;

    invoke-virtual/range {v12 .. v18}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;)V

    goto/16 :goto_0

    .line 262
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 263
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v4, "element"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 442
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 264
    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getNickName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 267
    new-instance v4, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    div-int/lit8 v5, v2, 0x4

    sub-int/2addr v2, v5

    invoke-virtual {v4, v2}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    const/high16 v4, 0x42480000    # 50.0f

    .line 269
    invoke-virtual {v2, v4}, Lcom/lxj/xpopup/XPopup$Builder;->borderRadius(F)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v5

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/dgiot/speedmonitoring/R$string;->person_pop_select_device_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v1, Ljava/util/Collection;

    new-array v2, v3, [Ljava/lang/String;

    .line 445
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 270
    new-instance v10, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct {v10, v1, v0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual/range {v5 .. v10}, Lcom/lxj/xpopup/XPopup$Builder;->asCenterList(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/lxj/xpopup/interfaces/OnSelectListener;)Lcom/lxj/xpopup/impl/CenterListPopupView;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/lxj/xpopup/impl/CenterListPopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_3

    :cond_7
    move-object/from16 v1, p0

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dgiot/speedmonitoring/R$string;->person_pop_select_device_no:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final goWXApplet$lambda$20(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "this$0"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$deviceList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 276
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v2

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v4

    :cond_0
    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v5, v0, v4}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_2

    .line 281
    :cond_1
    :try_start_0
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceInfo(Ljava/lang/String;)Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->is5g(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)Z

    move-result v2

    .line 282
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v7}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v8}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v9

    check-cast v9, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v4

    :goto_0
    check-cast v9, Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    move v10, v2

    sget-object v11, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;->other:Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;

    invoke-virtual/range {v5 .. v11}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 285
    :catch_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v4

    :cond_4
    move-object/from16 v16, v4

    check-cast v16, Landroid/view/View;

    const/16 v17, 0x1

    sget-object v18, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;->other:Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;

    invoke-virtual/range {v12 .. v18}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;)V

    :goto_2
    return-void
.end method

.method private final initAd()V
    .locals 1

    .line 436



    .line 437
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAdContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->mNativeView:Landroid/widget/FrameLayout;

    return-void
.end method

.method private static final initialize$lambda$1(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dgiot/speedmonitoring/ui/person/setting/SettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$10(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/MyVideoListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$11(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/MyVideoListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$12(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/person/share/MyShareActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$13(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/person/share/MyShareActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$14(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->goWXApplet()V

    return-void
.end method

.method private static final initialize$lambda$15(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v1, p1, v2}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-string/jumbo p1, "\u60a8\u8fd8\u6ca1\u6709\u8bbe\u5907,\u8bf7\u5148\u53bb\u9996\u9875\u6dfb\u52a0\u4e00\u4e2a\u8bbe\u5907\uff01"

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final initialize$lambda$16(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "llAdContainerClose:"

    .line 186
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAd:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    const/4 p0, 0x1

    .line 188
    invoke-static {p0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserIsCloseAd2(Z)V

    return-void
.end method

.method private static final initialize$lambda$2(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dgiot/speedmonitoring/ui/person/about/AboutActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$3(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget p1, Lcom/dgiot/speedmonitoring/R$string;->ad_disc_title:I

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->ad_disc_content:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->showNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final initialize$lambda$4(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dgiot/speedmonitoring/ui/customer/CustomerNewWeb;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$5(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->goAccountSetting()V

    return-void
.end method

.method private static final initialize$lambda$6(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->goAccountSetting()V

    return-void
.end method

.method private static final initialize$lambda$7(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->goAccountSetting()V

    return-void
.end method

.method private static final initialize$lambda$8(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/MyDeviceListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$9(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/MyDeviceListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->adNotePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$showNote$notePopup$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$showNote$notePopup$1;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup$CenterDialogClickListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup$CenterDialogClickListener;)V

    .line 209
    new-instance p1, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "requireContext(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->getRoot()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    check-cast v0, Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p1, p2, v1, v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->adNotePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdNotePopupView()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->adNotePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 123
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->rlSetting:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda8;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->rlAbout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda15;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->rlAboutAd:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda16;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->rlCustomer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->tvAccount:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda2;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->tvFlag:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda3;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_5
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivTopRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda4;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_6
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llMyDevice:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda5;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_7
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivDevice:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda6;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llOrder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda7;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_9
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivOrder:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda9;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_a
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivShare:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda10;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_b
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->tvShare:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda11;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_c
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->rlFlowQuery:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda12;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_d
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivRechargeAd:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda13;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_e
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivCloseAd:Landroid/widget/ImageView;

    goto :goto_0

    :cond_f
    move-object v0, v1

    :goto_0
    const/16 v2, 0x8

    if-nez v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :goto_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivCloseAd:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment$$ExternalSyntheticLambda14;-><init>(Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_11
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAd:Landroid/widget/FrameLayout;

    :cond_12
    if-nez v1, :cond_13

    goto :goto_2

    :cond_13
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    :goto_2
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->initAd()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 55
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onResume()V

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "broadcast_load_interstitial_finish"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginUserInfo()Lcom/dgiot/speedmonitoring/bean/TokenBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->tvAccount:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/TokenBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    :goto_1
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adOnReceived:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->ivCloseAd:Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setZ(F)V

    .line 65
    :goto_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAdContainer:Landroid/widget/FrameLayout;

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setZ(F)V

    :goto_5
    const/4 v0, 0x4

    .line 66
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getAdShowStateNew(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAdShowStateNews 4:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getAdShowStateNew(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getUserIsCloseAd2()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 69
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAd:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    xor-int/2addr v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAdShowStateNews binding!!.llAdContainer.childCount = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAd:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    :goto_7
    if-nez v2, :cond_c

    .line 71
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requestAd()V

    goto :goto_9

    .line 75
    :cond_9
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentMineBinding;->llAd:Landroid/widget/FrameLayout;

    :cond_a
    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    :goto_8
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->updateAdData()V

    :cond_c
    :goto_9
    return-void
.end method

.method public final setAdNotePopupView(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->adNotePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final shareLogFile()V
    .locals 4

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "example.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 112
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 113
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "Share Log File"

    .line 114
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/mine/MineFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Log file does not exist."

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final requestAd()V
    .locals 0

    return-void
.end method

.method private final updateAdData()V
    .locals 0

    return-void
.end method
