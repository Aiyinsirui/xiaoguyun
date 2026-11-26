.class public final Lcom/dgiot/speedmonitoring/base/DGApplication;
.super Landroid/app/Application;
.source "DGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0006\u0010\n\u001a\u00020\u0006J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0006\u0010\u0014\u001a\u00020\u0006J\u001a\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/base/DGApplication;",
        "Landroid/app/Application;",
        "()V",
        "isActivityChangingConfigurations",
        "",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "checkCode",
        "dealException",
        "initAppData",
        "initAppStart",
        "initNet",
        "initPush",
        "initTimber",
        "initUmengSDK",
        "initUpdate",
        "initYdSDK",
        "onCreate",
        "setWebViewParam",
        "showResult",
        "tag",
        "",
        "msg",
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
.field public static final Companion:Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;

.field private static context:Landroid/content/Context;

.field private static foregroundActivityCount:I

.field private static initAdSuccess:Z

.field private static isUmHint:Z


# instance fields
.field private isActivityChangingConfigurations:Z


# direct methods
.method public static synthetic $r8$lambda$28OXoXPhicKkYmGjw4E0c10xQlY(Lcom/dgiot/speedmonitoring/base/DGApplication;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initUmengSDK$lambda$1(Lcom/dgiot/speedmonitoring/base/DGApplication;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYrAsnmqx5DkVQbGMPbdTYXi38Q(Lcom/dgiot/speedmonitoring/base/DGApplication;Lcom/xuexiang/xupdate/entity/UpdateError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initUpdate$lambda$2(Lcom/dgiot/speedmonitoring/base/DGApplication;Lcom/xuexiang/xupdate/entity/UpdateError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$blwruWgF_HD0Tg6JfFd8x2W9Phw(Lcom/dgiot/speedmonitoring/base/DGApplication;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/dgiot/speedmonitoring/base/DGApplication;->dealException$lambda$0(Lcom/dgiot/speedmonitoring/base/DGApplication;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->Companion:Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext$cp()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getForegroundActivityCount$cp()I
    .locals 1

    .line 41
    sget v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->foregroundActivityCount:I

    return v0
.end method

.method public static final synthetic access$getInitAdSuccess$cp()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->initAdSuccess:Z

    return v0
.end method

.method public static final synthetic access$isUmHint$cp()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->isUmHint:Z

    return v0
.end method

.method public static final synthetic access$setContext$cp(Landroid/content/Context;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/dgiot/speedmonitoring/base/DGApplication;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setForegroundActivityCount$cp(I)V
    .locals 0

    .line 41
    sput p0, Lcom/dgiot/speedmonitoring/base/DGApplication;->foregroundActivityCount:I

    return-void
.end method

.method public static final synthetic access$setInitAdSuccess$cp(Z)V
    .locals 0

    .line 41
    sput-boolean p0, Lcom/dgiot/speedmonitoring/base/DGApplication;->initAdSuccess:Z

    return-void
.end method

.method public static final synthetic access$setUmHint$cp(Z)V
    .locals 0

    .line 41
    sput-boolean p0, Lcom/dgiot/speedmonitoring/base/DGApplication;->isUmHint:Z

    return-void
.end method

.method private final checkCode()V
    .locals 0

    return-void
.end method

.method private static final dealException$lambda$0(Lcom/dgiot/speedmonitoring/base/DGApplication;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/dgiot/speedmonitoring/LaunchActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/base/DGApplication;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 148
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private final initAppData()V
    .locals 0

    .line 421
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->resetDeviceHaveInitState()V

    return-void
.end method

.method private final initAppStart()V
    .locals 1

    .line 371
    new-instance v0, Lcom/dgiot/speedmonitoring/base/DGApplication$initAppStart$1;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/base/DGApplication$initAppStart$1;-><init>()V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private final initNet()V
    .locals 3

    .line 242
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vise/xsnow/http/ViseHttp;->init(Landroid/content/Context;)V

    .line 243
    invoke-static {}, Lcom/vise/xsnow/http/ViseHttp;->CONFIG()Lcom/vise/xsnow/http/config/HttpGlobalConfig;

    move-result-object v0

    const/16 v1, 0xa

    .line 244
    invoke-virtual {v0, v1}, Lcom/vise/xsnow/http/config/HttpGlobalConfig;->readTimeout(I)Lcom/vise/xsnow/http/config/HttpGlobalConfig;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/vise/xsnow/http/config/HttpGlobalConfig;->globalHeaders()Lcom/vise/xsnow/http/config/HttpGlobalConfig;

    move-result-object v0

    const-string v1, "https://application.daguiot.com/"

    .line 246
    invoke-virtual {v0, v1}, Lcom/vise/xsnow/http/config/HttpGlobalConfig;->baseUrl(Ljava/lang/String;)Lcom/vise/xsnow/http/config/HttpGlobalConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Lcom/vise/xsnow/http/config/HttpGlobalConfig;->setCookie(Z)Lcom/vise/xsnow/http/config/HttpGlobalConfig;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor;-><init>()V

    sget-object v2, Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor$Level;->BODY:Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor;->setLevel(Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor$Level;)Lcom/dgiot/speedmonitoring/http/RquestLogInterceptor;

    move-result-object v1

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lcom/vise/xsnow/http/config/HttpGlobalConfig;->networkInterceptor(Lokhttp3/Interceptor;)Lcom/vise/xsnow/http/config/HttpGlobalConfig;

    return-void
.end method

.method private final initPush()V
    .locals 0

    return-void
.end method

.method private final initTimber()V
    .locals 5

    const-string v0, "timber_log"

    .line 425
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "TimberInit"

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u65e0\u6cd5\u83b7\u53d6\u65e5\u5fd7\u76ee\u5f55\uff01"

    .line 428
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2705 \u65e5\u5fd7\u76ee\u5f55: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Lcom/dgiot/speedmonitoring/util/log/FileLoggingTree;

    invoke-direct {v2, v0}, Lcom/dgiot/speedmonitoring/util/log/FileLoggingTree;-><init>(Ljava/io/File;)V

    check-cast v2, Ltimber/log/Timber$Tree;

    invoke-virtual {v1, v2}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$Tree;)V

    return-void
.end method

.method private final initUmengSDK()V
    .locals 3

    .line 260
    sget-boolean v0, Lcom/common/util/ALog;->isDebug:Z

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled(Z)V

    .line 262
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/helper/PushHelper;->preInit(Landroid/content/Context;)V

    .line 263
    invoke-static {v0}, Lcom/vise/xsnow/cache/SpCache;->getInstance(Landroid/content/Context;)Lcom/vise/xsnow/cache/SpCache;

    move-result-object v0

    const-string v1, "https://daguiot.com/#/privacy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vise/xsnow/cache/SpCache;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 264
    sput-boolean v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->isUmHint:Z

    const-string v0, "init um start"

    .line 265
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dgiot/speedmonitoring/base/DGApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/base/DGApplication$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/base/DGApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private static final initUmengSDK$lambda$1(Lcom/dgiot/speedmonitoring/base/DGApplication;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/helper/PushHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method private final initUpdate()V
    .locals 0

    return-void
.end method


.method private static final initUpdate$lambda$2(Lcom/dgiot/speedmonitoring/base/DGApplication;Lcom/xuexiang/xupdate/entity/UpdateError;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/xuexiang/xupdate/entity/UpdateError;->printStackTrace()V

    .line 353
    invoke-virtual {p1}, Lcom/xuexiang/xupdate/entity/UpdateError;->getCode()I

    move-result v0

    const/16 v1, 0x7d4

    if-eq v0, v1, :cond_0

    .line 354
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/xuexiang/xupdate/entity/UpdateError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final initYdSDK()V
    .locals 6

    .line 325
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vise/xsnow/cache/SpCache;->getInstance(Landroid/content/Context;)Lcom/vise/xsnow/cache/SpCache;

    move-result-object v1

    const-string v2, "https://daguiot.com/#/privacy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vise/xsnow/cache/SpCache;->get(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initYdSDK start1 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Lcom/vise/xsnow/cache/SpCache;->getInstance(Landroid/content/Context;)Lcom/vise/xsnow/cache/SpCache;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/vise/xsnow/cache/SpCache;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initYdSDK init yd start"

    .line 327
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->Companion:Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;->initAdSdk()V

    :cond_0
    return-void
.end method

.method private final showResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OppoPushLog:    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 366
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public final dealException()V
    .locals 1

    .line 144
    new-instance v0, Lcom/dgiot/speedmonitoring/base/DGApplication$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/base/DGApplication$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/base/DGApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 164
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 165
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->dealException()V

    .line 166
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/dgiot/speedmonitoring/base/DGApplication;->context:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->setWebViewParam()V

    .line 170
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->checkCode()V

    const/4 v1, 0x0

    .line 180
    sput-boolean v1, Lcom/common/util/ALog;->isDebug:Z

    .line 181
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initNet()V

    const-string v2, "ro.product.cpu.abi"

    .line 183
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cpuAbi="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, "a7ecb3513a"

    .line 191
    sget-boolean v3, Lcom/common/util/ALog;->isDebug:Z

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 195
    invoke-static {v0}, Lcom/common/util/device/DeviceIdUtil;->getDeviceVirtualImel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginAccountInfo()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "userName"

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginUserInfo()Lcom/dgiot/speedmonitoring/bean/TokenBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/TokenBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :catch_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initAppStart()V

    .line 206
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initUmengSDK()V

    .line 208
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initPush()V

    .line 210
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initUpdate()V

    .line 212
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initYdSDK()V

    .line 214
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initAppData()V

    .line 216
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->initTimber()V

    return-void
.end method

.method public final setWebViewParam()V
    .locals 2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 157
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
