.class public final Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;
.super Ljava/lang/Object;
.source "DGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dgiot/speedmonitoring/base/DGApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0007J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;",
        "",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "foregroundActivityCount",
        "",
        "getForegroundActivityCount",
        "()I",
        "setForegroundActivityCount",
        "(I)V",
        "initAdSuccess",
        "",
        "getInitAdSuccess",
        "()Z",
        "setInitAdSuccess",
        "(Z)V",
        "isUmHint",
        "setUmHint",
        "initAdSdk",
        "",
        "initJiGAdSdk",
        "initTaKuSdk",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 44
    invoke-static {}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$getContext$cp()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getForegroundActivityCount()I
    .locals 1

    .line 47
    invoke-static {}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$getForegroundActivityCount$cp()I

    move-result v0

    return v0
.end method

.method public final getInitAdSuccess()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$getInitAdSuccess$cp()Z

    move-result v0

    return v0
.end method

.method public final initAdSdk()V
    .locals 0

    return-void
.end method

.method public final isUmHint()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$isUmHint$cp()Z

    move-result v0

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$setContext$cp(Landroid/content/Context;)V

    return-void
.end method

.method public final setForegroundActivityCount(I)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$setForegroundActivityCount$cp(I)V

    return-void
.end method

.method public final setInitAdSuccess(Z)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$setInitAdSuccess$cp(Z)V

    return-void
.end method

.method public final setUmHint(Z)V
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/base/DGApplication;->access$setUmHint$cp(Z)V

    return-void
.end method
