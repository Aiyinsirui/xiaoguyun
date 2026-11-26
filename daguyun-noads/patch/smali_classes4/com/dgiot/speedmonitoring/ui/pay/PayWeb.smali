.class public final Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;
.super Lcom/dgiot/speedmonitoring/base/BaseMainActivity;
.source "PayWeb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;,
        Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/BaseMainActivity<",
        "Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\"#B\u0005\u00a2\u0006\u0002\u0010\u0003J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0017J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010\u001f\u001a\u00020\u001dH\u0014J\u0008\u0010 \u001a\u00020\u001dH\u0014J\u0008\u0010!\u001a\u00020\u001dH\u0002R \u0010\u0004\u001a\u0008\u0018\u00010\u0005R\u00020\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;",
        "Lcom/dgiot/speedmonitoring/base/BaseMainActivity;",
        "Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;",
        "()V",
        "androidBridge",
        "Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;",
        "getAndroidBridge",
        "()Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;",
        "setAndroidBridge",
        "(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;)V",
        "isGoPay",
        "",
        "()Z",
        "setGoPay",
        "(Z)V",
        "mAgentWeb",
        "Lcom/just/library/AgentWeb;",
        "getMAgentWeb",
        "()Lcom/just/library/AgentWeb;",
        "setMAgentWeb",
        "(Lcom/just/library/AgentWeb;)V",
        "productSn",
        "",
        "getProductSn",
        "()Ljava/lang/String;",
        "setProductSn",
        "(Ljava/lang/String;)V",
        "getViewBinding",
        "initialize",
        "",
        "onDestroy",
        "onPause",
        "onResume",
        "setSetting",
        "AndroidBridge",
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
.field public static final Companion:Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$Companion;

.field private static bindFinish:Z

.field private static scanValue:Ljava/lang/String;


# instance fields
.field private androidBridge:Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;

.field private isGoPay:Z

.field private mAgentWeb:Lcom/just/library/AgentWeb;

.field private productSn:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7BBDMk8fh1BUmr4cLbOpBeY4o6g(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->initialize$lambda$1(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nW_SiZB-l3QGqMHmdGIf1kyYuuE(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->initialize$lambda$2(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yADX4anzdHkr27kdrlIkXVfs0Kc(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->initialize$lambda$0(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->Companion:Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$Companion;

    const-string v0, ""

    .line 376
    sput-object v0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->scanValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/BaseMainActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBase(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;)Lcom/dgiot/speedmonitoring/base/Base;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBindFinish$cp()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->bindFinish:Z

    return v0
.end method

.method public static final synthetic access$getBinding(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;)Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;

    return-object p0
.end method

.method public static final synthetic access$getScanValue$cp()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->scanValue:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setBindFinish$cp(Z)V
    .locals 0

    .line 46
    sput-boolean p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->bindFinish:Z

    return-void
.end method

.method public static final synthetic access$setScanValue$cp(Ljava/lang/String;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->scanValue:Ljava/lang/String;

    return-void
.end method

.method private static final initialize$lambda$0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static final initialize$lambda$1(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;->constNetFail:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 166
    :goto_1
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/just/library/AgentWeb;->getLoader()Lcom/just/library/ILoader;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/just/library/ILoader;->reload()V

    :cond_2
    return-void
.end method

.method private static final initialize$lambda$2(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-boolean p1, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->bindFinish:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 171
    sput-boolean p1, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->bindFinish:Z

    .line 172
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->startActivity(Landroid/content/Intent;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->finish()V

    return-void
.end method

.method private final setSetting()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/just/library/AgentWeb;->getWebCreator()Lcom/just/library/WebCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/library/WebCreator;->get()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x2

    .line 214
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

    .line 223
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAndroidBridge()Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->androidBridge:Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;

    return-object v0
.end method

.method public final getMAgentWeb()Lcom/just/library/AgentWeb;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    return-object v0
.end method

.method public final getProductSn()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->productSn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/PayWebBinding;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->finish()V

    return-void
.end method


.method public final isGoPay()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->isGoPay:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/just/library/AgentWeb;->getWebLifeCycle()Lcom/just/library/WebLifeCycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/library/WebLifeCycle;->onDestroy()V

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseMainActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/just/library/AgentWeb;->getWebLifeCycle()Lcom/just/library/WebLifeCycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/library/WebLifeCycle;->onPause()V

    .line 235
    :cond_0
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseMainActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 240
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseMainActivity;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/just/library/AgentWeb;->getWebLifeCycle()Lcom/just/library/WebLifeCycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/just/library/WebLifeCycle;->onResume()V

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->isGoPay:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadPage: start reOpen refresh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->isGoPay:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/just/library/AgentWeb;->getJsEntraceAccess()Lcom/just/library/JsEntraceAccess;

    move-result-object v0

    const-string/jumbo v1, "{ code:\'0\', msg:\'\'}"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "receivePayResult"

    invoke-interface {v0, v2, v1}, Lcom/just/library/JsEntraceAccess;->quickCallJs(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setAndroidBridge(Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->androidBridge:Lcom/dgiot/speedmonitoring/ui/pay/PayWeb$AndroidBridge;

    return-void
.end method

.method public final setGoPay(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->isGoPay:Z

    return-void
.end method

.method public final setMAgentWeb(Lcom/just/library/AgentWeb;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->mAgentWeb:Lcom/just/library/AgentWeb;

    return-void
.end method

.method public final setProductSn(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/pay/PayWeb;->productSn:Ljava/lang/String;

    return-void
.end method
