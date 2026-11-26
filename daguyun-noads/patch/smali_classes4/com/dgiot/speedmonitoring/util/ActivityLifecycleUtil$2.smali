.class Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$2;
.super Lcom/dgiot/speedmonitoring/http/ResponseCallBack;
.source "ActivityLifecycleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->requestGetAdState(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/http/ResponseCallBack<",
        "Lcom/dgiot/speedmonitoring/bean/ResponseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(ZLcom/dgiot/speedmonitoring/bean/ResponseInfo;Ljava/lang/String;)V
    .locals 1

    return-void
.end method


.method public bridge synthetic onSuccess(ZLjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 115
    check-cast p2, Lcom/dgiot/speedmonitoring/bean/ResponseInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$2;->onSuccess(ZLcom/dgiot/speedmonitoring/bean/ResponseInfo;Ljava/lang/String;)V

    return-void
.end method
