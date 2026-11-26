.class public final Lcom/dgiot/speedmonitoring/LaunchActivity;
.super Lcom/dgiot/speedmonitoring/base/LaunchBaseMainActivity;
.source "LaunchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dgiot/speedmonitoring/LaunchActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/LaunchBaseMainActivity<",
        "Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u0000 22\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u0012\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011J\u0008\u0010\u001b\u001a\u00020\u0014H\u0002J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000eH\u0002J\n\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0014H\u0002J\u0008\u0010 \u001a\u00020\u0014H\u0002J\u0008\u0010!\u001a\u00020\u0014H\u0002J\u0008\u0010\"\u001a\u00020\u0014H\u0002J\u0008\u0010#\u001a\u00020\u0014H\u0002J\u0008\u0010$\u001a\u00020\u0014H\u0002J\u0008\u0010%\u001a\u00020\u0014H\u0016J\u0008\u0010&\u001a\u00020\u0014H\u0002J\u0008\u0010\'\u001a\u00020\u0014H\u0002J\u0008\u0010(\u001a\u00020\u0014H\u0002J\u001e\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u0011J\u0008\u0010-\u001a\u00020\u0014H\u0002J\u0008\u0010.\u001a\u00020\u0014H\u0002J\u0008\u0010/\u001a\u00020\u0014H\u0002J\u0008\u00100\u001a\u00020\u0014H\u0002J\u0008\u00101\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/LaunchActivity;",
        "Lcom/dgiot/speedmonitoring/base/LaunchBaseMainActivity;",
        "Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;",
        "()V",
        "adTimeoutRunnable",
        "Ljava/lang/Runnable;",
        "agreePopup",
        "Lcom/lxj/xpopup/core/BasePopupView;",
        "disAgreePopup",
        "isAdProcessed",
        "",
        "mainHandler",
        "Landroid/os/Handler;",
        "picList",
        "",
        "",
        "encodeFileToBase64Binary",
        "",
        "name",
        "executeAdConfig",
        "",
        "adInfo",
        "Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;",
        "executeAdConfigAnd",
        "executeAdConfigAndJump",
        "extractVersionFromHtml",
        "html",
        "forceJumpToMain",
        "getPicIdList",
        "Landroid/view/View;",
        "getViewBinding",
        "goAdSplashActivity",
        "goLoadInterstitial",
        "goLogin",
        "goMain",
        "goMainPage",
        "initMonitor",
        "initialize",
        "markProcessed",
        "onAdRequestTimeout",
        "openAgreeDialog",
        "replaceNullFieldWithValue",
        "jsonStr",
        "fieldName",
        "newValue",
        "requestAd",
        "requestUserNotifyState",
        "showAgreeDialog",
        "showDisAgreeDialog",
        "test",
        "Companion",
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


# static fields
.field private static final AD_REQUEST_TIMEOUT:J = 0xbb8L

.field public static final Companion:Lcom/dgiot/speedmonitoring/LaunchActivity$Companion;

.field private static upOpenDialogTime:J


# instance fields
.field private final adTimeoutRunnable:Ljava/lang/Runnable;

.field private agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private disAgreePopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private isAdProcessed:Z

.field private final mainHandler:Landroid/os/Handler;

.field private picList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QPSPE6vJdRGVJ8VBt2Y2SfxOA2E(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goLoadInterstitial$lambda$4(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f3dWpbCdO9CvXyaklt-MAo_7wO8(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->adTimeoutRunnable$lambda$2(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$haUfzfruK-UsFH2PrG83H8WB35Q(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goLoadInterstitial$lambda$5(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxrjKOdisemzziAz0UTDZEiJYvA(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMainPage$lambda$3(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qCBR8f1DO5CFBNGk9JGgKTzTt98(Lcom/dgiot/speedmonitoring/LaunchActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getPicIdList$lambda$1(Lcom/dgiot/speedmonitoring/LaunchActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dgiot/speedmonitoring/LaunchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dgiot/speedmonitoring/LaunchActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dgiot/speedmonitoring/LaunchActivity;->Companion:Lcom/dgiot/speedmonitoring/LaunchActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/LaunchBaseMainActivity;-><init>()V

    .line 561
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->mainHandler:Landroid/os/Handler;

    .line 563
    new-instance v0, Lcom/dgiot/speedmonitoring/LaunchActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/LaunchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->adTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$executeAdConfigAndJump(Lcom/dgiot/speedmonitoring/LaunchActivity;Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/LaunchActivity;->executeAdConfigAndJump(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V

    return-void
.end method

.method public static final synthetic access$getAdTimeoutRunnable$p(Lcom/dgiot/speedmonitoring/LaunchActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->adTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getAgreePopup$p(Lcom/dgiot/speedmonitoring/LaunchActivity;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getDisAgreePopup$p(Lcom/dgiot/speedmonitoring/LaunchActivity;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->disAgreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/dgiot/speedmonitoring/LaunchActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$goMainPage(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMainPage()V

    return-void
.end method

.method public static final synthetic access$initMonitor(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->initMonitor()V

    return-void
.end method

.method public static final synthetic access$isAdProcessed$p(Lcom/dgiot/speedmonitoring/LaunchActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->isAdProcessed:Z

    return p0
.end method

.method public static final synthetic access$markProcessed(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->markProcessed()V

    return-void
.end method

.method public static final synthetic access$showAgreeDialog(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->showAgreeDialog()V

    return-void
.end method

.method public static final synthetic access$showDisAgreeDialog(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->showDisAgreeDialog()V

    return-void
.end method

.method private static final adTimeoutRunnable$lambda$2(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->onAdRequestTimeout()V

    return-void
.end method

.method private final encodeFileToBase64Binary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 434
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "open(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 436
    new-array v1, v0, [B

    .line 438
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 439
    invoke-virtual {v2, v1, p1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 440
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x2

    .line 447
    invoke-static {v1, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final executeAdConfig(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 756
    invoke-static {}, Lcom/dgiot/speedmonitoring/util/adutil/AdReportUtil;->getInstance()Lcom/dgiot/speedmonitoring/util/adutil/AdReportUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/util/adutil/AdReportUtil;->setAdConfig(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V

    const-string p1, "requestAd: \u5e7f\u544a\u914d\u7f6e\u521d\u59cb\u5316\u5b8c\u6210"

    .line 757
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final executeAdConfigAnd(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V
    .locals 0

    .line 762
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/LaunchActivity;->executeAdConfig(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V

    return-void
.end method

.method private final executeAdConfigAndJump(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V
    .locals 0

    .line 766
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/LaunchActivity;->executeAdConfig(Lcom/dgiot/speedmonitoring/bean/AdResponseInfo;)V

    .line 767
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMainPage()V

    return-void
.end method

.method private final forceJumpToMain()V
    .locals 5

    .line 687
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 688
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/dgiot/speedmonitoring/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/base/Base;->jumpAndFinishActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "forceJumpToMain: \u8df3\u8f6c\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getPicIdList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 474
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/dgiot/speedmonitoring/R$layout;->view_welcome_last:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 475
    sget v2, Lcom/dgiot/speedmonitoring/R$id;->tv_version:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Lcom/common/util/system/AppUtil;

    invoke-direct {v4}, Lcom/common/util/system/AppUtil;-><init>()V

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/common/util/system/AppUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    sget v2, Lcom/dgiot/speedmonitoring/R$id;->tv_goHome:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dgiot/baseframework/view/CustomClickEffectView;

    new-instance v3, Lcom/dgiot/speedmonitoring/LaunchActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/LaunchActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lcom/dgiot/baseframework/view/CustomClickEffectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static final getPicIdList$lambda$1(Lcom/dgiot/speedmonitoring/LaunchActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/vise/xsnow/cache/SpCache;->getInstance(Landroid/content/Context;)Lcom/vise/xsnow/cache/SpCache;

    move-result-object p1

    const-string v0, "firstStartUp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vise/xsnow/cache/SpCache;->put(Ljava/lang/String;Z)V

    .line 478
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goLogin()V

    return-void
.end method

.method private final goAdSplashActivity()V
    .locals 1

    return-void
.end method


.method private final goLoadInterstitial()V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->forceJumpToMain()V

    return-void
.end method


.method private static final goLoadInterstitial$lambda$4(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "goLoadInterstitial: \u63d2\u5c4f\u5e7f\u544a\u8d85\u65f6\uff0c\u5f3a\u5236\u8df3\u8f6c"

    .line 710
    invoke-static {v0}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->forceJumpToMain()V

    :cond_0
    return-void
.end method

.method private static final goLoadInterstitial$lambda$5(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 717
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dgiot/speedmonitoring/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 719
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->finish()V

    :cond_0
    return-void
.end method

.method private final goLogin()V
    .locals 3

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dgiot/speedmonitoring/ui/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromLaunch"

    const/4 v2, 0x1

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 333
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->finish()V

    return-void
.end method

.method private final goMain()V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMainPage()V

    return-void

.end method


.method private final goMainPage()V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->forceJumpToMain()V

    return-void

.end method


.method private static final goMainPage$lambda$3(Lcom/dgiot/speedmonitoring/LaunchActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "goMainPage: \u5168\u5c40\u515c\u5e95\u8d85\u65f6\uff0c\u5f3a\u5236\u8df3\u8f6c\u4e3b\u754c\u9762"

    .line 668
    invoke-static {v0}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->forceJumpToMain()V

    :cond_0
    return-void
.end method

.method private final initMonitor()V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0



    const-string v2, "https://cag.flowpf.com"

    .line 294
    const/4 v1, 0x0

    const-string v2, "a68bfe499e14a0"

    .line 295
    const/4 v1, 0x0

    const-string v2, "a490a5edb1c7f7b1c29fb468239aca75b"

    .line 296
    const/4 v1, 0x0

    const-string v2, ""

    .line 297
    const/4 v1, 0x0

    .line 298
    const/4 v1, 0x0

    .line 299
    const/4 v1, 0x0

    .line 300
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 302
    const/4 v1, 0x0

    .line 303
    const/4 v1, 0x0

    .line 293

    return-void
.end method

.method private final markProcessed()V
    .locals 1

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->isAdProcessed:Z

    return-void
.end method

.method private final onAdRequestTimeout()V
    .locals 0

    return-void
.end method


.method private final openAgreeDialog()V
    .locals 6

    .line 279
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vise/xsnow/cache/SpCache;->getInstance(Landroid/content/Context;)Lcom/vise/xsnow/cache/SpCache;

    move-result-object v0

    const-string v1, "https://daguiot.com/#/privacy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vise/xsnow/cache/SpCache;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/dgiot/speedmonitoring/LaunchActivity;->upOpenDialogTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openAgreeDialog:showAgreeDialog"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/dgiot/speedmonitoring/LaunchActivity;->upOpenDialogTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 282
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/dgiot/speedmonitoring/LaunchActivity;->upOpenDialogTime:J

    const-string v0, "openAgreeDialog:showAgreeDialog showAgreeDialog"

    .line 283
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->showAgreeDialog()V

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->initMonitor()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final requestAd()V
    .locals 0

    return-void
.end method


.method private final requestUserNotifyState()V
    .locals 3

    .line 196
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginAccountInfo()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 199
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 203
    :cond_0
    sget-object v1, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;

    new-instance v2, Lcom/dgiot/speedmonitoring/LaunchActivity$requestUserNotifyState$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/LaunchActivity$requestUserNotifyState$1;-><init>(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v1, v0, v2}, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->requestUserNotifyState(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final showAgreeDialog()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showAgreeDialog:showAgreeDialog:agreePopup = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_0

    .line 371
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 372
    new-instance v2, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-direct {v2, v0}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 373
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 374
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->atView(Landroid/view/View;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 375
    div-int/lit8 v3, v1, 0x4

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 376
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/PrivacyPolicyHintPopup;

    new-instance v3, Lcom/dgiot/speedmonitoring/LaunchActivity$showAgreeDialog$1;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/LaunchActivity$showAgreeDialog$1;-><init>(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/ui/pop/PrivacyPolicyHintPopup$PrivacyStatementDialogListener;

    invoke-direct {v2, v0, v3}, Lcom/dgiot/speedmonitoring/ui/pop/PrivacyPolicyHintPopup;-><init>(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/PrivacyPolicyHintPopup$PrivacyStatementDialogListener;)V

    check-cast v2, Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    .line 372
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_1
    return-void
.end method

.method private final showDisAgreeDialog()V
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->disAgreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_1

    .line 403
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 404
    new-instance v2, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-direct {v2, v0}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 405
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 406
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->atView(Landroid/view/View;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 407
    div-int/lit8 v3, v1, 0x5

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 408
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/RefusePrivacyPolicyHintPopup;

    new-instance v3, Lcom/dgiot/speedmonitoring/LaunchActivity$showDisAgreeDialog$1;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/LaunchActivity$showDisAgreeDialog$1;-><init>(Lcom/dgiot/speedmonitoring/LaunchActivity;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/ui/pop/RefusePrivacyPolicyHintPopup$RefusePrivacyStatementDialogListener;

    invoke-direct {v2, v0, v3}, Lcom/dgiot/speedmonitoring/ui/pop/RefusePrivacyPolicyHintPopup;-><init>(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/RefusePrivacyPolicyHintPopup$RefusePrivacyStatementDialogListener;)V

    check-cast v2, Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    .line 404
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->disAgreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/LaunchActivity;->disAgreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_2
    return-void
.end method

.method private final test()V
    .locals 3

    const-string v0, "CERT.RSA"

    .line 426
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->encodeFileToBase64Binary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "test:encodeFileToBase64Binary:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extractVersionFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<div class=\"version\">(.*?)</div>"

    .line 550
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 551
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 552
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 553
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Version not found"

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 5

    const-string v0, "initialize:Version:"

    .line 59
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/vise/xsnow/cache/SpCache;->getInstance(Landroid/content/Context;)Lcom/vise/xsnow/cache/SpCache;

    move-result-object v1

    const-string v2, "firstStartUp"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vise/xsnow/cache/SpCache;->get(Ljava/lang/String;Z)Z

    move-result v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialize:isFirstOpenApp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;->llStartApp:Landroid/widget/LinearLayout;

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForCoordinatorLayout(Landroid/app/Activity;I)V

    .line 64
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;->vp2Welcome:Landroidx/viewpager/widget/ViewPager;

    .line 65
    new-instance v1, Lcom/dgiot/speedmonitoring/adapter/PicListAdapter;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/adapter/PicListAdapter;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getPicIdList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/adapter/PicListAdapter;->setData(Ljava/util/List;)V

    .line 67
    check-cast v1, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_3

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityLaunchBinding;->llStartApp:Landroid/widget/LinearLayout;

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    :goto_1
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    :try_start_0
    new-instance v1, Lcom/common/util/system/AppUtil;

    invoke-direct {v1}, Lcom/common/util/system/AppUtil;-><init>()V

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/common/util/system/AppUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getUpAppVersion()Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 85
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 92
    :cond_5
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMain()V

    goto :goto_3

    .line 86
    :cond_6
    :goto_2
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->setLoginState(Z)V

    const-string v0, "initialize:saveUpAppVersion:go restart"

    .line 87
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUpAppVersion(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 96
    :catch_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMain()V

    goto :goto_3

    .line 101
    :cond_7
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->goMain()V

    .line 105
    :goto_3
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/LaunchActivity;->openAgreeDialog()V

    .line 107
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserIsCloseAd1(Z)V

    .line 108
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserIsCloseAd2(Z)V

    return-void
.end method

.method public final replaceNullFieldWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "jsonStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :catch_0
    return-object p1
.end method
