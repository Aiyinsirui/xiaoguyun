.class public Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;
.super Lcom/dgiot/speedmonitoring/base/BaseFragment;
.source "VideoRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/BaseFragment<",
        "Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALARMTIME:Ljava/lang/String; = "alarmTime"

.field private static final ISJUMPFROMPLAYBACK:Ljava/lang/String; = "isjumpfromplayback"

.field private static final SN:Ljava/lang/String; = "productSn"

.field public static isCardPlaying:Z = false


# instance fields
.field private alarmTime:Ljava/lang/String;

.field alarmTimeYear:Ljava/lang/String;

.field private builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

.field private calendarDialog:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;

.field canClickDialog:Z

.field private dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

.field discInfo:Ljava/lang/String;

.field private dragSecond:I

.field finalSelectDate:Ljava/lang/String;

.field firstLoad:Z

.field private fromAlarm:Z

.field private hasCloseAdHintRecharge:Z

.field private isDealCardInfo:Z

.field isFirstLoad:Z

.field private isFirstLoadPlay:Z

.field private isInitView:Z

.field private isJumpFromPlayback:Z

.field lastFileSecondLength:I

.field private mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

.field msgDateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field nowSelectFileList:[Ljava/lang/String;

.field private nowSelectPlaySecond:I

.field nowShowingMonth:Ljava/lang/String;

.field private playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

.field private productSn:Ljava/lang/String;

.field private requestMonthVideoListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field secondToNextFilePosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tfErrorType:I

.field private uiHandler:Landroid/os/Handler;

.field upAdHintTime:J

.field private upLoadTime:J

.field private upSlideTime:J

.field private upUpdateTime:J

.field private upUpdaterSize:J

.field private videoListData:Ljava/lang/String;

.field private videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;


# direct methods
.method public static synthetic $r8$lambda$-Vus9uEaxy7vtqiiaB3rduehnh8(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initRecordControl$3(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-f7gfLvcT3wgEnpHuaeterOtgvE(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initRecordControl$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4L0M6OaYgTbYfn29C3YKXImeMfA(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$dealRecordCallBack$6(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5wTfDKp-SKvgINOemqXjLEd3hXE(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$dealRecordCallBack$7(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$7R63VLyLK0deEa9LUXsnwioIHbg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$dealMonthVideoListParam$12(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JL-5eVzg9wKF0FoABDcCn0GNoOQ(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$dealFileList$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$JyVl3hWaB3KuFlW_FRkaUzgcysc(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$dealFileList$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$K-RkP8LYPukYxjf02JB6gY49J98(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJomXKUBhoz0pekKGTy2uTSl-uo(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initRecordControl$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$P1atZwr0lwixtsRfO1NUOBPuFlg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RIuxhmQZYualDi6Tpsu_a6awgnM(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RuxLfM6Bqt9ldlId0z620jeN_Gc(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YATrBfv7uXV3uy9e4iuVRbFbmvs(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdHintRechargeClick$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YRKrUZuFBgfFdIjkAXXqz6tml_g(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initRecordControl$2(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_YMYV8S6UzVBIQamCYqGeC9tqRs(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cG6ewuSvohjV5466W33ye3D3OIg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$dealVideoListParam$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$q3oljIvOXHv4_9DhqqKqORp0Uf0(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initRecordControl$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgRzNSZNl6THvxrUEU_xV1aGrng(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$showCardHint$20(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8Fb8RLBeToEpoPOwZIX52K38nU(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnJ0WIOngbTPfL1THqcHChaL1NE(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdMenuClick$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJKTeP7HisE6Hyoia4fmySz_fQw(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Lcom/haibin/calendarview/CalendarView;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$showDateDialog$5(Lcom/haibin/calendarview/CalendarView;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$vDUfzDI-0RrtXtG-OO2KdFf8ye0(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$initAdHintRechargeClick$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$znKcp66N3bt6Cmriq7-qUItf9Z8(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lambda$getTFInfoParam$8(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetplayType(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Lcom/dgiot/speedmonitoring/ui/live/PlayType;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedCalendar(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Lcom/haibin/calendarview/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplayType(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestRecordListAndAddress(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 76
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isJumpFromPlayback:Z

    const/4 v2, 0x1

    .line 70
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isFirstLoadPlay:Z

    .line 74
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoListData:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->fromAlarm:Z

    .line 125
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isInitView:Z

    .line 168
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    const-wide/16 v3, 0x0

    .line 170
    iput-wide v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upSlideTime:J

    .line 284
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowShowingMonth:Ljava/lang/String;

    .line 285
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->canClickDialog:Z

    const-wide/16 v5, -0x1

    .line 346
    iput-wide v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upUpdaterSize:J

    .line 347
    iput-wide v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upUpdateTime:J

    .line 392
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    .line 402
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->msgDateMap:Ljava/util/Map;

    .line 464
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    .line 510
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTimeYear:Ljava/lang/String;

    .line 624
    iput-wide v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upLoadTime:J

    .line 626
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    .line 627
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isFirstLoad:Z

    const/4 v5, 0x0

    .line 629
    iput-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    .line 904
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lastFileSecondLength:I

    .line 905
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    .line 1038
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    .line 1039
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->discInfo:Ljava/lang/String;

    .line 1271
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->firstLoad:Z

    .line 1272
    iput-wide v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upAdHintTime:J

    .line 1300
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->hasCloseAdHintRecharge:Z

    .line 1330
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isDealCardInfo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method private changeRecordStep(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 470
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoOnRecfastParam(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoOnRecfastParam1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getPlaySecond(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    .line 474
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p1

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$2;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$2;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    return-void
.end method

.method private dealAdClickEvent(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1163
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 1164
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeAll:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1165
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateTimerDataByMsgType()V

    goto :goto_1

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 1175
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1178
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 1179
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1182
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 1183
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1185
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateTimerDataByMsgType()V

    goto :goto_1

    .line 1188
    :cond_4
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showAdHintPop()V

    :goto_1
    return-void
.end method

.method private dealChangeRecordPosition(Ljava/lang/String;)V
    .locals 5

    const-string v0, "playProgress_playProgress_playBack6:"

    const-string v1, "getVideoOnRecfastParam1 playSecond = "

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getVideoOnRecfastParam1 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, "\"state\":28"

    .line 1013
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1017
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    .line 1018
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_1

    const-string v3, "code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1022
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    int-to-double v0, v0

    invoke-interface {p1, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->playBack(D)V

    .line 1023
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    int-to-double v0, v0

    invoke-interface {p1, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->updatePlayBack(D)V

    .line 1024
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->dismissLoadDialog()V

    goto :goto_0

    .line 1027
    :cond_1
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->dismissLoadDialog()V

    .line 1028
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->requestFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoOnRecfastParam ex0 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1036
    :goto_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->dismissLoadDialog()V

    return-void
.end method

.method private dealFileList([Ljava/lang/String;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    const-string v2, ":"

    const-string v3, "/"

    const-string v0, "VideoRecordList log size = "

    .line 701
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 702
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 703
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    move v11, v9

    const/4 v10, -0x1

    .line 707
    :goto_0
    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v12, "_"

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v9, v0, :cond_1

    .line 708
    :try_start_1
    aget-object v0, v1, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0xd

    if-le v0, v6, :cond_0

    aget-object v0, v1, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    aget-object v0, v1, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordFile:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "[=====.] "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 712
    iget-object v0, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_0

    .line 714
    :try_start_2
    aget-object v0, v1, v9

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 715
    aget-object v6, v0, v8

    invoke-virtual {v6, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0xe10

    aget-object v12, v0, v8

    const/4 v13, 0x4

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v6, v12

    aget-object v12, v0, v8

    const/4 v8, 0x6

    .line 716
    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v6, v12

    .line 718
    iget-object v12, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v15

    const-string v12, ""

    invoke-virtual {v8, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    .line 719
    invoke-virtual {v8, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v12, v12, 0xe10

    invoke-virtual {v8, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    add-int/2addr v12, v14

    const/4 v14, 0x6

    .line 720
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    .line 721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "alarmTimePositionSecondLog->"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v13, v1, v9

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "     "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-lt v12, v6, :cond_0

    const/4 v8, 0x1

    .line 722
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v6

    if-gt v12, v0, :cond_0

    sub-int/2addr v12, v6

    const/4 v0, 0x0

    .line 725
    :try_start_3
    iput-object v0, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v10, v9

    move v11, v12

    goto :goto_2

    :catch_0
    move-exception v0

    move v10, v9

    move v11, v12

    goto :goto_1

    :catch_1
    move-exception v0

    .line 729
    :goto_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alarmTimePositionSecondLog->e "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 734
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoRecordList log size length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "data"

    .line 735
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoListData:Ljava/lang/String;

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoDateList jsonArray= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    iget-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoListData:Ljava/lang/String;

    iget-object v2, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setVideoDateList(Ljava/lang/String;Z)V

    .line 741
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    .line 742
    invoke-direct {v7, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateDateView(Z)V

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isTodayDate()Z

    move-result v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_2

    .line 746
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v0, v14

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 749
    :goto_3
    iget-object v4, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda13;

    invoke-direct {v6, v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda13;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v4, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 757
    :cond_3
    iget-object v0, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda14;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 764
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoOnDemandAddress-index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start get VideoRecordList return data after getVideoOnDemandAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v10, v1, :cond_7

    const/4 v1, 0x0

    .line 767
    iput-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarmTimePositionSecondLog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 770
    :try_start_5
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ltz v11, :cond_5

    if-le v11, v0, :cond_4

    goto :goto_5

    :cond_4
    move v8, v11

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v8, 0x0

    :goto_6
    add-int/lit8 v0, v8, -0x3

    if-lez v0, :cond_6

    move v11, v0

    goto :goto_7

    :cond_6
    move v11, v8

    .line 780
    :catch_2
    :goto_7
    :try_start_6
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {v7, v0, v11, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->changgeVideoOnRecfast(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_a

    .line 783
    :cond_7
    iget-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "record_video_file_hint_no_record4"

    .line 784
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no_record:I

    invoke-virtual {v7, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x0

    .line 787
    iput-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageSource:playType->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isCardPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getPlayingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 790
    sget-boolean v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isCardPlaying:Z

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getPlayingState()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "pageSource:playType-> run:changeRecordStep"

    .line 791
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v7, v0, v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->changeRecordStep(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a

    .line 795
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isJumpFromPlaybackFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isJumpFromPlayback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 796
    iget-boolean v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isFirstLoadPlay:Z

    if-eqz v1, :cond_b

    .line 797
    iget-boolean v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isJumpFromPlayback:Z

    if-eqz v1, :cond_a

    .line 798
    iget-object v2, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getVideoOnDemandAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_a
    :goto_8
    const/4 v1, 0x0

    goto :goto_9

    .line 802
    :cond_b
    iget-object v2, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getVideoOnDemandAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_8

    .line 804
    :goto_9
    iput-boolean v1, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isFirstLoadPlay:Z

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    .line 809
    invoke-direct {v7, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateDateView(Z)V

    .line 810
    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->failUpdate()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dealFileList_ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :goto_a
    return-void
.end method

.method private dealMonthVideoListParam(Lorg/json/JSONObject;)V
    .locals 2

    .line 819
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda18;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dealRecordStreamAddress(Ljava/lang/String;)V
    .locals 4

    const-string v0, "playProgress_playProgress_playBack5:"

    const-string v1, "openRecordVideoLog->"

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getVideoOnDemandParam24 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, ":24"

    .line 990
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "start get VideoRecordList return data after getVideoOnDemandAddress return"

    .line 991
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 993
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 994
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "addr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    if-eqz v1, :cond_0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->playBack(D)V

    .line 1000
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->openRecordVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1005
    invoke-interface {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->openRecordVideo(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private dealTFCardInfo(Ljava/lang/String;)V
    .locals 5

    const-string v0, "tvTfCardStateInfo:"

    const-string v1, "SDCard_showAdMenu 1 "

    .line 1333
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1334
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/repository/IotParamName;->isTfInfo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 1335
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isDealCardInfo:Z

    const-string v3, "data"

    .line 1336
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "use"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1339
    sget v2, Lcom/dgiot/speedmonitoring/R$string;->device_card_info_error_2:I

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->discInfo:Ljava/lang/String;

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isResumed()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showAdMenu()V

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    .line 1346
    sget v1, Lcom/dgiot/speedmonitoring/R$string;->device_card_info_error_1:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->discInfo:Ljava/lang/String;

    const-string v1, "SDCard_showAdMenu 2 "

    .line 1347
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1349
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showAdMenu()V

    .line 1352
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvTfCardStateInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->discInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    if-eq v0, v3, :cond_2

    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1354
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    if-ltz v0, :cond_4

    .line 1355
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->hideAdMenu()V

    .line 1356
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->llTfCardState:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "requestRecordListAndAddressFlag:2"

    .line 1357
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1359
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    invoke-direct {p0, v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1363
    :cond_3
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1368
    :cond_4
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->llTfCardState:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1370
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->fromAlarm:Z

    if-eqz p1, :cond_5

    .line 1371
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->fromAlarm:Z

    const-string p1, "setVideoOperateState=3"

    .line 1372
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private dealVideoListParam(Ljava/lang/String;)V
    .locals 6

    const-string v0, "MyWebSocketClient VideoRecordList value:"

    const-string v1, "finalSelectDate:"

    const-string v2, "MyWebSocketClient VideoRecordList ex:"

    .line 633
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 634
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x17

    if-ne p1, v4, :cond_4

    const/4 p1, 0x0

    :try_start_1
    const-string v4, "start get VideoRecordList return data"

    .line 636
    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v4, "data"

    .line 637
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "recfile"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x2

    .line 639
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 640
    invoke-static {v1}, Lcom/common/util/file/ZlibUtils;->decompress([B)[B

    move-result-object v1

    .line 642
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 643
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 644
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 646
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    .line 647
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealFileList([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v3, :cond_1

    const-string v0, "record_video_file_hint_no3"

    .line 651
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toastError(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    :cond_1
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isFirstLoad:Z

    if-eqz v0, :cond_2

    .line 655
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isFirstLoad:Z

    .line 656
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setNoDataViewShow()V

    .line 659
    :cond_2
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->failUpdate()V

    .line 660
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateDateView(Z)V

    .line 661
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "///"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 678
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 679
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->failUpdate()V

    const-string v0, "connectFaillog->2"

    .line 680
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_3

    .line 682
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_error:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toastError(Landroid/content/Context;Ljava/lang/String;)V

    .line 684
    :cond_3
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateDateView(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 689
    :catch_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda12;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private failUpdate()V
    .locals 0

    return-void
.end method

.method private getCardDescStr(I)Ljava/lang/String;
    .locals 1

    rsub-int/lit8 p1, p1, 0x64

    if-ltz p1, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "***"

    return-object p1
.end method

.method private getPlaySecond(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 932
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const/4 v1, 0x6

    .line 933
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private getSchemeCalendar(IIIILjava/lang/String;)Lcom/haibin/calendarview/Calendar;
    .locals 0

    .line 413
    new-instance p5, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p5}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 414
    invoke-virtual {p5, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 415
    invoke-virtual {p5, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 416
    invoke-virtual {p5, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 417
    invoke-virtual {p5, p4}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const-string p1, " "

    .line 418
    invoke-virtual {p5, p1}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    return-object p5
.end method

.method private getSelectDate()Ljava/lang/String;
    .locals 5

    .line 537
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSelectDateLog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 539
    sget v1, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "-"

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 540
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_1

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTimeYear:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTimeYear:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v3
.end method

.method private getSelectType()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1054
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1055
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 1056
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 1057
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "01"

    .line 1058
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "05"

    .line 1059
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "7"

    .line 1062
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "07"

    .line 1063
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "8"

    .line 1066
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "08"

    .line 1067
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private getSelectType2()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1073
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1074
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    .line 1075
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 1076
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "01"

    .line 1077
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "05"

    .line 1078
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "7"

    .line 1081
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "07"

    .line 1082
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "8"

    .line 1085
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "08"

    .line 1086
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private getTimeInt(Ljava/lang/String;)I
    .locals 3

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 875
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 878
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private initAdHintRechargeClick()V
    .locals 2

    .line 1310
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvDeleteAdRecharge:Landroid/widget/TextView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda11;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvAdRecharge:Landroid/widget/TextView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda15;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAdMenuClick()V
    .locals 2

    .line 1197
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeAll:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda19;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda20;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeopleFlag:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda21;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda22;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCarFlag:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda2;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePetFlag:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda3;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1227
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeopleFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1228
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1229
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCarFlag:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1231
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1232
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePetFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initSelectDateByAlarmMessageTime(Ljava/lang/String;)V
    .locals 5

    const-string v0, "           "

    const-string v1, "initSelectDateByAlarmMessageTime:"

    :try_start_0
    const-string v2, " "

    .line 513
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string p1, "-"

    const-string v0, ""

    .line 517
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    const/4 p1, 0x4

    .line 519
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTimeYear:Ljava/lang/String;

    .line 521
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$3;

    invoke-direct {v0, p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$3;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSelectDateByAlarmMessageTimeLog:e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private isTodayDate()Z
    .locals 2

    .line 883
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$dealFileList$10()V
    .locals 2

    .line 750
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz v0, :cond_0

    const-string v0, "getVideoOnDemandAddress-updateScrollPositionToTodayLast"

    .line 751
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPositionToTodayLast(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealFileList$11()V
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz v0, :cond_0

    const-string v0, "getVideoOnDemandAddress-updateScrollPositionToTodayFirst"

    .line 759
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPositionToTodayFirst()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealMonthVideoListParam$12(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "/"

    const-string v1, "getCalendarMsgDatesL:length  "

    const-string v2, "getCalendarMsgDatesL:"

    :try_start_0
    const-string v3, "data"

    .line 821
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "recfile"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->saveRequestMonthRecord()V

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\n"

    .line 825
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 827
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    const/4 v6, 0x4

    .line 828
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x6

    .line 829
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x8

    .line 830
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v5

    .line 831
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0, v7, v6, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getCalendarMsgDates(III)Ljava/util/Map;

    .line 834
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->calendarDialog:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;

    if-eqz v6, :cond_0

    .line 835
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->msgDateMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setMsgDates(Ljava/util/Map;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    .line 836
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->calendarDialog:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;

    invoke-virtual {v5}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;->updateSchemeDate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCalendarMsgDatesL:error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$dealRecordCallBack$6(Ljava/lang/Integer;)V
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playProgress_playProgress_playBack4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->playBack(D)V

    return-void
.end method

.method private synthetic lambda$dealRecordCallBack$7(J)V
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playbackProgressLLlog:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz p2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {p2, p1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPosition(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealVideoListParam$9()V
    .locals 2

    .line 690
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->failUpdate()V

    const-string v0, "connectFaillog->3"

    .line 691
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_error:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toastError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getTFInfoParam$8(Z)V
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestMonthRecordListAndAddress_load:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 562
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/common/util/assist/DateUtil;->getYm(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthRecordListAndAddress(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initAdHintRechargeClick$21(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 1311
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->hasCloseAdHintRecharge:Z

    .line 1312
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->rlAdHintRecharge:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8


    return-void
.end method

.method private synthetic lambda$initAdHintRechargeClick$22(Landroid/view/View;)V
    .locals 3

    .line 1314
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$13(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1198
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$14(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1202
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$15(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1206
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$16(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 1210
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$17(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 1214
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$18(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 1218
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$19(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 1222
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initRecordControl$0(I)V
    .locals 2

    .line 186
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upSlideTime:J

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeScrollView:setOnSlideFileListener->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initRecordControl$1(Ljava/lang/String;)V
    .locals 7

    .line 192
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upSlideTime:J

    .line 193
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->onTouchRecordDelay()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOnSelectFileListener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "#"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x2

    .line 198
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    const/4 v5, 0x6

    .line 199
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setOnSelectFileListener value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setOnSelectFileListener time2 = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 204
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    sub-int/2addr p1, v2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setOnSelectFileListener headway = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const-string v2, ""

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    const-string v3, "0%d"

    const-string v4, "%d"

    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v6

    if-ge v6, v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v5}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showLoadProgressView()V

    .line 215
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showLoadDialog()V

    .line 216
    invoke-virtual {p0, v1, p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->changgeVideoOnRecfast(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_2
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showLoadProgressView()V

    .line 224
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showLoadDialog()V

    .line 226
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->changgeVideoOnRecfast(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showLoadProgressView()V

    .line 230
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showLoadDialog()V

    .line 231
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->changgeVideoOnRecfast(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$initRecordControl$2(JLandroid/view/View;)V
    .locals 0

    .line 243
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {p3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "showDateDialogLLL:1"

    .line 247
    invoke-static {p3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 248
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getRecordState()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/dgiot/speedmonitoring/R$string;->device_record_is_recording_hint:I

    invoke-virtual {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_1
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {p3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getPlayingState()Z

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->showDateDialog(J)V

    return-void
.end method

.method private synthetic lambda$initRecordControl$3(JLandroid/view/View;)V
    .locals 0

    .line 257
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {p3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getRecordState()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/dgiot/speedmonitoring/R$string;->device_record_is_recording_hint:I

    invoke-virtual {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->showDateDialog(J)V

    const-string p1, "showDateDialogLLL:1"

    .line 266
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initRecordControl$4()V
    .locals 1

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->canClickDialog:Z

    return-void
.end method

.method private synthetic lambda$showCardHint$20(I)V
    .locals 0

    .line 1285
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->showAdHintRechargeView(I)V

    return-void
.end method

.method private synthetic lambda$showDateDialog$5(Lcom/haibin/calendarview/CalendarView;II)V
    .locals 1

    const/16 p1, 0xa

    if-ge p3, p1, :cond_0

    const-string p1, "0%d"

    goto :goto_0

    :cond_0
    const-string p1, "%d"

    .line 307
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowShowingMonth:Ljava/lang/String;

    .line 309
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "setOnMonthChangeListener:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 310
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/assist/DateUtil;->getYmUpMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthRecordListAndAddress(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;
    .locals 4

    .line 85
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fragmentNewInstance:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, "productSn"

    .line 88
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "alarmTime"

    .line 89
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isjumpfromplayback"

    .line 90
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private requestMonthRecordListAndAddress(Ljava/lang/String;)V
    .locals 4

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoOnDemandParam requestMonthVideoListMap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    .line 398
    invoke-virtual {v2, v3, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getMonthVideoListParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {v0, v1, p1}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private requestRecordListAndAddress(Ljava/lang/String;Z)V
    .locals 3

    const-string p2, "requestRecordListAndAddressLog:"

    .line 569
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 570
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->finalSelectDate:Ljava/lang/String;

    .line 571
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    sget-object v1, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    .line 572
    invoke-virtual {v1, v2, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoListParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$4;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$4;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    .line 571
    invoke-virtual {p2, v0, p1, v1}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private resetAlarmSelectState()V
    .locals 2

    .line 1092
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeAll:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1093
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1094
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1095
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private saveRequestMonthRecord()V
    .locals 4

    const-string v0, "setOnMonthChangeListener:loading "

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowShowingMonth:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowShowingMonth:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowShowingMonth:Ljava/lang/String;

    invoke-static {v1}, Lcom/common/util/assist/DateUtil;->getYmUpMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnMonthChangeListener:for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    return-void
.end method

.method private setPlayControlImage(Landroid/widget/ImageButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 939
    :try_start_0
    sget p2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_start:I

    goto :goto_0

    .line 940
    :cond_0
    sget p2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_pause:I

    .line 939
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private varargs setViewDisable([Landroid/view/View;)V
    .locals 5

    .line 502
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    const v4, 0x3f333333    # 0.7f

    .line 503
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 504
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 505
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 506
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs setViewEnable([Landroid/view/View;)V
    .locals 5

    .line 492
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 493
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x1

    .line 494
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 495
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 496
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setVoxSelect(Landroid/widget/ImageButton;Landroid/widget/ImageView;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array v2, v1, [Landroid/view/View;

    aput-object p1, v2, v0

    .line 949
    invoke-static {p3, v2}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsSelect(Z[Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array p1, v1, [Landroid/view/View;

    aput-object p2, p1, v0

    .line 953
    invoke-static {p3, p1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsSelect(Z[Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private showAdHintRechargeView(I)V
    .locals 3

    .line 1302
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->hasCloseAdHintRecharge:Z

    if-nez v0, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvCardDesc1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5b58\u50a8\u5361\u5185\u5b58\u5269\u4f59\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getCardDescStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->rlAdHintRecharge:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0


    :cond_0
    return-void
.end method

.method private showDateDialog(J)V
    .locals 3

    .line 294
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->onTouchRecordDelay()V

    .line 300
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    invoke-direct {v0}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;-><init>()V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setSelectMillisecond(J)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->msgDateMap:Ljava/util/Map;

    .line 304
    invoke-virtual {p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setMsgDates(Ljava/util/Map;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    .line 306
    invoke-virtual {p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setOnMonthChangeListener(Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$OnMonthChangeListener;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$1;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    .line 312
    invoke-virtual {p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setListener(Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$CalendarDialogOnClickListener;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "CalendarDialog"

    invoke-virtual {p1, p2, v0}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->calendarDialog:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;

    return-void

    .line 295
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->discInfo:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toastError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateAdMenuView()V
    .locals 3

    const-string v0, "getTFInfo:"

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateAdMenuView log2 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1242
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    if-eqz v0, :cond_2

    const-string v0, "SDCard_showAdMenu 4"

    .line 1244
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showAdMenu()V

    goto :goto_0

    .line 1249
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTFInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "use"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->hideAdMenu()V

    .line 1255
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->showCardHint(I)V

    goto :goto_0

    :cond_1
    const-string v0, "SDCard_showAdMenu 5"

    .line 1258
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showAdMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private updateDateView(Z)V
    .locals 6

    .line 888
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 889
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p1

    const-string v0, "0%d"

    const-string v1, "%d"

    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 890
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    if-ge v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tvSelectDatesetText:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    sget p1, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 895
    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_3
    return-void
.end method

.method private updateTimerDataByMsgType()V
    .locals 4

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateTimerDataByMsgType_1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1105
    :cond_0
    new-instance v0, Lcom/dgiot/speedmonitoring/util/DataFilterCardManager;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/util/DataFilterCardManager;-><init>()V

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeAll:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/util/DataFilterCardManager;->initOriginalData([Ljava/lang/String;)Z

    .line 1110
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSelectType()Ljava/util/Set;

    .line 1111
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->ivTypeAll:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1112
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSelectType()Ljava/util/Set;

    move-result-object v1

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateTimerDataByMsgType_1_excluded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1115
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1116
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/util/DataFilterCardManager;->filterBySelectedTypes(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTimerDataByMsgType_1_end:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1118
    array-length v1, v0

    if-nez v1, :cond_1

    .line 1119
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->cleanAllCanvas()V

    goto :goto_2

    .line 1122
    :cond_1
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealFileList([Ljava/lang/String;)V

    goto :goto_2

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealFileList([Ljava/lang/String;)V

    goto :goto_2

    .line 1131
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectFileList:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealFileList([Ljava/lang/String;)V

    goto :goto_2

    .line 1136
    :cond_4
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1137
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSelectType2()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 1140
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    const-string v2, "0"

    .line 1142
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "00"

    .line 1143
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateTimerDataByMsgType_2_excluded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/util/DataFilterCardManager;->filterByExcludedTypes(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTimerDataByMsgType_2_end:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 1147
    array-length v1, v0

    if-nez v1, :cond_6

    goto :goto_1

    .line 1154
    :cond_6
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealFileList([Ljava/lang/String;)V

    goto :goto_2

    .line 1149
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->cleanAllCanvas()V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public changgeVideoOnRecfast(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changgeVideoOnRecfastLog:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "changgeVideoOnRecfast:playType = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/ "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v5, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isCardPlaying:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getPlayingState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_2

    .line 428
    sget-boolean v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isCardPlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->WRITE_MP4:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->getPlayingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->changeRecordStep(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getVideoOnDemandAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getVideoOnDemandAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public controlDateView(Z)V
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDateFlag:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDateFlag:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public dealBroadcastMes(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "code"

    const-string v1, "dealTFCardInfoLog:"

    const-string v2, "msg"

    .line 592
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sn"

    .line 593
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dealBroadcastMes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 595
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 600
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 602
    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealVideoListParam(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_2

    .line 605
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealMonthVideoListParam(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-static {v2}, Lcom/dgiot/speedmonitoring/repository/IotParamName;->isRecordStream(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 608
    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealRecordStreamAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_3
    invoke-static {v2}, Lcom/dgiot/speedmonitoring/repository/IotParamName;->isTfInfo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 612
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upLoadTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v0, v3

    if-lez p1, :cond_5

    .line 613
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upLoadTime:J

    .line 614
    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealTFCardInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "\"state\":28"

    .line 617
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 618
    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealChangeRecordPosition(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public dealRecordCallBack(D)V
    .locals 9

    .line 350
    :try_start_0
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upUpdaterSize:J

    long-to-double v0, v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 351
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upUpdaterSize:J

    :cond_0
    double-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 356
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dealVideoFileEndTimeMap()V

    .line 357
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 359
    div-long v3, p1, v0

    const-wide/16 v5, 0xe10

    div-long/2addr v3, v5

    .line 360
    div-long v3, p1, v0

    rem-long/2addr v3, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v3, v7

    .line 361
    div-long v3, p1, v0

    rem-long/2addr v3, v5

    rem-long/2addr v3, v7

    if-eqz v2, :cond_1

    .line 364
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 365
    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda16;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    :cond_1
    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upUpdateTime:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    .line 375
    iput-wide p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upUpdateTime:J

    .line 376
    div-long v0, p1, v0

    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lastFileSecondLength:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda17;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;J)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    :goto_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->checkLoginState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public declared-synchronized dealVideoFileEndTimeMap()V
    .locals 8

    monitor-enter p0

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    .line 909
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v0

    .line 910
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 913
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 914
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getPlaySecond(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 916
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getPlaySecond(Ljava/lang/String;I)I

    move-result v4

    .line 918
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 921
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackProgress======================"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 922
    iput v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lastFileSecondLength:I

    .line 923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playbackProgress======================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/// "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->lastFileSecondLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 929
    :catch_0
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCalendarMsgDates(III)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyWebSocketClient-getCalendarMsgDates:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->msgDateMap:Ljava/util/Map;

    const-string v7, ""

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSchemeCalendar(IIIILjava/lang/String;)Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, ""

    move-object v2, p0

    .line 408
    invoke-direct/range {v2 .. v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSchemeCalendar(IIIILjava/lang/String;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 407
    invoke-interface {v1, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->msgDateMap:Ljava/util/Map;

    return-object p1
.end method

.method public getTFInfoParam()V
    .locals 5

    .line 554
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isDealCardInfo:Z

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getTFInfoParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/common/util/assist/DateUtil;->getYm(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda10;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;Z)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public getTfErrorType()I
    .locals 1

    .line 1050
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    return v0
.end method

.method public getUpSlideTime()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upSlideTime:J

    return-wide v0
.end method

.method public getVideoOnDemandAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6

    .line 966
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoOnDemandParam(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-direct {p0, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getPlaySecond(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    .line 969
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getVideoOnDemandParam = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->nowSelectPlaySecond:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "   /   "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p2

    iget-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    new-instance p4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$5;

    invoke-direct {p4, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$5;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {p2, p3, p1, p4}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    move-result-object v0

    return-object v0
.end method

.method public initRecordControl()V
    .locals 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoRecordFragment_init:flTimeLoad.setVisibility() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->fromAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->fromAlarm:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->flTimeLoad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->flTimeLoad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda4;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setOnSlideFileListener(Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$SlideFileListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda5;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setOnSelectFileListener(Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$SelectFileListener;)V

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 242
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDate:Landroid/widget/TextView;

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda6;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;J)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvSelectDateFlag:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda7;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;J)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda8;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initialize()V
    .locals 2

    const-string v0, "initializeFragment\uff1a1 "

    .line 101
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->initRecordControl()V

    .line 104
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->llTfCardState:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->tvTfCardStateInfo:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->device_card_info_error_8:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    if-eqz v0, :cond_0

    const-string v0, "SDCard_showAdMenu 3"

    .line 108
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->showAdMenu()V

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->initAdMenuClick()V

    .line 115
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->initAdHintRechargeClick()V

    return-void
.end method

.method public isInitDeviceInfo()Z
    .locals 1

    .line 1046
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->tfErrorType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitView()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isInitView:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "productSn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isjumpfromplayback"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isJumpFromPlayback:Z

    .line 137
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "fragmentNewInstance_onCreate:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTFInfoParam()V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 145
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->fromAlarm:Z

    .line 147
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->initSelectDateByAlarmMessageTime(Ljava/lang/String;)V

    .line 149
    :cond_1
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isInitView:Z

    const-string p1, "VideoRecordFragment_init"

    .line 150
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1319
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onResume()V

    .line 1320
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->updateAdMenuView()V

    const-string v0, "fragmentFlag:onResume"

    .line 1321
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1326
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onStop()V

    const-string v0, "VideoRecordFragmentLog:onStop"

    .line 1327
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public reOpenRecordVideo()V
    .locals 12

    const-string v0, "#"

    const-string v1, "setOnSelectFileListener time2 = "

    const-string v2, "setOnSelectFileListener value = "

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoRecordBinding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getScrollLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getNowSelectVideoInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "requestRecordListAndAddressFlag:1"

    .line 444
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v8, v4, v5

    const/4 v4, 0x2

    .line 448
    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0xe10

    const/4 v6, 0x4

    invoke-virtual {v8, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v5, v7

    const/4 v7, 0x6

    .line 449
    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 454
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dragSecond:I

    sub-int v9, v0, v5

    .line 455
    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->getVideoOnDemandAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;->requestFail()V

    :goto_0
    return-void
.end method

.method public setAlarmTime(Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "fragmentNewInstance_onCreate:set alarmTime = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    return-void
.end method

.method public setVideoStatus(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    .line 161
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    return-void
.end method

.method public showCardHint(I)V
    .locals 4

    .line 1274
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1278
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upAdHintTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 1281
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->upAdHintTime:J

    .line 1283
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->firstLoad:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1284
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->firstLoad:Z

    .line 1285
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment$$ExternalSyntheticLambda9;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1288
    :cond_2
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->showAdHintRechargeView(I)V

    :goto_0
    return-void
.end method

.method public updatePlayType(Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    return-void
.end method
