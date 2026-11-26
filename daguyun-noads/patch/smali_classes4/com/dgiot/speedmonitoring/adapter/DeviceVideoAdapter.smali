.class public Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DeviceVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;,
        Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;,
        Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$CommonCenterPopup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceVideoAdapter:"

.field public static beforeDayHint:I = 0x1


# instance fields
.field private adView:Landroid/view/View;

.field basePopupView:Lcom/lxj/xpopup/core/BasePopupView;

.field centerBeforePopup:Lcom/lxj/xpopup/core/BasePopupView;

.field centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private context:Landroid/content/Context;

.field hintBeforeRechargePopup:Lcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup;

.field private levelPic:[I

.field private mNativeAd:Ljava/lang/Object;

.field private mVideoInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private uiHandler:Landroid/os/Handler;

.field private upShowTime:J

.field private view:Landroid/view/View;

.field private viewClickListener:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

.field private viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;


# direct methods
.method public static synthetic $r8$lambda$-2reu3lzKbpG4IjKfDOd9MbceF0(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$7(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2LG6VY8ZtrMQSBIB8kMxovHRsGU(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$1(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$50D452qAYq3r3z5G1iieJ3U_ADg(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$goLive$21(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ha7Up_JmAhNAnwd8ev3GiOxCC4(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$19(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6MAR_2nXRalkLErSVxGKolaNU5I(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$18(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7INkUVFdrN231i6SypRa_GdNghs(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$17(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OMcLInwujDfNZTubUlZnTOk3puU(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$12(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSNNHmBxHSmbs5GeAMfvzI7K1U4(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$15(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QInw1xWxGBI_SI86i5cRMB7wggs(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$20(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRK06TDGXG95MpWZnp7cNG4BdJA(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$6(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5DpkGCgomoxJqhxnd_vqVrzWHA(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$11(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZm3KtiXEdKN6rqX-tNuoraYdGw(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$9(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxwbbUoghwBuOj1uPSyMeCi10bo(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zm2c6Xqolmah5gBBJcIrxxeOO9c(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$5(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_FzFFrOwWaZs47VyB2GNkUF-a9c(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$16(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_xpyUFWcTihH0BpPiZjs-HcRUJY(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwyPMBgZvI5xBC5HBsU3WvwOxIM(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$4(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j68EDsNwp34j5aTWW6zNu2j_2AI(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$13(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6BROYEg9mOprH9EkxYq_qdbnac(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$3(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$leA7V98eBfk7BYTI4vKswrPZNUE(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$8(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$no1AeyViECcmC2qnIKHFTWU6-Ao(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$14(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOIyumnP5ap76qBJibnxXEJ-gnw(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->lambda$onBindViewHolder$10(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewClickListener(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;)Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewClickListener:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewHolder(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;)Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgoLive(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-wide/16 v0, 0x0

    .line 565
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->upShowTime:J

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->hintBeforeRechargePopup:Lcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup;

    .line 664
    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g:I

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_2:I

    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_3:I

    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_4:I

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->levelPic:[I

    .line 806
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->uiHandler:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    .line 97
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewClickListener:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

    return-void
.end method

.method private doGoLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    .locals 3

    .line 825
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "iotId"

    .line 827
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "productName"

    .line 828
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "productSn"

    .line 829
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "deviceRole"

    .line 830
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "devicePermission"

    .line 832
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getDevicePermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "productIcc_id"

    .line 833
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CardExpirationTime"

    .line 834
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key_page_source"

    .line 835
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DeviceVideoAdapter:go live"

    .line 837
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 838
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    .locals 4

    .line 809
    :try_start_0
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceBaseInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "goLive request getDeviceInfoParam"

    .line 810
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getDeviceInfoParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 815
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->doGoLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 819
    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->doGoLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    :goto_0
    return-void
.end method

.method private goLiveActivity(ILandroid/content/Context;I)V
    .locals 2

    .line 765
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowExpiration(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "DeviceVideoAdapter:showRechargeDialog start"

    .line 766
    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 767
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showRechargeDialog(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V

    return-void

    .line 771
    :cond_0
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowBeforeExpiration(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 772
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p1, v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showBeforeRechargeDialog(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    return-void

    .line 776
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "DeviceVideoAdapter:UP_CLOSE_OPERATE_TIME_FLAG:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getStatus()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 777
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getStatus()I

    move-result p2

    if-eq p2, v0, :cond_2

    if-ne p3, v0, :cond_2

    .line 778
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showUnOnlineHint(Ljava/lang/String;)V

    return-void

    .line 782
    :cond_2
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isDisableClick(Ljava/lang/String;)Z

    .line 783
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p1, p3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    return-void
.end method

.method private goPlaybackActivity(ILandroid/content/Context;)V
    .locals 5

    .line 669
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getDevicePermission()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHasRecordingPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DeviceVideoAdapter:goPlaybackActivityLog:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowExpiration(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowExpiration(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showRechargeDialog(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V

    return-void

    .line 677
    :cond_1
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowBeforeExpiration(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showBeforeRechargeDialog(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    return-void

    .line 682
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceVideoAdapter:UP_CLOSE_OPERATE_TIME_FLAG:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-wide v3, Lcom/dgiot/speedmonitoring/DGConfiguration;->upCloseOperateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 683
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/dgiot/speedmonitoring/DGConfiguration;->upCloseOperateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    return-void

    .line 689
    :cond_3
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/PlaybackJumpManger;->Companion:Lcom/dgiot/speedmonitoring/ui/live/PlaybackJumpManger$Companion;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/PlaybackJumpManger$Companion;->getInstance()Lcom/dgiot/speedmonitoring/ui/live/PlaybackJumpManger;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    const-string v1, ""

    invoke-virtual {v0, p2, p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/PlaybackJumpManger;->goPlaybackActivity(Landroid/content/Context;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private goRechargeActivity(ILandroid/content/Context;Landroid/view/View;)V
    .locals 8

    .line 717
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "DeviceVideoAdapter:goRechargeActivity:1"

    .line 718
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1, p3}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->is5g(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DeviceVideoAdapter:goRechargeActivity:2"

    .line 723
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    sget-object v7, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;->other:Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;)V

    goto :goto_0

    :cond_1
    const-string v0, "DeviceVideoAdapter:goRechargeActivity:3"

    .line 727
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    sget-object v7, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;->other:Lcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcom/dgiot/speedmonitoring/tencent/WXSDKManager$JumpType;)V

    :goto_0
    return-void
.end method

.method private goSettingActivity(ILandroid/content/Context;)V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 743
    :cond_0
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowExpiration(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showRechargeDialog(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V

    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 750
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showUnOnlineHint(Ljava/lang/String;)V

    return-void

    .line 754
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/DeviceSettingActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 755
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIotId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iotId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "productSn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "productIcc_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key_page_path"

    const/4 v1, 0x2

    .line 758
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goShareActivity(ILandroid/content/Context;)V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowExpiration(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showRechargeDialog(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V

    return-void

    .line 705
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/share/ShareDeviceBindActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIotId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iotId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goWifiRecharge(ILandroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 713
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1, p3}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private hideMask(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V
    .locals 2

    .line 849
    iget-object v0, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_Mask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object p1, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_play:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static initBatView(Landroid/widget/ImageView;IZZ)V
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceVideoAdapter:initBatView:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 525
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_error:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 529
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_charging:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x50

    if-le p1, p2, :cond_2

    .line 533
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_full:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x3c

    if-le p1, p2, :cond_3

    .line 536
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_near_full:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x14

    if-le p1, p2, :cond_4

    .line 539
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_half:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    .line 542
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_few:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    .line 545
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_null:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 548
    :cond_6
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_battle_error:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public static is5g(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)Z
    .locals 1

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getUpTraffic()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCardFlowBeforeExpiration(I)Z
    .locals 11

    const-string v0, "/"

    const-string v1, "DeviceVideoAdapter:isCardFlowExpiration2->"

    .line 211
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 216
    sput v2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->beforeDayHint:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    .line 219
    sput v2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->beforeDayHint:I

    .line 220
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isExperiencePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    sput v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->beforeDayHint:I

    .line 227
    :cond_2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getCardExpirationTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 232
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 235
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    div-long/2addr v9, v7

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "///"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "     ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->beforeDayHint:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit16 v0, v0, 0xe10

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    sub-long/2addr v5, v9

    .line 237
    sget p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->beforeDayHint:I

    mul-int/lit8 p1, p1, 0x18

    mul-int/lit16 p1, p1, 0xe10

    int-to-long v0, p1

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v5, v0

    if-gtz p1, :cond_3

    const-string p1, "DeviceVideoAdapter:isCardFlowExpiration2->true"

    .line 238
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    :cond_3
    return v3
.end method

.method private isCardFlowExpiration(I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    const-string v3, "\\."

    const-string v4, " "

    const-string v5, "T"

    const-string v6, "DeviceVideoAdapter:isCardFlowExpiration->"

    const-string v7, "DeviceVideoAdapter:expirationTimeV:"

    const-string v8, "DeviceVideoAdapter:expirationTimeV.:"

    .line 143
    iget-object v9, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v9}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    return v10

    :cond_0
    const-wide/16 v11, 0x0

    .line 150
    :try_start_0
    iget-object v13, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v13}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getCardExpirationTime()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :try_start_1
    sget-object v14, Lcom/dgiot/speedmonitoring/DGConfiguration;->ExpirationTimeMap:Ljava/util/HashMap;

    iget-object v15, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v15}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 153
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 154
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v15, :cond_1

    move-object v13, v14

    .line 159
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v13, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 160
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v15}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 161
    new-instance v14, Ljava/text/SimpleDateFormat;

    invoke-direct {v14, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v14, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    sub-long/2addr v9, v1

    cmp-long v1, v9, v11

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1

    .line 173
    :catch_1
    :try_start_3
    iget-object v9, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v9}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getCardExpirationTime()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 175
    :try_start_4
    sget-object v10, Lcom/dgiot/speedmonitoring/DGConfiguration;->ExpirationTimeMap:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v7, :cond_3

    move-object v9, v1

    .line 182
    :catch_2
    :cond_3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v11

    if-gtz v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :catch_3
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private isDisableClick(Ljava/lang/String;)Z
    .locals 2

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceVideoAdapter:isDisableClick:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceHaveInitState(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 793
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$goLive$21(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    .locals 0

    .line 812
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->doGoLive(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 2

    .line 307
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewClickListener:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

    if-eqz p2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    .line 309
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-interface {p2, v0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;->nameClick(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 8

    .line 316
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result p3

    if-nez p3, :cond_0

    .line 317
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/dgiot/speedmonitoring/R$string;->device_share_cancel_submit:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 319
    :cond_0
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/dgiot/speedmonitoring/R$string;->deviceManager_unbind_hint:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    const-string p3, "fl_delete_click"

    .line 321
    invoke-static {p3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 322
    new-instance p3, Lcom/lxj/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 323
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/lxj/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object p3

    const/4 v0, 0x0

    .line 324
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object p3

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    .line 325
    invoke-virtual {p3, p2}, Lcom/lxj/xpopup/XPopup$Builder;->atView(Landroid/view/View;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object p2

    new-instance p3, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$CommonCenterPopup;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    .line 326
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v4

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    .line 327
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIotId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$1;

    invoke-direct {v7, p0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$1;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;)V

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$CommonCenterPopup;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;)V

    .line 326
    invoke-virtual {p2, p3}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->basePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$10(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 387
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goRechargeActivity(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$11(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 388
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goRechargeActivity(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$12(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 389
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goRechargeActivity(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$13(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 390
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goRechargeActivity(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$14(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 392
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goWifiRecharge(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$15(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 393
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goWifiRecharge(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$16(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 394
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goWifiRecharge(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$17(ILandroid/view/View;)V
    .locals 0

    .line 396
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goPlaybackActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$18(ILandroid/view/View;)V
    .locals 0

    .line 397
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goPlaybackActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$19(ILandroid/view/View;)V
    .locals 0

    .line 398
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goPlaybackActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(ILandroid/view/View;)V
    .locals 0

    .line 375
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goSettingActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$20(ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowExpiration(I)Z

    move-result p3

    if-nez p3, :cond_1

    .line 464
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->isCardFlowBeforeExpiration(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 465
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showBeforeRechargeDialog(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showUnOnlineHint(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-direct {p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showRechargeDialog(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(ILandroid/view/View;)V
    .locals 0

    .line 376
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goSettingActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(ILandroid/view/View;)V
    .locals 0

    .line 377
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goSettingActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(ILandroid/view/View;)V
    .locals 0

    .line 380
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goShareActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$6(ILandroid/view/View;)V
    .locals 0

    .line 381
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goShareActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$7(ILandroid/view/View;)V
    .locals 0

    .line 382
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goShareActivity(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$8(ILandroid/view/View;)V
    .locals 1

    .line 384
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goLiveActivity(ILandroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$9(ILandroid/view/View;)V
    .locals 1

    .line 385
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->goLiveActivity(ILandroid/content/Context;I)V

    return-void
.end method

.method private showBeforeRechargeDialog(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 615
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showUnOnlineHint(Ljava/lang/String;)V

    return-void

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showBeforeRechargeDialog:flag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 620
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    new-instance v2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$4;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$4;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup;-><init>(Landroid/content/Context;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;ILcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup$CenterDialogClickListener;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->hintBeforeRechargePopup:Lcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup;

    .line 660
    new-instance p1, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->hintBeforeRechargePopup:Lcom/dgiot/speedmonitoring/ui/pop/HintBeforeRechargePopup;

    invoke-virtual {p1, p2, v0, v1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->centerBeforePopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 661
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method private showMask(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V
    .locals 2

    .line 843
    iget-object v0, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_Mask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_Mask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 845
    iget-object p1, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_play:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showRechargeDialog(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V
    .locals 8

    .line 568
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->upShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->upShowTime:J

    .line 573
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getCardExpirationTime()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$3;

    invoke-direct {v7, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$3;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup$CenterDialogClickListener;)V

    .line 603
    new-instance v1, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, p1, v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 604
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    .line 605
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewClickListener:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;->checkFlow(Ljava/lang/String;)V

    return-void
.end method

.method private showUnOnlineHint(Ljava/lang/String;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewClickListener:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

    if-eqz v0, :cond_0

    .line 802
    invoke-interface {v0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;->clickUnOnlineHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateOnLineStateDesc(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 3

    .line 854
    invoke-static {p2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->unOnLinePowerValueMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gtz p2, :cond_0

    const/4 v1, 0x1

    .line 855
    :cond_0
    iget-object p1, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tvOnLineStateDesc:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const-string/jumbo p2, "\u4f4e\u7535\u91cf\u5173\u673a"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "\u8bbe\u5907\u79bb\u7ebf"

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 61
    check-cast p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->onBindViewHolder(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;I)V
    .locals 10

    const-string v0, "DeviceVideoAdapter:batViewSetShow:"

    const-string v1, "DeviceVideoAdapter:checkGetPower_response:"

    .line 252
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    if-eqz v2, :cond_12

    .line 253
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 257
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_flag:Landroid/widget/TextView;

    .line 259
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    .line 258
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v3

    .line 261
    iget-object v4, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_playback:Landroid/widget/ImageView;

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    sget v8, Lcom/dgiot/speedmonitoring/R$drawable;->menu_playback:I

    goto :goto_1

    .line 262
    :cond_1
    iget-object v8, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v8}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getDevicePermission()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHasRecordingPermission(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget v8, Lcom/dgiot/speedmonitoring/R$drawable;->menu_playback:I

    goto :goto_1

    :cond_2
    sget v8, Lcom/dgiot/speedmonitoring/R$drawable;->menu_playback_gray:I

    .line 261
    :goto_1
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v4, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_share:Landroid/widget/ImageView;

    if-ne v3, v7, :cond_3

    sget v8, Lcom/dgiot/speedmonitoring/R$drawable;->menu_share:I

    goto :goto_2

    :cond_3
    sget v8, Lcom/dgiot/speedmonitoring/R$drawable;->menu_share_gray:I

    :goto_2
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v4, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_setting:Landroid/widget/ImageView;

    if-ne v3, v7, :cond_4

    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->menu_setting:I

    goto :goto_3

    :cond_4
    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->menu_setting_gray:I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    .line 269
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState:Landroid/widget/TextView;


    .line 273
    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getCategoryImage()Ljava/lang/String;

    move-result-object v3

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "DeviceVideoAdapter:DeviceVideoAdapter imgUrl->"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 275
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cv_cardFlow:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 277
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveControllerDeal;->getVideoPngPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "DeviceVideoAdapter:video_picPath:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 284
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/util/ImageCropper;->processImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 285
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v9}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "old"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveControllerDeal;->getVideoPngPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_5

    .line 289
    iget-object v9, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_categoryImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/dgiot/speedmonitoring/util/ImageCropper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_4

    .line 293
    :cond_5
    invoke-static {v8}, Lcom/dgiot/speedmonitoring/util/ImageCropper;->processImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 295
    iget-object v4, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_categoryImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 298
    :cond_6
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_categoryImage:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->device_card_background:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :goto_4
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_delete:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_setting:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_setting:Landroid/widget/ImageView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_setting:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_share:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_share:Landroid/widget/ImageView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_share:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_categoryImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->bt_goLiveVideo:Lcom/dgiot/baseframework/view/CustomClickEffectView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda13;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/dgiot/baseframework/view/CustomClickEffectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_data_plan:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda14;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_data_plan:Landroid/widget/ImageView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda15;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_data_plan:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda16;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_goFlow:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda17;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_yun:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda18;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_data_yun:Landroid/widget/ImageView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda19;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_data_yun:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda20;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_playback:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda21;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_playback:Landroid/widget/ImageView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_playback:Landroid/widget/TextView;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->updateOnLineStateDesc(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getStatus()I

    move-result v3

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "DeviceVideoAdapter:requestServerAddress2-->"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v8}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-ne v3, v7, :cond_9

    .line 405
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->view_stateFlag:Landroid/view/View;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->bg_shape_round50:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 406
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getDbm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 407
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 408
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->levelPic:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 411
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 413
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 412
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewUtil;->getDeviceDbmLevel(I)I

    move-result v3

    .line 414
    iget-object v4, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->levelPic:[I

    sub-int/2addr v3, v7

    aget v3, v8, v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 417
    :cond_8
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->levelPic:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    :goto_5
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_netType:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_delete:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_delete_flag:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->hideMask(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    goto :goto_6

    :cond_9
    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 427
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->view_stateFlag:Landroid/view/View;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->bg_shape_round50_grey:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 429
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_netType:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_delete:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_delete_flag_dis:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showMask(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    goto :goto_6

    .line 434
    :cond_a
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_netType:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->view_stateFlag:Landroid/view/View;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->bg_shape_round50_grey:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 437
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_disable:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_delete:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_delete_flag_dis:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->showMask(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    .line 442
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeviceVideoAdapter:getUpTraffic:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getUpTraffic()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeviceVideoAdapter:isWifiDevice:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 446
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_netType:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isHaveLineDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "\u6709\u7ebf"

    goto :goto_7

    :cond_b
    const-string/jumbo v4, "wifi"

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_data_plan:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    sget v8, Lcom/dgiot/speedmonitoring/R$string;->device_item_hint_menu1_1:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_data_plan:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->menu_cloud_service:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_yun:Landroid/widget/FrameLayout;


    .line 450
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState1:Landroid/widget/TextView;


    goto :goto_9

    .line 453
    :cond_c
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState1:Landroid/widget/TextView;


    .line 454
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_netType:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->is5g(Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "5G"

    goto :goto_8

    :cond_d
    const-string v4, ""

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_data_plan:Landroid/widget/ImageView;

    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->menu_traffic:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_yun:Landroid/widget/FrameLayout;


    .line 457
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    if-eqz v3, :cond_e

    .line 458
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_data_plan:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->context:Landroid/content/Context;

    sget v8, Lcom/dgiot/speedmonitoring/R$string;->device_item_hint_menu1:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_e
    :goto_9
    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_Mask:Landroid/view/View;

    new-instance v4, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p2, p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;ILcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_10

    .line 478
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceVideoAdapter:holderflAd:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->adView:Landroid/view/View;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 479
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mNativeAd:Ljava/lang/Object;

    if-eqz p2, :cond_f

    .line 480
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->flAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 481
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->flAdContent:Landroid/widget/FrameLayout;

    iget-object v3, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->adNativeView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mNativeAd:Ljava/lang/Object;


    goto :goto_a

    .line 484
    :cond_f
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->flAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    .line 490
    :cond_10
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->flAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 493
    :goto_a
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_rechargeYun:Landroid/widget/ImageView;

    new-instance v3, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$2;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$2;-><init>(Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->batView:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object p2, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->bat0:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 506
    :try_start_0
    sget-object p2, Lcom/dgiot/speedmonitoring/DGConfiguration;->powerValueMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 507
    sget-object v3, Lcom/dgiot/speedmonitoring/DGConfiguration;->powerChargingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 509
    iget-object v1, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->batView:Landroid/widget/ImageView;

    if-ne v3, v7, :cond_11

    goto :goto_b

    :cond_11
    move v7, v6

    :goto_b
    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, p2, v7, v2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->initBatView(Landroid/widget/ImageView;IZZ)V

    .line 511
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->isInitPowerValueMap:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 512
    sget-boolean p2, Lcom/dgiot/speedmonitoring/DGConfiguration;->isInitPowerValueMap:Z

    if-eqz p2, :cond_12

    .line 513
    iget-object p1, p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->batView:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_12
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/dgiot/speedmonitoring/R$layout;->item_videolist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->view:Landroid/view/View;

    .line 131
    new-instance p1, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->view:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->viewHolder:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;

    return-object p1
.end method

.method public removeAdView()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->adView:Landroid/view/View;

    .line 119
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mNativeAd:Ljava/lang/Object;

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->adView:Landroid/view/View;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->mVideoInfoList:Ljava/util/List;

    return-void
.end method

