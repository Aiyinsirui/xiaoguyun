.class public Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;
.super Lcom/dgiot/speedmonitoring/base/BaseFragment;
.source "VideoRecordYunFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/BaseFragment<",
        "Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALARMTIME:Ljava/lang/String; = "alarmTime"

.field private static final ISINTERNAL:Ljava/lang/String; = "isInternal"

.field private static final IS_NEED_PLAY:Ljava/lang/String; = "needPlay"

.field private static final SN:Ljava/lang/String; = "productSn"

.field public static hintSaveFail:Ljava/lang/String;

.field public static hintSaveSuccess:Ljava/lang/String;

.field public static mVideoKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mVideoNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alarmTime:Ljava/lang/String;

.field private alarmTimeIndexNew:I

.field beforeVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

.field private canInitDownFile:Z

.field private changeFileLoca:I

.field private deviceSn:Ljava/lang/String;

.field private dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

.field private doubleVideo:Z

.field private downNum:I

.field private downNumFlag:I

.field downPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dragSecond:I

.field private fileInfoReceiver:Landroid/content/BroadcastReceiver;

.field filter:Landroid/content/IntentFilter;

.field finalSelectDate:Ljava/lang/String;

.field firstLoad:Z

.field private hasCloseAdHintRecharge:Z

.field private hasLoadVideo:Z

.field final hintPopupViews:[Lcom/lxj/xpopup/core/BasePopupView;

.field private isBadVideo:Z

.field isCanUnregisterReceiver:Z

.field private isChangeDate:Z

.field private isDealLoadYunFileListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field isInitStateLayout:Z

.field private isInitView:Z

.field private isInternal:Z

.field private isLoadingVideo:Z

.field private isNeedPlay:Z

.field private isNeedSlideRefreshVideo:Z

.field isResumed:Z

.field private isSlideView:Z

.field jsonArrayFileList:Lorg/json/JSONArray;

.field lastFileSecondLength:I

.field loadBucketName:Z

.field public mNewVideoKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

.field mapNowHourFileList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/adapter/RecordFileTimeAdapter$RecordFileTimeBean;",
            ">;>;"
        }
    .end annotation
.end field

.field mergedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private needDownFileNum:I

.field private newBucketDownFileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nowFilePathList:Ljava/lang/String;

.field nowShowingMonth:Ljava/lang/String;

.field oneLoad:Z

.field private pic:Ljava/lang/String;

.field playPos:I

.field private playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

.field prevMatchedIndex:I

.field prevTotalSecondStart:I

.field private productSn:Ljava/lang/String;

.field progressIndicator:Landroid/view/View;

.field private reopenVideo:Z

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

.field private selectDate:Ljava/lang/String;

.field private slideStartIndex:I

.field private startSlidePlay:Z

.field private uiHandler:Landroid/os/Handler;

.field upAdHintTime:J

.field private upSlideTime:J

.field private upUpdateTime:J

.field private upUpdaterSize:J

.field videoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoListData:Ljava/lang/String;

.field videoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

.field videosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field visibleVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private warnType:I


# direct methods
.method public static synthetic $r8$lambda$-AAAbYcFCG0srUB9p3ejjnh3uXo(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$15(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$0cTmcpBs_pPbgdYH6cnZV78wIQ8(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$0pMbw3iwrhsxQPEmkyqugp47DjI(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Lcom/haibin/calendarview/CalendarView;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$showDateDialog$21(Lcom/haibin/calendarview/CalendarView;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$37BRbYHAPYbBALiDPaoknvjYR4s(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$42pfDHWPtpkWq6YPXdoFHXn4yd4(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$playFileControllerProgress$30(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4LXqNeUezOflpJh2N0VzN3V1Rhk(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4b4n-anM72y3sktQL2OnlkuW2Rc(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initRecordControl$23(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5AQqQhubep5iFnVIvZjsXxybgYg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$7dR656nuNQ4OoHaWW08UYlXHUkM(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$showCardHint$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$7duWLFtlTRHH0c8UBT01v1beTu4(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$CcukzmBrfjdxJGczZpWkDBvHGQ4(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdHintRechargeClick$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbbCgrIJDqEi31XQiwi8XiwL_X8(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$playFileControllerProgress$29(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$GhYlrXcj-li7ln6j2HGGcsCTjOg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdHintRechargeClick$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBkJZZ-iLrjE_v3-3NRYZ8VNyMg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$playFileControllerProgress$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$LBUI9nGS1n8kP_pbmnUkgOZFwRo(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$M0n8Qz7tULg_DAa0vmaJI8qKWb0(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$requestRecordListAndAddress$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$OUq-C4uqRP_FqGiHyccqeIwmWOU(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PEc45OMcH9sHgFHzM1QzYNvfAcI(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpCbpURRaiS3HRDScmxyKfJbBo8(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$showDateDialog$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$SkKzVnYQ1WeavkcKw-qstnHAJTI(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$UHRknEsysaf5-4ljryVsz_deGOw(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$UHRluVM0yMVUtYtqZOJAk5Dm8Gw(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initRecordControl$24(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xs362moN7kReMaZ5BHqJQ9HqgBg(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuMqPsDkn85pGPNN69X1FsyUxcM(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$35(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$dWr10NGGHG1Tyany4q3vmxsLuPE(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgAgTPghA50ABRvRLS351Qvdu4I(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initRecordControl$26(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fHsTBqSxaxmN7Yg8OENEVf2zP4U(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdFH1hX4rtI1gIXA6wxpqae9gbA(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$gowZeLrOAjA0G1ctZ29zYWcDbVs(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$hOvX9sqBQNhOBWiTOMO3MYLFXkE(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jAItaIBCfQZJ28DZJfa2dPe6SYk(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$lR575odphh6sGDDmLmrxz96X42Q(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealLoadYunFileList$36(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-tePn4lDsjCcyqzcauGj6HfHPo(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$qKKAT8IEQYD9h1dLcb3bA3w9pv4(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$playFileControllerProgress$28(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tA8FirZaZS5cD3e7Vh9Y2tqLNVw(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initAdMenuClick$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vadDPRXW49LBFZtRB4iolMRcIho(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$initRecordControl$25(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wyCpWkMByKJSB4BQTaiu9UEDCY4(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$xGYr6NgD28AXIcktLRUNy_CGl0M(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lambda$dealVideoListParam$14()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetalarmTime(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceSn(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->deviceSn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisInternal(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproductSn(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectDate(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartSlidePlay(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->startSlidePlay:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuiHandler(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;
    .locals 0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcanInitDownFile(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdeviceSn(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->deviceSn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedCalendar(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Lcom/haibin/calendarview/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnowFilePathList(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpic(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->pic:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectDate(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartSlidePlay(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->startSlidePlay:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwarnType(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;I)V
    .locals 0

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->warnType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateTimeHourList(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->createTimeHourList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdealDownFileLogic(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealDownFileLogic(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdealLoadYunFileList(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdealSelectVideo(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealSelectVideo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdealVideoListParam(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealVideoListParam(Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPlayType(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Lcom/dgiot/speedmonitoring/ui/live/PlayType;
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectDate(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseTime(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->parseTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestRecordListAndAddress(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAdMenuView(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateAdMenuView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDateView(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateDateView(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 867
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    const-string/jumbo v0, "\u4fdd\u5b58\u5b8c\u6210\uff0c\u8bf7\u5230<\u4e2a\u4eba\u4e2d\u5fc3-\u6211\u7684\u89c6\u9891>\u8def\u5f84\u4e0b\u67e5\u770b"

    .line 2669
    sput-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hintSaveSuccess:Ljava/lang/String;

    const-string/jumbo v0, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 2670
    sput-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hintSaveFail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 112
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    const/4 v2, 0x1

    .line 103
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->oneLoad:Z

    .line 105
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView:Z

    const/4 v3, 0x0

    .line 138
    iput-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->progressIndicator:Landroid/view/View;

    .line 236
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->firstLoad:Z

    const-wide/16 v4, 0x0

    .line 237
    iput-wide v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upAdHintTime:J

    .line 258
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hasCloseAdHintRecharge:Z

    .line 276
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z

    .line 277
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    .line 279
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitStateLayout:Z

    .line 778
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->msgDateMap:Ljava/util/Map;

    .line 863
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    .line 864
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    .line 866
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mNewVideoKeyList:Ljava/util/List;

    const/4 v6, 0x6

    .line 909
    iput v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNum:I

    .line 1073
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    .line 1115
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->beforeVideoList:Ljava/util/ArrayList;

    .line 1116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->visibleVideoList:Ljava/util/ArrayList;

    .line 1118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoList:Ljava/util/ArrayList;

    .line 1119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mergedList:Ljava/util/ArrayList;

    .line 1121
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videosList:Ljava/util/ArrayList;

    .line 1122
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoMap:Ljava/util/HashMap;

    .line 1342
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadBucketName:Z

    .line 1344
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    .line 1346
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    .line 1349
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    .line 1351
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1353
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    .line 1358
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newBucketDownFileNameMap:Ljava/util/Map;

    .line 1360
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    const/4 v6, 0x3

    .line 1592
    iput v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playPos:I

    .line 1600
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->deviceSn:Ljava/lang/String;

    const/4 v6, -0x1

    .line 1602
    iput v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->warnType:I

    .line 1603
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->pic:Ljava/lang/String;

    .line 1605
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isChangeDate:Z

    .line 1606
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    .line 1607
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->doubleVideo:Z

    .line 1608
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isBadVideo:Z

    .line 1811
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hasLoadVideo:Z

    .line 1813
    new-instance v7, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$4;

    invoke-direct {v7, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$4;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    iput-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->fileInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1933
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowShowingMonth:Ljava/lang/String;

    .line 1996
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    new-array v2, v2, [Lcom/lxj/xpopup/core/BasePopupView;

    aput-object v3, v2, v1

    .line 2006
    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hintPopupViews:[Lcom/lxj/xpopup/core/BasePopupView;

    .line 2034
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    .line 2035
    iput-wide v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upSlideTime:J

    .line 2037
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->startSlidePlay:Z

    .line 2261
    iput-wide v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdateTime:J

    const-wide/16 v2, -0x1

    .line 2262
    iput-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdaterSize:J

    .line 2364
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lastFileSecondLength:I

    .line 2468
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reopenVideo:Z

    .line 2527
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mapNowHourFileList:Ljava/util/Map;

    .line 2690
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isDealLoadYunFileListMap:Ljava/util/HashMap;

    .line 2691
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    .line 2693
    iput v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    .line 2695
    iput v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevMatchedIndex:I

    .line 2696
    iput v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevTotalSecondStart:I

    return-void
.end method

.method static synthetic access$000(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method

.method private createTimeHourList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 2685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private dealAdClickEvent(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 419
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeAll:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 420
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateTimerDataByMsgType()V

    goto :goto_1

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 431
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeople:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 435
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCar:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 438
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 439
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePet:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 441
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateTimerDataByMsgType()V

    goto :goto_1

    .line 444
    :cond_4
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showAdHintPop()V

    :goto_1
    return-void
.end method

.method private dealChangeFileLocal(Ljava/lang/String;)V
    .locals 3

    const-string v0, "dealChangeFileLocal:"

    const/4 v1, 0x0

    .line 1620
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1627
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    if-gez p1, :cond_0

    .line 1628
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1632
    :catch_0
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    :cond_0
    :goto_0
    return-void
.end method

.method private dealDownFileLogic(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1638
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "videos"

    const-string v4, "_"

    const-string v5, "start get showLoadDialogTouch1====== dismissLoadDialog16"

    const-string v6, "mdgPlayerControllerAddFiles"

    const-string v7, "isSlideView_moveVideoFiles:"

    const-string v8, "isSlideView:"

    const-string v9, "isSlideView value: start open-3"

    const-string v10, "isSlideView value: start open-1"

    const-string v11, "isSlideView value: start open-4 "

    const-string v12, "start get showLoadDialogTouch1====== dismissLoadDialog15"

    const-string v15, "/"

    const/4 v3, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_b

    .line 1639
    iget v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v14, "MyWebSocketClient ACTION_DOWN_VIDEO_downNumFlag:"

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v14, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "     "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1642
    iget v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    iget v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    if-ne v1, v3, :cond_12

    .line 1643
    iput v13, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSlideView value size:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v13

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1648
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 1649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v13

    .line 1650
    :goto_1
    iget-object v12, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 1652
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getVideoPathFileNameLL:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1653
    iget-object v12, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1654
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    .line 1655
    aget-object v19, v13, v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v4

    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v5

    :try_start_2
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, ":"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v21, v9

    :try_start_3
    const-string v9, ""

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v22, v10

    const/16 v10, 0xa

    :try_start_4
    invoke-virtual {v12, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v9, 0x0

    .line 1658
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0xe10

    const/4 v10, 0x4

    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v9, v5

    const/4 v5, 0x6

    .line 1659
    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v9, v4

    .line 1661
    iget-object v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newBucketDownFileNameMap:Ljava/util/Map;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 1662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveFileNamenewBucketDownFileNameMap:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getDataDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 1664
    aget-object v10, v13, v5

    invoke-direct {v0, v10}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealChangeFileLocal(Ljava/lang/String;)V

    .line 1666
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parsePath>>>path: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1669
    new-instance v5, Lcom/android/dgplayer/DGFileItem;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v12, v13, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v3, :cond_1

    iget v12, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v5, v4, v9, v10, v12}, Lcom/android/dgplayer/DGFileItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 1670
    iput v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_0
    move-object/from16 v20, v4

    :catch_1
    move-object/from16 v19, v5

    :catch_2
    move-object/from16 v21, v9

    :catch_3
    move-object/from16 v22, v10

    :catch_4
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v19, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 1676
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "isSlideView value: start videoItem.size == 0"

    .line 1677
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1678
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    :cond_4
    const/4 v2, 0x0

    .line 1681
    iput-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isChangeDate:Z

    .line 1682
    sput-boolean v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isCardPlaying:Z

    .line 1683
    iget-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hasLoadVideo:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1692
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1693
    iget-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    if-eqz v2, :cond_6

    .line 1694
    invoke-static {v6}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1695
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->addVideoFiles(Ljava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    const/4 v1, 0x0

    .line 1697
    iput-boolean v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    move v3, v1

    goto/16 :goto_5

    .line 1700
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "        time:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "         "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    invoke-virtual {v4}, Lcom/android/dgplayer/DGFileItem;->getFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1703
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object v5

    invoke-interface {v2, v4, v1, v5}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->moveVideoFiles(ILjava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    .line 1704
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "playProgress_playProgress_playBack:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dgplayer/DGFileItem;

    iget-object v5, v5, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1705
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "playProgress_playProgress_playBack7:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dgplayer/DGFileItem;

    iget-object v5, v5, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1706
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dgplayer/DGFileItem;

    iget-object v1, v1, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v4, v1

    int-to-double v4, v4

    invoke-interface {v2, v4, v5}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->playBack(D)V

    .line 1707
    iput-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1684
    :goto_4
    iput-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hasLoadVideo:Z

    .line 1685
    invoke-static/range {v22 .. v22}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isSlideView value: start open-2   "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1687
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->startPlay(Ljava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    .line 1688
    iput-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    .line 1689
    invoke-static/range {v21 .. v21}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1711
    :goto_5
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1713
    iget-boolean v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    if-eqz v1, :cond_9

    .line 1714
    iput-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    .line 1715
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->changeWhenSlideRefresh()V

    .line 1718
    :cond_9
    invoke-static/range {v19 .. v19}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1721
    :cond_a
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1722
    invoke-static {v12}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_b
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 1733
    iget v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_DOWN_VIDEO_downNumFlag:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1735
    iget v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    iget v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    if-ne v1, v3, :cond_12

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSlideView value:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1738
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 1739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1740
    :goto_7
    iget-object v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 1742
    :try_start_5
    iget-object v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v5, v20

    .line 1743
    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 1744
    aget-object v12, v9, v10

    const/4 v13, 0x2

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v12, v12, 0xe10

    aget-object v14, v9, v10

    const/4 v10, 0x4

    invoke-virtual {v14, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    add-int/2addr v12, v14

    const/4 v14, 0x0

    aget-object v13, v9, v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v14, 0x6

    .line 1745
    :try_start_7
    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1746
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    .line 1747
    aget-object v13, v9, v10

    invoke-direct {v0, v13}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealChangeFileLocal(Ljava/lang/String;)V

    .line 1748
    new-instance v13, Lcom/android/dgplayer/DGFileItem;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v3, :cond_d

    iget v10, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v13, v4, v12, v9, v10}, Lcom/android/dgplayer/DGFileItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_5
    move-object/from16 v5, v20

    :catch_6
    const/4 v14, 0x6

    .line 1751
    :catch_7
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "parsePath:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v20, v5

    goto/16 :goto_7

    :cond_e
    const/4 v3, 0x0

    .line 1753
    iput v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    .line 1760
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSlideView value: isSlideView = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1761
    iget-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    if-nez v2, :cond_f

    .line 1762
    invoke-static/range {v22 .. v22}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, "isSlideView value: start open-2"

    .line 1765
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1766
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->startPlay(Ljava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    const/4 v1, 0x0

    .line 1770
    iput-boolean v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    .line 1771
    invoke-static/range {v21 .. v21}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1774
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1775
    iget-boolean v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    if-eqz v2, :cond_10

    .line 1776
    invoke-static {v6}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1777
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->addVideoFiles(Ljava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    const/4 v1, 0x0

    .line 1780
    iput-boolean v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    move v3, v1

    goto/16 :goto_a

    .line 1783
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "        "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    invoke-virtual {v4}, Lcom/android/dgplayer/DGFileItem;->getFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1786
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    move-result-object v5

    invoke-interface {v2, v4, v1, v5}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->moveVideoFiles(ILjava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    .line 1787
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "playProgress_playProgress_playBack:."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dgplayer/DGFileItem;

    iget-object v5, v5, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, "playProgress_playProgress_playBack8:"

    .line 1788
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1789
    iget-object v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dgplayer/DGFileItem;

    iget-object v4, v4, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dgplayer/DGFileItem;

    iget-object v1, v1, Lcom/android/dgplayer/DGFileItem;->local:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v4, v1

    int-to-double v4, v4

    invoke-interface {v2, v4, v5}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->playBack(D)V

    .line 1791
    iput-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    .line 1794
    :goto_a
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1796
    invoke-static/range {v19 .. v19}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1797
    iget-boolean v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    if-eqz v1, :cond_12

    .line 1798
    iput-boolean v3, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    .line 1799
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->changeWhenSlideRefresh()V

    goto :goto_b

    .line 1804
    :cond_11
    iget-object v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1805
    invoke-static {v12}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_12
    :goto_b
    return-void
.end method

.method private dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "///"

    const-string v3, "-"

    const-string v4, "MyWebSocketClient BROADCAST_DOWN_FILE_PATH_LIST:"

    .line 2703
    iget-object v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isDealLoadYunFileListMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    sget-object v5, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->mTempYunFileListMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "[]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_a

    .line 2722
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isResumed:ok   isSlideView = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isResumed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   isInternalContent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 2725
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2728
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2729
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    .line 2730
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mNewVideoKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2731
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, -0x1

    .line 2732
    iput v10, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    .line 2736
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v11, 0x6

    const-string v12, " "

    const-string v13, ":"

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-nez v0, :cond_1

    .line 2737
    :try_start_1
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2738
    invoke-virtual {v0, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit16 v10, v10, 0xe10

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x3c

    add-int v10, v10, v16

    .line 2739
    invoke-virtual {v0, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v10, v0

    goto :goto_0

    :cond_1
    move v10, v5

    :goto_0
    move v11, v5

    move/from16 v16, v11

    .line 2742
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const-string v14, "     "

    const-string v15, "_"

    if-ge v11, v0, :cond_6

    .line 2743
    :try_start_2
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0xd

    if-le v0, v7, :cond_3

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_1_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2744
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0xa

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2746
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v17, v3

    const/16 v3, 0xa

    :try_start_3
    invoke-virtual {v7, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2747
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordFile:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "      "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2749
    iget-object v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2750
    iget-object v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mNewVideoKeyList:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "#"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2751
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v3, :cond_4

    .line 2753
    :try_start_4
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v7, v3, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2755
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 2756
    aget-object v7, v3, v5

    const/4 v12, 0x1

    .line 2757
    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v12, 0x2

    .line 2759
    invoke-virtual {v7, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    mul-int/lit16 v5, v5, 0xe10

    const/4 v15, 0x4

    :try_start_5
    invoke-virtual {v7, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v5, v12

    const/4 v12, 0x6

    .line 2760
    invoke-virtual {v7, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 2762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alarmTimePositionSecondLog->"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-lt v10, v5, :cond_2

    add-int/2addr v3, v5

    if-gt v10, v3, :cond_2

    .line 2764
    iput v11, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    sub-int v3, v10, v5

    .line 2766
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlarmTime=4  alarmTimeIndex = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2767
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    const/4 v5, -0x1

    .line 2770
    iput v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevMatchedIndex:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move/from16 v16, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move/from16 v16, v3

    goto :goto_2

    :cond_2
    if-gt v5, v10, :cond_5

    .line 2776
    :try_start_7
    iget v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevTotalSecondStart:I

    if-le v5, v0, :cond_5

    .line 2777
    iput v11, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevMatchedIndex:I

    .line 2778
    iput v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevTotalSecondStart:I

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update prevMatchedIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevMatchedIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", startSecond: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevTotalSecondStart:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v15, 0x4

    .line 2785
    :goto_2
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarmTimePositionSecondLog->e "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v19, v12

    :cond_4
    const/4 v15, 0x4

    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    move-object/from16 v3, v17

    move-object/from16 v12, v19

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v15, 0x2

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_6

    :cond_6
    move-object/from16 v17, v3

    .line 2792
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevMatchedIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 2793
    iput v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    .line 2795
    iget v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->prevTotalSecondStart:I

    sub-int v16, v10, v0

    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmTimeIndexNew_reset\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2797
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    :cond_7
    move/from16 v0, v16

    const-string v3, "MyWebSocketClient BROADCAST_DOWN_FILE_PATH_LIST:initFileDownList"

    .line 2800
    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initFileDownList()V

    const-string v3, "MyWebSocketClient BROADCAST_DOWN_FILE_PATH_LIST:end"

    .line 2802
    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v3, "data"

    .line 2803
    invoke-virtual {v4, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2804
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    .line 2807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyWebSocketClient recordFile:size  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    isTodayDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isTodayDate()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v3, "setVideoDateListFlag:1"

    .line 2808
    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmTime=4  alarmTimeIndex1-- = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2810
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda14;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmTime=4  alarmTimeIndex2-- = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 2814
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda15;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2816
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyWebSocketClient recordFile finalSelectDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v5, v17

    :try_start_9
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2817
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v6, 0x64

    if-eqz v3, :cond_a

    .line 2818
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_9

    .line 2819
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 2822
    :goto_4
    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v10, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda16;

    invoke-direct {v10, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda16;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v4, v10, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 2829
    :cond_a
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda17;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    .line 2837
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoOnDemandAddress-index="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarmTimeIndex_getVideoOnDemandAddress "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2839
    iget v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_e

    const-string v3, "setAlarmTime=3 "

    .line 2840
    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2841
    iput-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 2842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarmTimePositionSecondLog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 2844
    :try_start_a
    iget v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    if-ltz v0, :cond_b

    if-le v0, v3, :cond_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    add-int/lit8 v3, v0, -0x3

    if-lez v3, :cond_d

    move v0, v3

    .line 2856
    :catch_4
    :cond_d
    :try_start_b
    iget v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTimeIndexNew:I

    .line 2857
    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda18;

    invoke-direct {v6, v1, v3, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda18;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;II)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 2865
    :cond_e
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2866
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda19;

    move-object/from16 v6, p1

    invoke-direct {v4, v1, v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda19;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2871
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoOnDemandAddress>>>1   index:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "setAlarmTime=2 "

    .line 2872
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2873
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 2874
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda20;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_6
    move-object/from16 v5, v17

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v5, v3

    .line 2882
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyWebSocketClient getVideoOnDemandAddress>>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2883
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 2884
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    const/4 v3, 0x0

    .line 2886
    invoke-direct {v1, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateDateView(Z)V

    .line 2887
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2888
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finalSelectDate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2889
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v2, 0x0

    .line 2893
    iput-boolean v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->oneLoad:Z

    const-string v0, "setVideoCanOperate=fasle->8"

    .line 2894
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2896
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v3, :cond_10

    iget-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-eqz v0, :cond_10

    const-string v0, "setVideoOperateState=6"

    .line 2897
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2898
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->setVideoOperateState(Z)V

    goto :goto_8

    .line 2899
    :cond_10
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v2, :cond_11

    iget-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-nez v0, :cond_11

    const-string v0, "setVideoOperateState=7"

    .line 2900
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2901
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->setVideoOperateState(Z)V

    goto :goto_8

    :cond_11
    const-string v0, "setVideoCanOperate=fasle->8 no set"

    .line 2904
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2907
    :goto_8
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    .line 2915
    :cond_12
    iget-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadBucketName:Z

    if-nez v0, :cond_13

    const/4 v2, 0x1

    .line 2917
    :try_start_c
    iput-boolean v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadBucketName:Z

    .line 2918
    new-instance v0, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;-><init>()V

    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;->getOOSBucketNameInfo(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    :cond_13
    :goto_9
    return-void

    .line 2706
    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 2707
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    const-string v0, "recordYunFrag1:show record_video_file_hint_no1"

    .line 2708
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "record_video_file_hint_no6"

    .line 2709
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2711
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvYunCardState:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2712
    sget v2, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_no_yun5:I

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p4, :cond_15

    const-string v0, "MyWebSocketClient recordYunFrag1:show record_video_file_hint_no1."

    .line 2713
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2714
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no:I

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toastError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :catch_9
    :cond_15
    return-void
.end method

.method private dealSelectVideo()V
    .locals 1

    .line 997
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    if-nez v0, :cond_0

    return-void

    .line 1000
    :cond_0
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$3;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$3;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    .line 1070
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$3;->start()V

    return-void
.end method

.method private dealVideoListParam(Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "setVideoDateList jsonArray= "

    const-string v0, "recordYunFrag1:onResume  isResumed = "

    .line 1125
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1126
    iget-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    if-nez v0, :cond_0

    return-void

    .line 1130
    :cond_0
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1131
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1132
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1133
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->beforeVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1134
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->visibleVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->deleteVideoFile()V

    const-string v0, "start get VideoRecordList return data"

    .line 1137
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1138
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1140
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1141
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1144
    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "    mVideoKeyList.size:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "deviceYunVideoFilesize--loop start"

    .line 1149
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v7, 0x0

    move v8, v7

    move v10, v8

    const/4 v9, -0x1

    :goto_0
    const-string v0, "_"

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v8, v5, :cond_2

    .line 1153
    :try_start_1
    sget-object v14, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-object v15, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v13

    sget-object v6, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    .line 1154
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 1153
    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1158
    iget-object v14, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v14, :cond_1

    .line 1160
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1161
    aget-object v6, v0, v7

    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0xe10

    aget-object v14, v0, v7

    const/4 v15, 0x4

    invoke-virtual {v14, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    add-int/2addr v6, v14

    aget-object v14, v0, v7

    const/4 v11, 0x6

    .line 1162
    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v6, v14

    .line 1164
    iget-object v14, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    const-string v11, " "

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v13

    const-string v14, ":"

    const-string v13, ""

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1165
    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit16 v13, v13, 0xe10

    invoke-virtual {v11, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v13, v12

    const/4 v12, 0x6

    .line 1166
    invoke-virtual {v11, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v13, v11

    if-lt v13, v6, :cond_1

    const/4 v11, 0x1

    .line 1168
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v6

    if-gt v13, v0, :cond_1

    sub-int v10, v13, v6

    :try_start_3
    const-string v0, "setAlarmTime=7 "

    .line 1171
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1172
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v9, v8

    goto :goto_2

    :catch_0
    move-exception v0

    move v9, v8

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1176
    :goto_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarmTimePositionSecondLog->e "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1181
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;->getFileNameJsonArray()Lorg/json/JSONArray;

    move-result-object v5

    .line 1182
    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;->getVideoList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1183
    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->beforeVideoList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;->getBeforeVideoList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1184
    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->visibleVideoList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;->getVisibleVideoList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1185
    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;->getTimeRegionVideoMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1186
    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videosList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/dgiot/speedmonitoring/greendao/TempVideoInfo;->getTimeRegionVideosList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v6, "data"

    .line 1189
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "deviceYunVideoFilesize--loop end"

    .line 1190
    invoke-static {v6}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1191
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mergedList:Ljava/util/ArrayList;

    .line 1194
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    .line 1195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v3, "deviceYunVideoFileLogtrun:jsonArray"

    .line 1197
    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 1199
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1201
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda2;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isTodayDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1213
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_3

    .line 1214
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v12

    goto :goto_3

    :cond_3
    move v3, v7

    .line 1217
    :goto_3
    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda3;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    const-wide/16 v11, 0x64

    invoke-virtual {v4, v6, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_4
    move v3, v7

    .line 1224
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoOnDemandAddress-index="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start get VideoRecordList return data after getVideoOnDemandAddress "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v9, v2, :cond_8

    const-string v2, "setAlarmTime=6 "

    .line 1227
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1228
    iput-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmTimePositionSecondLog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1231
    :try_start_5
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ltz v10, :cond_6

    if-le v10, v0, :cond_5

    goto :goto_5

    :cond_5
    move v7, v10

    :cond_6
    :goto_5
    add-int/lit8 v0, v7, -0x3

    if-lez v0, :cond_7

    move v10, v0

    goto :goto_6

    :cond_7
    move v10, v7

    .line 1241
    :catch_2
    :goto_6
    :try_start_6
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 1244
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, v9, v10}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda4;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 1253
    :cond_8
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1254
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda5;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    const-string v0, "getVideoOnDemandAddress>>>1"

    .line 1260
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "setAlarmTime=5 "

    .line 1261
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1262
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 1263
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 1264
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda6;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 1272
    :cond_a
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda7;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 1285
    :cond_b
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda8;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 1321
    :catch_3
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda9;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_7
    return-void
.end method

.method private deleteVideoFile()V
    .locals 2

    :try_start_0
    const-string v0, "deleteVideoFileLog:deleteFile."

    .line 1095
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dgiot/speedmonitoring/util/FileManagerUtils;->getCacheFileDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->deleteRecursive(Ljava/io/File;)V

    const-string v0, "deleteVideoFileLog:deleteFile"

    .line 1098
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getFilePathName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "_"

    const-string v1, "OOSManager_log "

    :try_start_0
    const-string v2, "device/"

    .line 1554
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1557
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private getNeedDownFileNameList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNum:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int v2, v1, p1

    :goto_0
    move v1, p1

    :goto_1
    add-int v3, p1, v2

    if-ge v1, v3, :cond_1

    .line 1541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSlideView_downPathList value index3 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1542
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    return-object v0
.end method

.method private getNeedDownFilePathList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    :try_start_0
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNum:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 1574
    :cond_0
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v2, v1, p1

    :goto_0
    move v1, p1

    :goto_1
    add-int v3, p1, v2

    if-ge v1, v3, :cond_1

    .line 1579
    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    return-object v0
.end method

.method private getNewYunTodayPlayPos()I
    .locals 2

    .line 1594
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playPos:I

    if-le v0, v1, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playPos:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPlaySecond(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2393
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const/4 v1, 0x6

    .line 2394
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private getPlayType()Lcom/dgiot/speedmonitoring/ui/live/PlayType;
    .locals 1

    .line 1928
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    :goto_0
    return-object v0
.end method

.method private getSchemeCalendar(IIIILjava/lang/String;)Lcom/haibin/calendarview/Calendar;
    .locals 0

    .line 789
    new-instance p5, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p5}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 790
    invoke-virtual {p5, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 791
    invoke-virtual {p5, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 792
    invoke-virtual {p5, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 793
    invoke-virtual {p5, p4}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const-string p1, " "

    .line 794
    invoke-virtual {p5, p1}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    return-object p5
.end method

.method private getSelectDate()Ljava/lang/String;
    .locals 5

    .line 799
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    sget v1, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "-"

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 801
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_1

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

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

    :cond_1
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

    .line 315
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 317
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 318
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "7"

    .line 321
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "8"

    .line 324
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

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeople:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    .line 332
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 333
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "7"

    .line 336
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "8"

    .line 339
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static getTimeInt(Ljava/lang/String;)I
    .locals 3

    .line 1918
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1919
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1920
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1923
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 1588
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1588
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hideLoadProgress()V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flTimeLoad:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flYunCardState:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initAdHintRechargeClick()V
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvDeleteAdRecharge:Landroid/widget/TextView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvAdRecharge:Landroid/widget/TextView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda11;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAdMenuClick()V
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeAll:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda31;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeople:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda32;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeopleFlag:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda33;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCar:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda34;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCarFlag:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda35;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePet:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda36;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePetFlag:Landroid/widget/ImageView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda37;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeople:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePeopleFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 489
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 490
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeCarFlag:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 493
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypePetFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initCalendarMsgDates()V
    .locals 12

    const-string v0, "handleMessagerunNum_:days "

    const-string v1, "getYunVideoPathDayget:"

    const-string v2, "handleMessagerunNum_:rawData "

    .line 732
    :try_start_0
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getCloudInfo2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 734
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    .line 735
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "sn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    iget-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    const-string v6, "deviceDateMapLog>>"

    const-string v7, "-"

    const-string v8, "      "

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_0

    .line 744
    :try_start_1
    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunVideoPathDay(Ljava/lang/String;)I

    move-result v1

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    move v0, v9

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v0, v3, :cond_1

    .line 749
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v0}, Lcom/common/util/assist/DateUtil;->getSpecifiedDayBefore(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 752
    aget-object v4, v3, v9

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v4

    aget-object v11, v3, v10

    .line 753
    invoke-static {v11}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v11

    aget-object v3, v3, v5

    .line 754
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v3

    .line 752
    invoke-virtual {p0, v4, v11, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getCalendarMsgDates(III)Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_0
    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunVideoPathDay(Ljava/lang/String;)I

    move-result v0

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    move v1, v9

    :goto_1
    add-int/lit8 v3, v0, 0x1

    if-ge v1, v3, :cond_1

    .line 762
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/common/util/assist/DateUtil;->getSpecifiedDayBefore(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 765
    aget-object v4, v3, v9

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v4

    aget-object v11, v3, v10

    .line 766
    invoke-static {v11}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v11

    aget-object v3, v3, v5

    .line 767
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v3

    .line 765
    invoke-virtual {p0, v4, v11, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getCalendarMsgDates(III)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessagerunNum;rawData ->ex "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initStateLayout()V
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initStateLayout:flag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flOpenCloudStorage:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initStateLayout:flag = getYunIsInternal "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunIsInternal(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunIsInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hideLoadProgress()V

    .line 193
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadLayoutView()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flYunCardState:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvStateDis:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5185\u7f6e\u5361\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getCloudInfoIsExpiration(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hideLoadProgress()V

    .line 212
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadLayoutView()V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvStateDis:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_no_yun3:I

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvYunCardState:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_no_yun:I

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flOpenCloudStorage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flYunCardState:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initYunMsgTypeMenu()V
    .locals 0

    return-void
.end method

.method private isTodayDate()Z
    .locals 2

    .line 1336
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1337
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$dealLoadYunFileList$31()V
    .locals 3

    .line 2810
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setVideoDateList(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$dealLoadYunFileList$32()V
    .locals 1

    const/4 v0, 0x1

    .line 2814
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateDateView(Z)V

    return-void
.end method

.method private synthetic lambda$dealLoadYunFileList$33()V
    .locals 2

    .line 2823
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz v0, :cond_0

    .line 2824
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPositionToTodayLast(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealLoadYunFileList$34()V
    .locals 1

    .line 2830
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2831
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isChangeDate:Z

    .line 2832
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPositionToTodayFirst()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealLoadYunFileList$35(II)V
    .locals 2

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoOnDemandAddress_2:finalAlarmTimeIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "requestGetVideoOnDemandAddress4"

    .line 2860
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2861
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoOnDemandAddress(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealLoadYunFileList$36(Landroid/content/Context;)V
    .locals 1

    const-string v0, "record_video_file_hint_no_record3"

    .line 2867
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2868
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no_record:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealLoadYunFileList$37()V
    .locals 3

    .line 2875
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyWebSocketClient ACTION_DOWN_VIDEO_downNumFlag:finalSelectDate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "requestGetVideoOnDemandAddress5"

    .line 2876
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2877
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoOnDemandAddress(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$12()V
    .locals 1

    const/4 v0, 0x1

    .line 1199
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateDateView(Z)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$13()V
    .locals 11

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceYunVideoFileLogtrun:jsonArray run "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->beforeVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->visibleVideoList:Ljava/util/ArrayList;

    .line 1203
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videosList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "deviceYunVideoFilesize--setVideoDateList start"

    .line 1204
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "setVideoDateListFlag:2"

    .line 1205
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isTodayDate()Z

    move-result v3

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->beforeVideoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->visibleVideoList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videosList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mergedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    .line 1207
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v10

    .line 1206
    invoke-virtual/range {v1 .. v10}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setVideoDateList(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Z)V

    const-string v0, "deviceYunVideoFilesize--setVideoDateList end"

    .line 1208
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "deviceYunVideoFileLogtrun:jsonArray end"

    .line 1209
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$14()V
    .locals 2

    .line 1218
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPositionToTodayLast(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealVideoListParam$15(II)V
    .locals 2

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoOnDemandAddress_4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "requestGetVideoOnDemandAddress2"

    .line 1246
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoOnDemandAddress(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$16()V
    .locals 2

    const-string v0, "record_video_file_hint_no_record2"

    .line 1255
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no_record:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$17()V
    .locals 3

    const-string v0, "getVideoOnDemandAddress_1"

    .line 1265
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "requestGetVideoOnDemandAddress3"

    .line 1266
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1267
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoOnDemandAddress(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$18()V
    .locals 1

    const/4 v0, 0x0

    .line 1273
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateDateView(Z)V

    .line 1274
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1275
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    const-string v0, "start get showLoadDialogTouch1====== dismissLoadDialog9"

    .line 1277
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dealVideoListParam$19()V
    .locals 6

    .line 1287
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1288
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    const-string v0, "MyWebSocketClient start get showLoadDialogTouch1====== dismissLoadDialog10"

    .line 1289
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "record_video_file_hint_no4"

    .line 1290
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toastError(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1295
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateDateView(Z)V

    .line 1296
    sget v1, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finalSelectDate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "setVideoOperateState=4"

    .line 1310
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1311
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->setVideoOperateState(Z)V

    .line 1312
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dealVideoListParam$20()V
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1323
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    const-string v0, "connectFaillog->3"

    .line 1329
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initAdHintRechargeClick$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hasCloseAdHintRecharge:Z

    .line 271
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->rlAdHintRecharge:Landroid/widget/FrameLayout;

    const/16 v0, 0x8


    return-void
.end method

.method private synthetic lambda$initAdHintRechargeClick$3(Landroid/view/View;)V
    .locals 3

    .line 273
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$10(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 483
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 459
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 463
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 467
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 471
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 475
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initAdMenuClick$9(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 479
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealAdClickEvent(I)V

    return-void
.end method

.method private synthetic lambda$initRecordControl$23(I)V
    .locals 2

    .line 2048
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upSlideTime:J

    .line 2049
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

.method private synthetic lambda$initRecordControl$24(Ljava/lang/String;)V
    .locals 9

    .line 2054
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->onTouchRecordDelay()V

    .line 2059
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upSlideTime:J

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOnSelectFileListener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "#"

    .line 2062
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "_"

    .line 2063
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v5, 0x2

    .line 2065
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0xe10

    const/4 v7, 0x4

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v6, v8

    const/4 v8, 0x6

    .line 2066
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2068
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setOnSelectFileListener value = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    .line 2070
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setOnSelectFileListener time2 = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2071
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    sub-int/2addr p1, v6

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "setOnSelectFileListener headway = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2074
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->startSlidePlay:Z

    .line 2075
    sget v0, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2076
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 2077
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadDialogTouch()V

    .line 2078
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->getPlayState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    .line 2081
    :cond_0
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    .line 2082
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getChangeVideoOnRecfastParam(Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_5

    .line 2087
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    const-string v5, "0%d"

    const-string v6, "%d"

    const/16 v7, 0xa

    if-ge v0, v7, :cond_2

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v0, v6

    :goto_0
    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v8}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2088
    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v8}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v8

    if-ge v8, v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v7}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2091
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadDialogTouch()V

    .line 2093
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->getPlayState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2094
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedSlideRefreshVideo:Z

    .line 2096
    :cond_4
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    .line 2097
    invoke-virtual {p0, v1, p1, v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getChangeVideoOnRecfastParam(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$initRecordControl$25(JLandroid/view/View;)V
    .locals 0

    .line 2141
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->showDateDialog(J)V

    return-void
.end method

.method private synthetic lambda$initRecordControl$26(JLandroid/view/View;)V
    .locals 0

    .line 2145
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->showDateDialog(J)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 3

    .line 154
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$playFileControllerProgress$27()V
    .locals 1

    .line 2299
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    return-void
.end method

.method private synthetic lambda$playFileControllerProgress$28(Ljava/lang/Integer;)V
    .locals 3

    .line 2316
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_0

    const-string v0, "playFileControllerProgress_update_end==========================================================="

    .line 2317
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playProgress_playProgress_playBack:..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "playProgress_playProgress_playBack9:"

    .line 2319
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->playBack(D)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$playFileControllerProgress$29(J)V
    .locals 0

    long-to-int p1, p1

    .line 2331
    div-int/lit16 p1, p1, 0x3e8

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 2332
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {p1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$playFileControllerProgress$30(J)V
    .locals 3

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeScrollViewUpdateScrollPositionLog: isChangeDate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isChangeDate:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isChangeDate:Z

    if-nez v0, :cond_0

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeScrollViewUpdateScrollPositionLog: isChangeDate= progress = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->updateScrollPosition(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestRecordListAndAddress$11()V
    .locals 1

    const-string v0, "requestGetOOSBucketNameInfo:start loadYunData"

    .line 900
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadData()V

    return-void
.end method

.method private synthetic lambda$showCardHint$1()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->showAdHintRechargeView()V

    return-void
.end method

.method private synthetic lambda$showDateDialog$21(Lcom/haibin/calendarview/CalendarView;II)V
    .locals 1

    const/16 p1, 0xa

    if-ge p3, p1, :cond_0

    const-string p1, "0%d"

    goto :goto_0

    :cond_0
    const-string p1, "%d"

    .line 1950
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1951
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowShowingMonth:Ljava/lang/String;

    .line 1952
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

    .line 1953
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

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestMonthRecordListAndAddress(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showDateDialog$22()V
    .locals 1

    const-string/jumbo v0, "\u6e29\u99a8\u63d0\u793a\uff1a\u7ea2\u70b9\u4ec5\u4ee3\u8868\u5957\u9910\u671f\u9650\u8303\u56f4\uff0c\u4e0d\u4e00\u5b9a\u6709\u5f55\u50cf\u6587\u4ef6\uff01"

    .line 1993
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->showNoteHintPopup(Ljava/lang/String;)V

    return-void
.end method

.method private loadData()V
    .locals 7

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBucketIsNewLogic\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 913
    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNum:I

    const-string v0, "deviceYunVideoFilesize--start"

    .line 915
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTempAlarmVideoInfo:0   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getCloudInfo2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTempAlarmVideoInfo:1   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getVideoYunAddressFlag2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getVideoYunAddressFlag2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MyWebSocketClient getVideoYunAddressFlag2 = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 920
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestCloudOpenState(Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "downVideoFileListlog:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 922
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    const-string v5, ""

    iget-boolean v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static/range {v1 .. v6}, Lcom/dgiot/speedmonitoring/http/FileDownUtil;->findVideoFileList(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/util/List;

    .line 931
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 932
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;[Ljava/util/List;)V

    .line 959
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$1;->start()V

    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;
    .locals 3

    .line 124
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;-><init>()V

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "productSn"

    .line 126
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "alarmTime"

    .line 127
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isInternal"

    .line 128
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "needPlay"

    .line 129
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private parseTime(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string v0, ":"

    const-string v1, ""

    .line 2673
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2675
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 2676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method

.method private requestCloudOpenState(Ljava/lang/String;)V
    .locals 2

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveCloudInfollll------------------------------------>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 965
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$2;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestCloudInfo2(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private requestMonthRecordListAndAddress(Ljava/lang/String;)V
    .locals 2

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoOnDemandParam requestMonthVideoListMap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestMonthVideoListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private requestRecordListAndAddress(Ljava/lang/String;Z)V
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start get showLoadDialogTouch1====== "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  selectDateV = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 888
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    .line 889
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    .line 894
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketPathSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 895
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getBucketIsNewLogic:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "     "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 897
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 898
    new-instance p1, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;-><init>()V

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;->getOOSBucketNameInfo(Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda22;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->loadData()V

    :goto_0
    return-void
.end method

.method private selectIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 2241
    :goto_0
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2242
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private selectNewIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 2252
    :goto_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mNewVideoKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2253
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mNewVideoKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private setNewDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fragmentNewInstance_onCreate:set alarmTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, " "

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 635
    new-instance v4, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v4}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v5, 0x4

    .line 636
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 637
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v4, 0x6

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 638
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/16 v6, 0x8

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

.method private showAdHintRechargeView()V
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hasCloseAdHintRecharge:Z

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->rlAdHintRecharge:Landroid/widget/FrameLayout;

    const/4 v1, 0x0


    :cond_0
    return-void
.end method

.method private showDateDialog(J)V
    .locals 3

    .line 1937
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flYunCardState:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "showDateDialogLog:no service"

    .line 1938
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->onTouchRecordDelay()V

    .line 1943
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    if-nez v0, :cond_1

    .line 1944
    new-instance v0, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    invoke-direct {v0}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;-><init>()V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->builder:Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setSelectMillisecond(J)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->msgDateMap:Ljava/util/Map;

    .line 1947
    invoke-virtual {p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setMsgDates(Ljava/util/Map;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda10;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    .line 1949
    invoke-virtual {p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setOnMonthChangeListener(Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$OnMonthChangeListener;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$5;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$5;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    .line 1955
    invoke-virtual {p1, p2}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->setListener(Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$CalendarDialogOnClickListener;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;

    move-result-object p1

    .line 1991
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "CalendarDialog"

    invoke-virtual {p1, p2, v0}, Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/iot/demo/ipcview/widget/calendar/CalendarDialog;

    .line 1993
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda12;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showLoadProgress()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flTimeLoad:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flYunCardState:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showNoteHintPopup(Ljava/lang/String;)V
    .locals 6

    .line 2008
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hintPopupViews:[Lcom/lxj/xpopup/core/BasePopupView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MyWebSocketClient warn return"

    .line 2009
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 2013
    :cond_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDateSelectFlagHintSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2014
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hintPopupViews:[Lcom/lxj/xpopup/core/BasePopupView;

    new-instance v2, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2015
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/pop/BottomHintPopup;

    .line 2017
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$6;

    invoke-direct {v5, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$6;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/dgiot/speedmonitoring/ui/pop/BottomHintPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/BottomHintPopup$DialogClickListener;)V

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2030
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method private updateAdMenuView()V
    .locals 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAdMenuView log1 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunIsInternal(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunIsInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideAdMenu()V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->showCardHint()V

    goto :goto_1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_5

    .line 293
    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showAdMenu()V

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->rlAdHintRecharge:Landroid/widget/FrameLayout;

    const/16 v1, 0x8


    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAdMenuView log1 state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getCloudInfoIsExpiration(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoType(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getCloudInfoIsExpiration(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_5

    .line 303
    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideAdMenu()V

    goto :goto_1

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_5

    .line 308
    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showAdMenu()V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateDateView(Z)V
    .locals 6

    .line 1076
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1077
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
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1078
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    if-ge v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

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

    .line 1082
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

    .line 1083
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    sget p1, Lcom/dgiot/speedmonitoring/R$string;->messageList_select_date_title:I

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

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

    .line 1083
    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_3
    return-void
.end method

.method private updateTimerDataByMsgType()V
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance v0, Lcom/dgiot/speedmonitoring/util/DataFilterManager;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/util/DataFilterManager;-><init>()V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTimerDataByMsgType_1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeAll:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/util/DataFilterManager;->initOriginalData(Ljava/lang/String;)Z

    .line 355
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->ivTypeAll:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getHasAIAlam:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v5}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectType()Ljava/util/Set;

    move-result-object v1

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateTimerDataByMsgType_1_excluded:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 360
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 361
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/util/DataFilterManager;->filterBySelectedTypes(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimerDataByMsgType_1_end:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->cleanAllCanvas()V

    goto/16 :goto_1

    :cond_1
    const-string v1, "startDealLoadYunFileList1"

    .line 367
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "startDealLoadYunFileList2"

    .line 373
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 378
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "startDealLoadYunFileList3"

    .line 379
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->nowFilePathList:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getHasAIAlam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 395
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectType2()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 398
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    const-string v4, "0"

    .line 400
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateTimerDataByMsgType_2_excluded:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/util/DataFilterManager;->filterByExcludedTypes(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimerDataByMsgType_2_end:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 406
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->cleanAllCanvas()V

    goto :goto_1

    :cond_6
    const-string v1, "startDealLoadYunFileList4"

    .line 410
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized dealVideoFileEndTimeMap()V
    .locals 9

    const-string v0, "secondToNextFilePosition:ex:"

    monitor-enter p0

    .line 2366
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2369
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v0

    .line 2370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2373
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

    .line 2374
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlaySecond(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 2376
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getPlaySecond(Ljava/lang/String;I)I

    move-result v6

    .line 2377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secondToNextFilePosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2378
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2381
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

    .line 2382
    iput v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lastFileSecondLength:I

    .line 2383
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

    iget v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lastFileSecondLength:I

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

    :catch_0
    move-exception v0

    .line 2388
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondToNextFilePosition:ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2390
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteRecursive(Ljava/io/File;)V
    .locals 4

    .line 1104
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1108
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public downNextYunFile()V
    .locals 12

    const-string v0, "_"

    const-string/jumbo v1, "updatePlaybackRemind: slideStartIndex ->"

    .line 2400
    :try_start_0
    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    if-nez v2, :cond_0

    return-void

    .line 2403
    :cond_0
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "/"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 2404
    :try_start_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    return-void

    .line 2409
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2410
    invoke-direct {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectNewIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    add-int/2addr v1, v5

    .line 2411
    invoke-direct {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFileNameList(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "downPathListSet8"

    .line 2412
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2413
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 2414
    iput v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 2416
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getVideoYunAddressFlag2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2418
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getFilePathName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v6, v4

    .line 2419
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2421
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2422
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    goto :goto_1

    .line 2425
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2428
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2429
    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getIsStorageServer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2430
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2433
    :cond_3
    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newBucketDownFileNameMap:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    const-string v8, "FileDownUtil.downVideoFile:2"

    .line 2435
    invoke-static {v8}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    const/4 v11, 0x3

    invoke-static {v7, v8, v11, v9, v10}, Lcom/dgiot/speedmonitoring/http/FileDownUtil;->downVideoFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2442
    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2444
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "downPathListSet9"

    .line 2447
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2448
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFilePathList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 2450
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    .line 2451
    iput v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 2452
    :goto_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 2453
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downPathList fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2455
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    .line 2457
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 2458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downPathList startDown->:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2459
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    .line 2460
    invoke-static {}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->getInstance()Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;

    move-result-object v0

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->downVideoFile(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    :cond_5
    return-void
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

    .line 780
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

    .line 782
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->msgDateMap:Ljava/util/Map;

    const-string v7, ""

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSchemeCalendar(IIIILjava/lang/String;)Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, ""

    move-object v2, p0

    .line 784
    invoke-direct/range {v2 .. v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSchemeCalendar(IIIILjava/lang/String;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 783
    invoke-interface {v1, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->msgDateMap:Ljava/util/Map;

    return-object p1
.end method

.method public getChangeVideoOnRecfastParam(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    const-string v0, "_"

    const-string v1, "#"

    const-string v2, "getVideoOnRecfastParam:fileInfo="

    .line 2157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVideoOnRecfastParam:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "selectDate = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2159
    :try_start_0
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v5}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadDialogTouch()V

    .line 2161
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v5}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2162
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectNewIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    .line 2163
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFileNameList(I)Ljava/util/List;

    move-result-object p1

    .line 2164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    const-string v1, "downPathListSet6"

    .line 2168
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2169
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 2170
    iput v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 2171
    iput p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    .line 2173
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {p2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getVideoYunAddressFlag2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2175
    invoke-direct {p0, p2, p3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getFilePathName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move p3, v3

    .line 2176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_4

    .line 2178
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    goto :goto_1

    .line 2182
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2185
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2186
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v4}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getIsStorageServer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2187
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2190
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyWebSocketClient videoKeyInfoUrlLog:path1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isSlide = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2192
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newBucketDownFileNameMap:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    iput-boolean p4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    const-string v4, "FileDownUtil.downVideoFile:1"

    .line 2194
    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    const/4 v7, 0x3

    invoke-static {v2, v4, v7, v5, v6}, Lcom/dgiot/speedmonitoring/http/FileDownUtil;->downVideoFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 2200
    :cond_2
    sget-object p3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2201
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "          fileInfo:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const-string p1, "requestRecordListAndAddress_start_5"

    .line 2203
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2204
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 2208
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    const-string p1, "downPathListSet7"

    .line 2209
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2210
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFilePathList(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 2212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    .line 2213
    iput v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 2214
    iput p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    move p1, v3

    .line 2215
    :goto_2
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 2216
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2217
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downPathList fileName:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2218
    sget-object p3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2220
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    aget-object p3, p3, v0

    .line 2221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downPathList startDown->:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2222
    iput-boolean p4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    .line 2223
    invoke-static {}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->getInstance()Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;

    move-result-object p2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v2}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->downVideoFile(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catch_0
    const-string p1, "setVideoOperateState=8"

    .line 2231
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2232
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {p1, v3}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->setVideoOperateState(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method public getTimeScrollView()Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;
    .locals 1

    .line 2360
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    return-object v0
.end method

.method public getUpSlideTime()J
    .locals 2

    .line 2040
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upSlideTime:J

    return-wide v0
.end method

.method public getVideoOnDemandAddress(IILjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "/"

    const-string v5, "     "

    const-string v6, "startIndex:address="

    const-string v7, "downPathList 1:"

    const-string v8, "downPathList 2:"

    const-string v9, "startIndex:"

    const-string v10, "downPathList1 1:"

    const-string v11, "old_mVideoKeyList="

    const-string v12, "setVideoCanOperate=fasle->5 jsonArrayFileList  "

    const-string v13, "YunFragmentLog: canInitDownFile = "

    const/4 v14, 0x0

    .line 1373
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v13, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "    alarmIndex="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1374
    iput-boolean v14, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isSlideView:Z

    const/4 v13, -0x1

    const/4 v15, 0x1

    if-ne v0, v13, :cond_0

    .line 1376
    iget-object v14, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1377
    :cond_0
    iput-boolean v15, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    .line 1383
    :cond_1
    iget-boolean v14, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    if-nez v14, :cond_3

    .line 1384
    iput-boolean v15, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    .line 1385
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_2

    .line 1386
    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    :cond_2
    return-void

    .line 1391
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->jsonArrayFileList:Lorg/json/JSONArray;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "       "

    const-string v15, "#"

    const-string v12, "_"

    const-string v13, ""

    move-object/from16 v16, v8

    const-string v8, "getVideoOnDemandAddressLog:fileNameList.size()="

    move-object/from16 v17, v7

    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    .line 1394
    :try_start_1
    iget-object v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v6}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1395
    iput v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    .line 1396
    invoke-direct/range {p0 .. p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFileNameList(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "downPathListSet1"

    .line 1397
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1398
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 1399
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    const/4 v2, 0x0

    .line 1400
    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1401
    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getVideoYunAddressFlag2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1403
    invoke-direct {v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getFilePathName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1405
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 1407
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1408
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    goto :goto_1

    .line 1411
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1413
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1414
    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getIsStorageServer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1415
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1418
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MyWebSocketClient videoKeyInfoUrlLog:path6 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "      downPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1420
    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newBucketDownFileNameMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FileDownUtil.downVideoFile:3"

    .line 1421
    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    const/4 v10, 0x3

    invoke-static {v6, v7, v10, v8, v9}, Lcom/dgiot/speedmonitoring/http/FileDownUtil;->downVideoFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v3, "downPathListSet2"

    .line 1427
    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1428
    invoke-direct/range {p0 .. p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFilePathList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1430
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    const/4 v3, 0x0

    .line 1431
    iput v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1432
    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    const/4 v0, 0x0

    .line 1433
    :goto_2
    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 1434
    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downPathList1 fileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1436
    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1438
    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 1439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downPathList1 startDown->:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->getInstance()Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;

    move-result-object v2

    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5, v4}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->downVideoFile(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1446
    :cond_7
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketIsNewLogic(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "-"

    if-eqz v0, :cond_b

    .line 1447
    :try_start_2
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNewYunTodayPlayPos()I

    move-result v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 1448
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1449
    invoke-direct {v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFileNameList(I)Ljava/util/List;

    move-result-object v0

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v2, "downPathListSet3"

    .line 1452
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1453
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 1454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    const/4 v2, 0x0

    .line 1455
    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    .line 1456
    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getVideoYunAddressFlag2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1457
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v9}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getBucketPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1459
    invoke-direct {v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getFilePathName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1461
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 1463
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1464
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    goto :goto_5

    .line 1467
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1469
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1470
    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getIsStorageServer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1471
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1473
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MyWebSocketClient videoKeyInfoUrlLog:path5 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1474
    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newBucketDownFileNameMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FileDownUtil.downVideoFile:4"

    .line 1475
    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    const/4 v10, 0x3

    invoke-static {v6, v7, v10, v8, v9}, Lcom/dgiot/speedmonitoring/http/FileDownUtil;->downVideoFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 1481
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "      selectDate = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1482
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_d

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_7

    :cond_c
    const-string v0, "downPathListSet5"

    .line 1496
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1497
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-direct {v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFilePathList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1499
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    const/4 v3, 0x0

    .line 1500
    iput v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    const/4 v0, 0x0

    .line 1501
    :goto_6
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 1502
    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downPathList fileName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1504
    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1506
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    .line 1507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downPathList startDown->:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1508
    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    .line 1509
    invoke-static {}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->getInstance()Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;

    move-result-object v3

    iget-object v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6, v5}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->downVideoFile(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    const-string v0, "downPathListSet4"

    .line 1483
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1484
    invoke-direct {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getNeedDownFilePathList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1486
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->needDownFileNum:I

    const/4 v2, 0x0

    .line 1487
    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNumFlag:I

    const/4 v2, 0x0

    .line 1488
    :goto_8
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 1489
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoNameMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downPathList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1490
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "videoKeyInfoUrlLog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->getInstance()Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;

    move-result-object v3

    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v0, v5, v4}, Lcom/dgiot/speedmonitoring/http/OOSVideoDownManager;->downVideoFile(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_0
    move-exception v0

    .line 1519
    iget-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start get showLoadDialogTouch1====== dismissLoadDialog7 ex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "setVideoCanOperate=fasle->5"

    .line 1521
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "setVideoOperateState=5"

    .line 1523
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1524
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->setVideoOperateState(Z)V

    :cond_e
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    move-result-object v0

    return-object v0
.end method

.method public initFileDownList()V
    .locals 1

    .line 2529
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$7;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$7;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    .line 2583
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$7;->start()V

    return-void
.end method

.method public initRecordControl()V
    .locals 4

    .line 2047
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda21;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setOnSlideFileListener(Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$SlideFileListener;)V

    const-string v0, "initTimeScrollViewListener: start"

    .line 2052
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda23;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setOnSelectFileListener(Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$SelectFileListener;)V

    .line 2126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2127
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 2128
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 2129
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2131
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda24;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;J)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2144
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDateFlag2:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda25;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;J)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initializeFragment\uff1a2 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitStateLayout:Z

    .line 152
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initCalendarMsgDates()V

    .line 154
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->flOpenCloudStorage:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda30;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initRecordControl()V

    .line 158
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initAdMenuClick()V

    .line 160
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initAdHintRechargeClick()V

    return-void
.end method

.method public isInitView()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView:Z

    return v0
.end method

.method public loadLayoutView()V
    .locals 8

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadLayoutViewYun:start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 819
    new-instance v4, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v4}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v5, 0x4

    .line 820
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 821
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v4, 0x6

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 822
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/16 v6, 0x8

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 823
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "videoRecord videoListData is null"

    .line 833
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 834
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->hideLoadProgress()V

    goto :goto_0

    .line 837
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestRecordListAndAddress:Time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "requestRecordListAndAddress_start_2"

    .line 839
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    .line 843
    :goto_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateAdMenuView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 578
    invoke-super {p0, p1}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getyunFragmentState:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "productSn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    .line 583
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setAlarmTime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "alarmTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isInternal"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    .line 588
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "needPlay"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isNeedPlay:Z

    .line 591
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getSelectTimeList:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 593
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.dgiot.speedmonitoring.select.video.finish"

    .line 594
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.dgiot.speedmonitoring.deal.warn.device"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.dgiot.speedmonitoring.down.video.finish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.dgiot.speedmonitoring.down.video.file.list.finish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.dgiot.speedmonitoring.down.video.file.list.finish.fail"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 559
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onDestroy()V

    .line 560
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z

    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->fileInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 566
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 547
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onPause()V

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    const-string v1, "recordYunFrag:onPause"

    .line 549
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 550
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z

    if-eqz v1, :cond_0

    .line 551
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z

    const-string v0, "ACTION_Receiver:unregisterReceiver"

    .line 552
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->fileInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 502
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onResume()V

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView:Z

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recordYunFrag1:onResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v1, "ACTION_Receiver:registerReceiver"

    .line 505
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->fileInfoReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isCanUnregisterReceiver:Z

    .line 514
    :goto_0
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    .line 515
    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitStateLayout:Z

    if-nez v2, :cond_0

    .line 516
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitStateLayout:Z

    .line 517
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initStateLayout()V

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->updateAdMenuView()V

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealLoadYunFileListLog:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isDealLoadYunFileListMap:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->mTempYunFileListMap:Ljava/util/HashMap;

    iget-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isDealLoadYunFileListMap:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealLoadYunFileListLog:start restart load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 526
    sget-object v2, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->mTempYunFileListMap:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isDealLoadYunFileListMap:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v1, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->mTempYunFileListMap:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startDealLoadYunFileList5"

    .line 531
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealLoadYunFileList(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    if-eqz v0, :cond_2

    const-string v0, "SDCard_showAdMenu 4"

    .line 537
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 538
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showCardHint(I)V

    :cond_2
    return-void
.end method

.method public playFileControllerProgress(DLcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 21

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const-string v0, ":"

    const-string v4, "/"

    const-string v5, "playbackProgressLL: ------------------------------"

    const-string v6, "playbackProgressWER:"

    const-string v7, "playFileControllerProgress_update "

    const-string v8, "playFileControllerProgressFlag:"

    .line 2292
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, p3

    iget-object v9, v9, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->yunPlayType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2293
    iget-wide v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdaterSize:J

    long-to-double v8, v8

    cmpl-double v8, v2, v8

    if-nez v8, :cond_0

    const-wide/16 v8, -0x1

    .line 2294
    iput-wide v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdaterSize:J

    .line 2296
    :cond_0
    iget-wide v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdaterSize:J

    long-to-double v8, v8

    sub-double v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    iget-object v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->progressIndicator:Landroid/view/View;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    double-to-int v8, v2

    int-to-long v8, v8

    .line 2297
    iput-wide v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdaterSize:J

    .line 2298
    iget-object v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v9, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda26;

    invoke-direct {v9, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda26;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    double-to-long v2, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    .line 2305
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dealVideoFileEndTimeMap()V

    .line 2306
    iget-object v10, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->secondToNextFilePosition:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    div-long v12, v2, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 2308
    div-long v11, v2, v8

    const-wide/16 v13, 0xe10

    div-long/2addr v11, v13

    .line 2309
    div-long v15, v2, v8

    rem-long/2addr v15, v13

    const-wide/16 v17, 0x3c

    div-long v13, v15, v17

    .line 2310
    div-long v15, v2, v8

    const-wide/16 v19, 0xe10

    rem-long v15, v15, v19

    rem-long v8, v15, v17

    .line 2312
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v15, v5

    move-object/from16 v16, v6

    iget-wide v5, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdateTime:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "       /"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v17, v8

    const-wide/16 v5, 0x3e8

    div-long v7, v2, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v5, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz v10, :cond_2

    .line 2314
    iget-object v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 2315
    new-instance v5, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda27;

    invoke-direct {v5, v1, v10}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda27;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;Ljava/lang/Integer;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2327
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2328
    iget-wide v6, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdateTime:J

    cmp-long v4, v2, v6

    if-eqz v4, :cond_4

    .line 2329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdateTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ===================       lastFileSecondLength="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lastFileSecondLength:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2330
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda28;

    invoke-direct {v4, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda28;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;J)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2336
    iput-wide v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upUpdateTime:J

    .line 2338
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v4, v15

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lastFileSecondLength:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    .line 2339
    div-long v4, v2, v4

    iget v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->lastFileSecondLength:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    goto :goto_0

    .line 2342
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda29;

    invoke-direct {v4, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda29;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;J)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2351
    :goto_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->checkLoginState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateScrollPositionEx:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public playFileControllerRemind(I)V
    .locals 5

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playFileControllerRemind:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updatePlaybackRemind:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2272
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->slideStartIndex:I

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mVideoKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 2276
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    .line 2277
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    if-nez v0, :cond_2

    const/16 v0, 0x32

    if-gt p1, v0, :cond_2

    .line 2278
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    const-string/jumbo p1, "updatePlaybackRemind:downNextYunFile"

    .line 2279
    invoke-static {p1}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->downNextYunFile()V

    :cond_2
    :goto_1
    return-void
.end method

.method public playRecordVideoByAlarmTime(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ":"

    const-string v4, ""

    const-string v5, " "

    const-string v6, "/"

    const-string/jumbo v0, "yungetVideoDateList1:"

    const-string v7, "playRecordVideoByAlarmTime_timeinfo:"

    .line 650
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    .line 654
    :cond_0
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const-string v10, "-"

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 655
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 656
    iget-object v7, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x1

    if-nez v7, :cond_1

    .line 657
    iput-object v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 658
    invoke-direct/range {p0 .. p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setNewDate(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    iput-boolean v10, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    .line 661
    iput-object v8, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    .line 662
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadDialogTouch()V

    const-string v0, "requestRecordListAndAddress_start_1"

    .line 663
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 664
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-direct {v1, v0, v9}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 667
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v7

    check-cast v7, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v7, v7, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v7}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v7

    .line 672
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    move v11, v9

    move v13, v11

    const/4 v12, -0x1

    .line 673
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "yungetVideoDateList2:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 676
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v14, "_"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 677
    aget-object v14, v0, v9

    const/4 v15, 0x2

    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit16 v14, v14, 0xe10

    aget-object v8, v0, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v10, 0x4

    :try_start_2
    invoke-virtual {v8, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v14, v8

    aget-object v8, v0, v9

    const/4 v9, 0x6

    .line 678
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    .line 680
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v16, 0x1

    :try_start_3
    aget-object v8, v8, v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 681
    invoke-virtual {v8, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0xe10

    invoke-virtual {v8, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x3c

    add-int/2addr v9, v15

    const/4 v15, 0x6

    .line 682
    invoke-virtual {v8, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v9, v8

    .line 683
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alarmTimePositionSecondLog->"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "     "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "    "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v10, 0x1

    :try_start_5
    aget-object v15, v0, v10

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-lt v9, v14, :cond_2

    .line 684
    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    add-int/2addr v0, v14

    if-gt v9, v0, :cond_2

    .line 686
    :try_start_6
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sub-int v13, v9, v14

    .line 691
    invoke-direct/range {p0 .. p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setNewDate(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "setAlarmTime=8 "

    .line 694
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 695
    iput-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move v12, v11

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v10, v16

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v10, 0x1

    goto :goto_1

    :catch_3
    move-exception v0

    .line 700
    :goto_1
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarmTimePositionSecondLog->e "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    move v11, v12

    .line 707
    :goto_2
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadProgressView()V

    .line 708
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadDialog()V

    const/4 v0, 0x3

    if-le v13, v0, :cond_4

    add-int/lit8 v9, v13, -0x3

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 711
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changgeVideoOnRecfastyun start slide "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v11, v2, :cond_5

    const-string v0, "requestGetVideoOnDemandAddress1"

    .line 715
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v11, v9, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getVideoOnDemandAddress(IILjava/lang/String;)V

    goto :goto_4

    .line 719
    :cond_5
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 720
    iget-object v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    const-string v0, "record_video_file_hint_no_record1"

    .line 721
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->record_video_file_hint_no_record:I

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :goto_4
    return-void
.end method

.method public reOpenRecordVideo(Z)V
    .locals 1

    .line 848
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "reOpenRecordVideo return "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isResumed:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 852
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reOpenVideo()V

    const-string/jumbo p1, "videoRecord videoListData is null"

    .line 854
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "requestRecordListAndAddress_start_3"

    .line 858
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public reOpenVideo()V
    .locals 10

    const-string v0, "#"

    const-string v1, "setOnSelectFileListener time2 = "

    const-string v2, "setOnSelectFileListener value = "

    const-string v3, "dataInfo:"

    .line 2471
    :try_start_0
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v4}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->onTouchRecordDelay()V

    .line 2473
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v5}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getScrollLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getNowSelectVideoInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 2474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoListData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">>>>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2475
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "requestRecordListAndAddress_start_6"

    .line 2476
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2477
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requestRecordListAndAddress(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2479
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v6, 0x2

    .line 2480
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0xe10

    const/4 v8, 0x4

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v7, v9

    const/4 v9, 0x6

    .line 2481
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    .line 2483
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2484
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2486
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dragSecond:I

    sub-int/2addr v0, v7

    .line 2489
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reopenVideo:Z

    .line 2492
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->showLoadProgressView()V

    .line 2501
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->changeFileLoca:I

    .line 2502
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getSelectDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getChangeVideoOnRecfastParam(Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2522
    :catch_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->dismissLoadDialog()V

    .line 2523
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;->hideProgress()V

    :goto_0
    return-void
.end method

.method public setAlarmTime(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mNewDate:value = "

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAlarmTime=8 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 619
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadLayoutViewYun:setTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->alarmTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 622
    :try_start_0
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setNewDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 623
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    .line 624
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->finalSelectDate:Ljava/lang/String;

    const/4 p1, 0x1

    .line 625
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    .line 626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->selectDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setCanInitDownFile(Z)V
    .locals 0

    .line 1363
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->canInitDownFile:Z

    return-void
.end method

.method public setLoadingVideo(Z)V
    .locals 0

    .line 1611
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isLoadingVideo:Z

    return-void
.end method

.method public setProgressView(Landroid/view/View;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->progressIndicator:Landroid/view/View;

    return-void
.end method

.method public setVideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->videoRecordViewOperateListener:Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    return-void
.end method

.method public setVideoStatus(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->dgPlayerControllerStatus:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    .line 169
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    return-void
.end method

.method public setViewUnEnable(Z)V
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->timeScrollView:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->setViewUnEnable(Z)V

    return-void
.end method

.method public showCardHint()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunIsInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upAdHintTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 247
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->upAdHintTime:J

    .line 249
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->firstLoad:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->firstLoad:Z

    .line 251
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$$ExternalSyntheticLambda13;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->showAdHintRechargeView()V

    :goto_0
    return-void

    .line 240
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->rlAdHintRecharge:Landroid/widget/FrameLayout;

    const/16 v1, 0x8


    return-void
.end method

.method public showFileDownDialog(Ljava/lang/String;I)V
    .locals 2

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showFileDownDialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getTimeScrollView()Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView;->getVideoDateList()Ljava/util/List;

    move-result-object v0

    .line 2593
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2594
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u6ca1\u6709\u5f55\u50cf\u6587\u4ef6\u53ef\u4f9b\u4e0b\u8f7d\uff01"

    invoke-static {p1, p2}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mapNowHourFileList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2598
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->initFileDownList()V

    .line 2600
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showFileDownDialog:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2601
    new-instance v0, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;

    invoke-direct {v0}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;-><init>()V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->mapNowHourFileList:Ljava/util/Map;

    .line 2602
    invoke-virtual {v0, v1}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;->setDataList(Ljava/util/Map;)Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInternal:Z

    .line 2603
    invoke-virtual {v0, v1}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;->isInternal(Z)Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;

    move-result-object v0

    .line 2604
    invoke-virtual {v0, p1}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;->setDeviceSn(Ljava/lang/String;)Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;

    move-result-object p1

    .line 2605
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentVideoYun2Binding;->tvSelectDate2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;->setSelectDate(Ljava/lang/String;)Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$8;

    invoke-direct {v0, p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment$8;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;I)V

    .line 2606
    invoke-virtual {p1, v0}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;->setListener(Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$DownDialogOnClickListener;)Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;

    move-result-object p1

    .line 2666
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "DownDialog"

    invoke-virtual {p1, p2, v0}, Lcom/iot/demo/ipcview/widget/BottomFileDownDialog$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/iot/demo/ipcview/widget/BottomFileDownDialog;

    return-void
.end method
