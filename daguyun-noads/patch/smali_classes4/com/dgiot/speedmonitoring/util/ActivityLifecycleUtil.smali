.class public Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;
.super Ljava/lang/Object;
.source "ActivityLifecycleUtil.java"


# static fields
.field public static canShow:Z = true

.field private static isColdStart:Z = true

.field public static isWarn:Z = false

.field private static pageStartEndFlag:Ljava/lang/String; = ""

.field public static refresh:J = 0x64L

.field public static upHotStart:J

.field private static upTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goShowSplashAd(Landroid/content/Context;)V
    .locals 6

    const-string v0, "isColdStart:\u51c6\u5907\u5f00\u542f\u70ed\u542f\u52a8\u5e7f\u544a intetvalTime:   isLogin = "

    const-string v1, "isColdStartFlag:intervalTime "

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isColdStartFlag:\u51c6\u5907\u5f00\u542f\u70ed\u542f\u52a8\u5e7f\u544a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isColdStart()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isWarn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isColdStart()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isWarn:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    const-string v5, "11"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->requestAdActiveInfo(Landroid/content/Context;)V

    .line 88
    sget-boolean v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->canShow:Z

    if-nez v2, :cond_1

    .line 89
    sput-boolean v4, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->canShow:Z

    return-void

    .line 93
    :cond_1
    sput-boolean v3, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isWarn:Z

    .line 94
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginUserInfo()Lcom/dgiot/speedmonitoring/bean/TokenBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/bean/TokenBean;->getIntervalTime()I

    move-result v2

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->isLogin()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-static {p0}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->requestGetAdState(Landroid/content/Context;)V

    .line 109
    :cond_2
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->setColdStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static isColdStart()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isColdStart:Z

    return v0
.end method

.method public static requestAdActiveInfo(Landroid/content/Context;)V
    .locals 5

    const-string p0, "goShowSplashAd:restart >>>>>>>>>>>>>>>>>>>> /"

    .line 65
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-wide v3, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->upHotStart:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 66
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->upHotStart:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 67
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->upHotStart:J

    .line 68
    sget-object p0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;


    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$1;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestDayActiveInfo(Lcom/dgiot/speedmonitoring/bean/AdActiveInfo;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static requestGetAdState(Landroid/content/Context;)V
    .locals 2

    .line 115
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$2;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestGetAdState(Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method public static setColdStart(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->isColdStart:Z

    return-void
.end method

.method public static setPageStartEndFlag(Ljava/lang/String;)V
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPageStartEndFlag:set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "2"

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->upTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_0
    sput-object p0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    .line 164
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setPageStartEndFlag:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->pageStartEndFlag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->upTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 165
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/dgiot/speedmonitoring/util/ActivityLifecycleUtil;->upTime:J

    return-void
.end method
