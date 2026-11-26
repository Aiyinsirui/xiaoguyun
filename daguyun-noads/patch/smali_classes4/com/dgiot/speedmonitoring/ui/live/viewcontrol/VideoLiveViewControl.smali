.class public Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;
.super Ljava/lang/Object;
.source "VideoLiveViewControl.java"


# instance fields
.field binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

.field public isHintOneFail:Z

.field private layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private titleHeight:I

.field videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;


# direct methods
.method static bridge synthetic -$$Nest$mgetOtherHeight(Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;)I
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->getOtherHeight()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 1162
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->titleHeight:I

    const/4 v0, 0x0

    .line 1739
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->isHintOneFail:Z

    .line 41
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    .line 42
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    return-void
.end method

.method public static getCurrentOrientation(Landroid/content/Context;)I
    .locals 0

    .line 1704
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method private getOtherHeight()I
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/common/util/utils/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private hideProgress()V
    .locals 2

    .line 1771
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1773
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "setVideoCanOperate progressIndicator hide end "

    .line 1774
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private oldLogic()V
    .locals 3

    const/4 v0, 0x0

    .line 1778
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoControlCanOperate(Z)V

    const-string v1, "setVideoCanOperate false startshow"

    .line 1779
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1780
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1781
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1783
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_2

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceStateVideo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isJumpFromPlayBack:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->isHintOneFail:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isJumpFromPlayBack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->isHintOneFail:Z

    if-nez v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1787
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint2:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1788
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint3:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1791
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1792
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint2:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1793
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint3:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1797
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1798
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint2:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1799
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceUnlineHint3:Landroid/widget/TextView;

    sget v1, Lcom/dgiot/speedmonitoring/R$string;->live_video_play_fail_hint2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1802
    :goto_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvOfflineTime:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/common/util/assist/DateUtil;->getYmdhmsS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvOfflineTime2:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/common/util/assist/DateUtil;->getYmdhmsS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1804
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1805
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1806
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1807
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "setVideoCanOperate false startshow end states = false"

    .line 1808
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private varargs setZ([Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 47
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 48
    aget-object v1, p1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setZ(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public PortraitChangeVideoViewWH()V
    .locals 8

    .line 379
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 412
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 382
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 383
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 385
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 391
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 392
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 394
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v4, :cond_2

    .line 401
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v7, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v4, v7}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 402
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v4}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 403
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 405
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 406
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 408
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 409
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 411
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_3

    .line 420
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v7, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v4, v7}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 421
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v4}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 422
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 424
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 425
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 427
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 428
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 430
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_4

    .line 439
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v7, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v4, v7}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 440
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v4}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 441
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 443
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 444
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 446
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 447
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 449
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    :cond_4
    :goto_0
    return-void
.end method

.method public changVideo1toBig()V
    .locals 6

    .line 769
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 772
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v3}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 773
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 776
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v3}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 778
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v4, :cond_1

    .line 779
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v5, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v4, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 780
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 781
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 784
    :cond_1
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v3, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v4, v5, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 785
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v3, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 786
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 795
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 797
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "ivBigClickSetVisibility:INVISIBLE 1"

    .line 798
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 803
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setRadius()V

    return-void
.end method

.method public changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V
    .locals 4

    .line 665
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 666
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoWidth:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    :goto_0
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoHeight:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallHeight:I

    .line 668
    :goto_1
    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 670
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 671
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 674
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 676
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 677
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 686
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "ivBigClickSetVisibility: VISIBLE 3"

    .line 687
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateSmallIcon()V

    .line 689
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 690
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setRadius()V

    goto/16 :goto_4

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_7

    .line 694
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v0, :cond_6

    .line 695
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 696
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 697
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 700
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 702
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 703
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 705
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "ivBigClickSetVisibility:VISIBLE 4"

    .line 706
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateSmallIcon()V

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "moveFragSmallsetIsDrug>>>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 710
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto/16 :goto_4

    .line 713
    :cond_6
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 714
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 715
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 716
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto/16 :goto_4

    .line 720
    :cond_7
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v0, :cond_8

    .line 722
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 723
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 724
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 727
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 729
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 730
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 732
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "ivBigClickSetVisibility: VISIBLE 5"

    .line 733
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 735
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_4

    .line 738
    :cond_8
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 739
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 740
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 743
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 745
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 746
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 748
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "ivBigClickSetVisibility:VISIBLE 6"

    .line 749
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 751
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    :goto_4
    return-void
.end method

.method public changVideo2toBig()V
    .locals 6

    .line 943
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 948
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v3}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 949
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 952
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v3}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 954
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v4, :cond_1

    .line 955
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v5, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v4, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 956
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 957
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 960
    :cond_1
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v3, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v4, v5, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 961
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v3, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 962
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 968
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 969
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 971
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "moveFragSmallsetIsDrug:1"

    .line 972
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(ZI)V

    .line 974
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setRadius()V

    return-void
.end method

.method public changVideo2toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V
    .locals 4

    .line 809
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 810
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoWidth:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    .line 813
    :goto_0
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoHeight:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallHeight:I

    .line 811
    :goto_1
    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 814
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 815
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 817
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 818
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 819
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 821
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateSmallIcon()V

    const-string p1, "moveFragSmallsetIsDrug:6"

    .line 823
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 824
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setRadius()V

    goto/16 :goto_4

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 832
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v0, :cond_6

    .line 833
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 834
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 835
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 838
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 840
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 841
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 843
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "moveFragSmallsetIsDrug:7"

    .line 845
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 847
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto/16 :goto_4

    .line 850
    :cond_6
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v0, v3

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 851
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v0, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 852
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    const-string p1, "moveFragSmallsetIsDrug:8"

    .line 853
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 854
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(ZI)V

    goto/16 :goto_4

    .line 858
    :cond_7
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v0, :cond_8

    .line 860
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 861
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 862
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 865
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 867
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 868
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 870
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "moveFragSmallsetIsDrug:9"

    .line 872
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_4

    .line 876
    :cond_8
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 877
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 878
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 881
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 883
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 884
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 886
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "moveFragSmallsetIsDrug:10"

    .line 888
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 889
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    :goto_4
    return-void
.end method

.method public changVideo2toSmallTo3(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V
    .locals 4

    .line 897
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-nez v0, :cond_0

    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 902
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 903
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 904
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 905
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    const-string p1, "moveFragSmallsetIsDrug:11"

    .line 906
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 907
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_0

    .line 910
    :cond_1
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 911
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    const-string p1, "moveFragSmallsetIsDrug:12"

    .line 912
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 913
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_0

    .line 918
    :cond_2
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v0, :cond_3

    .line 919
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 920
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    const-string p1, "moveFragSmallsetIsDrug:13"

    .line 921
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 922
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_0

    .line 925
    :cond_3
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 926
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    const-string p1, "moveFragSmallsetIsDrug:4"

    .line 927
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 928
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 935
    :goto_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 936
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 937
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method public changVideo3toBig()V
    .locals 5

    .line 1027
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_2

    .line 1029
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 1031
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1032
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 1036
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v2}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 1038
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v3, :cond_1

    .line 1039
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v3, v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 1040
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1041
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v4, v2, 0x10

    div-int/lit8 v4, v4, 0x9

    invoke-virtual {p0, v3, v4, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 1045
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v2, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1046
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1052
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1053
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1055
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick3:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    :cond_2
    return-void
.end method

.method public changVideo3toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V
    .locals 4

    .line 978
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_4

    .line 979
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 980
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 981
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 983
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 984
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 985
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_0

    .line 988
    :cond_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 990
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 991
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 992
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v2}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 996
    :goto_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 997
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 998
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 1000
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick3:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1003
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_1

    .line 1006
    :cond_2
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v0, :cond_3

    .line 1007
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 1009
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1010
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1011
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    goto :goto_1

    .line 1014
    :cond_3
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->threeSmallVideoHeight:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 1016
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1017
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1018
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public changeToLandscape()V
    .locals 7

    .line 557
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHandUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setProgressIndicatorPosition(Z)V

    .line 561
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iput-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    .line 562
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoMargin(I)V

    .line 564
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoIsAttachState()V

    const/4 v1, 0x2

    .line 565
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initSmallVideoPosition(I)V

    .line 566
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->landscapeChangeVideoViewWH()V

    .line 569
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v2}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoPanelHeight(I)V

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    .line 571
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitleFloat:Landroid/widget/RelativeLayout;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlLandBottomControlView:Landroid/widget/RelativeLayout;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llLandscapeRightControl:Landroid/widget/LinearLayout;

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsVisible([Landroid/view/View;)V

    const/4 v3, 0x7

    new-array v3, v3, [Landroid/view/View;

    .line 574
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->viewPadding:Landroid/view/View;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle:Landroid/widget/RelativeLayout;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle2:Landroid/widget/RelativeLayout;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortrait:Landroid/widget/ImageButton;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlBottomContent:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    aput-object v2, v3, v4

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ptzSmallView:Lcom/dgiot/speedmonitoring/ui/view/PTZSmallView;

    const/4 v4, 0x5

    aput-object v2, v3, v4

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvPlayerInfo:Landroid/widget/TextView;

    const/4 v4, 0x6

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    .line 576
    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setShowPtzCanSlideVideo(Z)V

    .line 579
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivPtzLand:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 580
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->delayHideLandControlView()V

    .line 582
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewZOrderOnTop()V

    .line 585
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v2, :cond_1

    const-string v2, "moveFragSmallsetIsDrug:2"

    .line 586
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 588
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v2, :cond_8

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "binding.moveFragSmall3.setIsDrug:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v4, v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v4, v6, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v4, v6, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v4, v6, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    move v4, v0

    :goto_3
    invoke-virtual {v2, v4}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v3, v4, :cond_6

    move v3, v5

    goto :goto_4

    :cond_6
    move v3, v0

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 597
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v1, v3, :cond_7

    move v0, v5

    :cond_7
    invoke-virtual {v2, v0}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 599
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortraitBottom:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 603
    :cond_8
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_full_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_full_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changgeCanScale()V

    .line 609
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoZoomState()V

    return-void
.end method

.method public changeToPortrait()V
    .locals 7

    .line 489
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHandUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 492
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setProgressIndicatorPosition(Z)V

    .line 493
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iput-boolean v0, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    .line 494
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelTopMargin:I

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoMargin(I)V

    .line 495
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initVideoIsAttachState()V

    .line 496
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initSmallVideoPosition(I)V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    .line 498
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsVisible([Landroid/view/View;)V

    .line 500
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoPanelHeight(I)V

    .line 501
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->PortraitChangeVideoViewWH()V

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/view/View;

    .line 504
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitleFloat:Landroid/widget/RelativeLayout;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlLandBottomControlView:Landroid/widget/RelativeLayout;

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llLandscapeRightControl:Landroid/widget/LinearLayout;

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ptzSmallView:Lcom/dgiot/speedmonitoring/ui/view/PTZSmallView;

    const/4 v6, 0x3

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    .line 505
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setShowPtzCanSlideVideo(Z)V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    .line 508
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->viewPadding:Landroid/view/View;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle:Landroid/widget/RelativeLayout;

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortrait:Landroid/widget/ImageButton;

    aput-object v5, v3, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlBottomContent:Landroid/widget/RelativeLayout;

    aput-object v1, v3, v6

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvPlayerInfo:Landroid/widget/TextView;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsVisible([Landroid/view/View;)V

    new-array v1, v0, [Landroid/view/View;

    .line 514
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle2:Landroid/widget/RelativeLayout;

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsInVisible([Landroid/view/View;)V

    .line 518
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivPtzLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 520
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewZOrderOnTop()V

    .line 522
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v1, :cond_4

    .line 523
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initUpDownVideoViewPosition()V

    const-string v1, "change changeToPortrait"

    .line 524
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "ivBigClickSetVisibility:VISIBLE 7"

    .line 527
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "ivBigClickSetVisibility:INVISIBLE 2"

    .line 530
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateSmallIcon()V

    .line 538
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v1, :cond_6

    .line 539
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v4}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 540
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v4}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 541
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v4}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 542
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isBadVideo:Z

    if-eqz v1, :cond_5

    new-array v0, v0, [Landroid/view/View;

    .line 543
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortrait:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsVisible([Landroid/view/View;)V

    .line 544
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortraitBottom:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    :cond_5
    new-array v0, v0, [Landroid/view/View;

    .line 547
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortrait:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortraitBottom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 551
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changgeCanScale()V

    .line 553
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoZoomState()V

    return-void
.end method

.method public changeVideoPanelHeight(I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 370
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public changeVideoViewWH(Landroid/widget/FrameLayout;II)V
    .locals 1

    .line 357
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 358
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 360
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public changeVideoViewZOrderOnTop()V
    .locals 6

    .line 635
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 638
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    if-eqz v0, :cond_0

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    goto :goto_0

    :cond_0
    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    :goto_0
    invoke-virtual {v3, v4}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 639
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v3, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 640
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v3, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 642
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    if-eqz v0, :cond_1

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    goto :goto_1

    :cond_1
    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    :goto_1
    invoke-virtual {v3, v4}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 643
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 644
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 647
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_b

    .line 648
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    :goto_2
    invoke-virtual {v0, v3}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 649
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v3, v5, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 650
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 652
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    :goto_5
    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 653
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v3, :cond_6

    move v2, v4

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 654
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v3, :cond_7

    move v2, v4

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 656
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v5, :cond_8

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    :goto_8
    invoke-virtual {v0, v2}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 657
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v5, :cond_9

    move v2, v4

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 658
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-eq v2, v3, :cond_a

    move v1, v4

    :cond_a
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    :cond_b
    return-void
.end method

.method public changgeCanScale()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanScale(Ljava/lang/Boolean;)V

    .line 481
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanScale(Ljava/lang/Boolean;)V

    .line 482
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanScale(Ljava/lang/Boolean;)V

    return-void
.end method

.method public clickChangeToBigSize()V
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v1, 0x1

    .line 1616
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "screenIsVerticalScreen >> small"

    .line 1617
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "is llDeviceOffline show "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->i(Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    .line 1620
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    .line 1621
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1622
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 1623
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v1

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    .line 1625
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v1

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    .line 1626
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v1

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ivSmallClick>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v2}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toBig()V

    .line 1631
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ivSmallClick  getZ>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->getZ()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public clickChangeToSmallSize()V
    .locals 5

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenIsVerticalScreen >> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1585
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "screenIsVerticalScreen >> small"

    .line 1591
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is llDeviceOffline show "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->i(Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1594
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v1

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    .line 1595
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v1

    iput v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    .line 1597
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toBig()V

    .line 1598
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1604
    :cond_3
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public controlOtherViewState(Z)V
    .locals 5

    .line 1689
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvPlayerInfo:Landroid/widget/TextView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1690
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvPlayerInfoLand:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1691
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivDbmState:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1692
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivDbmState2:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1694
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivDbmStateFloat:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ibLedLand:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivPtzLand:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1700
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivDefinitionLand:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne p1, v1, :cond_7

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public delayHideLandControlView()V
    .locals 4

    const-string v0, "delayHideLandControlView>>"

    .line 617
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitleFloat:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitleFloat:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayHideLandControlRunAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayHideLandControlRunAble:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getRecordState()Z
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public hideAllStateView()V
    .locals 2

    .line 1674
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1675
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1676
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1677
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1678
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1679
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1680
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1681
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1682
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public initRadius(FF)V
    .locals 0

    return-void
.end method

.method public initSmallVideoPosition(I)V
    .locals 7

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSmallVideoPosition initSmallY="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    const/4 v6, 0x1

    if-ne v1, v2, :cond_0

    move v4, v6

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1075
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v1, :cond_1

    .line 1076
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1077
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1079
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1080
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1083
    :cond_1
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v1, :cond_2

    .line 1084
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1085
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1087
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1088
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1091
    :cond_2
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v1, :cond_a

    .line 1092
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1093
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1095
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1096
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    goto/16 :goto_2

    .line 1100
    :cond_3
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v1, :cond_4

    .line 1101
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1102
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1104
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1105
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1108
    :cond_4
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v1, :cond_5

    .line 1109
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1110
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1112
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1113
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1116
    :cond_5
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne p1, v1, :cond_a

    .line 1117
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1118
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1120
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1121
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    goto/16 :goto_2

    .line 1128
    :cond_6
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_8

    .line 1129
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1130
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    :goto_0
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1131
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez p1, :cond_a

    .line 1132
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    goto :goto_2

    .line 1135
    :cond_8
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {p1, v3}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 1136
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    :goto_1
    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 1137
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez p1, :cond_a

    .line 1138
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initSmallY:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    :cond_a
    :goto_2
    return-void
.end method

.method public initUpDownVideoViewPosition()V
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    return-void
.end method

.method public initVideoIsAttachState()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsAttach(Z)V

    .line 631
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsAttach(Z)V

    return-void
.end method

.method public initVideoView()V
    .locals 10

    .line 57
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    const/4 v1, 0x0

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 57
    iput-boolean v1, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isInitMoveFrag:Z

    const-string v0, "startVideo log=initVideoView"

    .line 59
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlVideoPanelTemp:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 61
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlVideoPanelTemp:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Landroid/view/View;

    .line 64
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v6, v6, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlVideoPanel:Landroid/widget/RelativeLayout;

    aput-object v6, v5, v1

    invoke-direct {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setZ([Landroid/view/View;)V

    .line 66
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v6, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v7, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 68
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    const/4 v7, 0x2

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 68
    div-int/2addr v6, v7

    iput v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    .line 69
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    mul-int/lit8 v6, v6, 0x9

    int-to-float v6, v6

    const/high16 v9, 0x41800000    # 16.0f

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallHeight:I

    .line 71
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    div-int/2addr v6, v7

    iput v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoWidth:I

    .line 72
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    mul-int/lit8 v6, v6, 0x9

    int-to-float v6, v6

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoHeight:I

    .line 74
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v5, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    iput v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    .line 76
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    iput v6, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallHeight:I

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setSleepViewShow:initVideoView = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v6, v6, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v6, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v5, v6, :cond_0

    .line 82
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep03:Landroid/widget/TextView;

    sget v6, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint1:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep04:Landroid/widget/TextView;

    sget v6, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint1:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep03:Landroid/widget/TextView;

    sget v6, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint4:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep04:Landroid/widget/TextView;

    sget v6, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint4:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    :goto_0
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle2:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v6, v6, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallWidth:I

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v7, v7, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSmallHeight:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 100
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v5, v1}, Lcom/common/util/ui/MoveFrameLayout;->setIsDrug(Z)V

    .line 102
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v5, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {v1, v5}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 103
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v5, v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {v1, v5}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 106
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    .line 121
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setRadius()V

    .line 124
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initUpDownVideoViewPosition()V

    .line 137
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0}, Lcom/common/util/ui/MoveFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0}, Lcom/common/util/ui/MoveFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    :cond_3
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl$1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 219
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0}, Lcom/common/util/ui/MoveFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0}, Lcom/common/util/ui/MoveFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void
.end method

.method public initYunState(Ljava/lang/String;)V
    .locals 4

    const-string v0, "getYunInfoType:rawDataInfo= "

    const-string v1, "getYunInfoType:rawData= "

    .line 1833
    :try_start_0
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvRechargeState:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1834
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvRechargeState:Landroid/widget/TextView;

    const/4 v3, 0x0


    .line 1835
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getCloudInfo2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->tvYunState:Landroid/widget/TextView;


    .line 1839
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->tvYunState:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->getYunInfoDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1840
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->tvYunState:Landroid/widget/TextView;

    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->bg_shape_no_yun_info:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public landscapeChangeVideoViewWH()V
    .locals 9

    .line 257
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 259
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 307
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "landscapeChangeVideoViewWH>"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v8, v8, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "        "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 264
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 265
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v1, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v2, v5, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 269
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 270
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 274
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 276
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 277
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 279
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoWidth:I

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_5

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 286
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 287
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_1

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v1, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v2, v5, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 291
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 292
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 296
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 298
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 299
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 301
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoWidth:I

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallVideoHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_5

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v2, v5, :cond_5

    .line 308
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v2, :cond_4

    .line 309
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 310
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 311
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_2

    .line 314
    :cond_4
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v1, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v2, v5, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 315
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 316
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 320
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    goto/16 :goto_5

    .line 322
    :cond_5
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v2, v5, :cond_7

    .line 323
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v2, :cond_6

    .line 324
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 325
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 326
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_3

    .line 329
    :cond_6
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v1, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v2, v5, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 330
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 331
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 334
    :goto_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 335
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    goto :goto_5

    .line 337
    :cond_7
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v2, v5, :cond_9

    .line 338
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFullScreen:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v2, :cond_8

    .line 339
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 340
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 341
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v7}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    goto :goto_4

    .line 344
    :cond_8
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    mul-int/lit8 v5, v1, 0x10

    div-int/lit8 v5, v5, 0x9

    invoke-virtual {p0, v2, v5, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoViewWH(Landroid/widget/FrameLayout;II)V

    .line 345
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v1, v7}, Lcom/common/util/ui/MoveFrameLayout;->setY(F)V

    .line 346
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setX(F)V

    .line 349
    :goto_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 350
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v6}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method public setProgressIndicatorPosition(Z)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceWindowNum(Ljava/lang/String;)I

    move-result v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "videoLiveActivity_isThreeVideo->window:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isBadVideo:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->titleHeight:I

    int-to-float v3, v3

    .line 234
    invoke-static {v1, v3}, Lcom/common/util/utils/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 233
    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    goto :goto_3

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x6

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "videoLiveActivity_isThreeVideo:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "      "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    goto :goto_3

    .line 229
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->titleHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/common/util/utils/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    :cond_5
    :goto_3
    return-void
.end method

.method public setRadius()V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->radiusSize:F

    invoke-virtual {p0, v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initRadius(FF)V

    goto :goto_0

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->radiusSize:F

    invoke-virtual {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initRadius(FF)V

    :goto_0
    return-void
.end method

.method public setRecordMenuCanOperate(Z)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    :try_start_0
    new-array v4, v4, [Landroid/view/View;

    .line 1722
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibSpeed:Landroid/widget/ImageButton;

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibRecord:Landroid/widget/ImageButton;

    aput-object v1, v4, v0

    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewEnable([Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-array v4, v4, [Landroid/view/View;

    .line 1726
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibSpeed:Landroid/widget/ImageButton;

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibRecord:Landroid/widget/ImageButton;

    aput-object v1, v4, v0

    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewDisable([Landroid/view/View;)V

    .line 1730
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1732
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_start:I

    goto :goto_1

    .line 1733
    :cond_1
    sget p1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_pause:I

    .line 1732
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setShowPtzCanSlideVideo(Z)V
    .locals 2

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setShowPtzCanSlideVideo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setEnabledTouch(Z)V

    .line 1149
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setEnabledTouch(Z)V

    .line 1151
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setClickable(Z)V

    .line 1152
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setFocusable(Z)V

    .line 1153
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setEnabled(Z)V

    .line 1154
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setEnabled(Z)V

    .line 1156
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setFocusable(Z)V

    .line 1157
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setFocusable(Z)V

    .line 1158
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, p1}, Lcom/common/util/ui/MoveFrameLayout;->setEnabled(Z)V

    .line 1159
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setEnabled(Z)V

    return-void
.end method

.method public setSleepViewShow(Z)V
    .locals 5

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSleepViewShow:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1904
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1905
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v2, :cond_2

    .line 1906
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceSleep:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint1:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1907
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep03:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint1:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1908
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep033:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint1:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1909
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep04:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint1:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1913
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvDeviceSleep:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint4:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1914
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep03:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint4:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1915
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep033:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint4:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1916
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvSleep04:Landroid/widget/TextView;

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->live_video_sleep_hint4:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1920
    :goto_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1921
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1922
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_5

    .line 1925
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1926
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1929
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1930
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1933
    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_5

    .line 1934
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1938
    :cond_5
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoControlCanOperate(Z)V

    if-eqz p1, :cond_6

    .line 1940
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1941
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setVideoCanOperate(Z)V
    .locals 2

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVideoCanOperate value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1745
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoControlCanOperate(Z)V

    .line 1746
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1747
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1748
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->hideProgress()V

    goto :goto_0

    .line 1762
    :cond_1
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->oldLogic()V

    .line 1763
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->hideProgress()V

    .line 1768
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setRecordMenuCanOperate(Z)V

    return-void
.end method

.method public setVideoControlCanOperate(Z)V
    .locals 8

    .line 1820
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    if-eqz p1, :cond_1

    .line 1822
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    new-array v6, v6, [Landroid/view/View;

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v7, v7, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v7, v7, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    aput-object v7, v6, v5

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v5, v6, v4

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    aput-object v4, v6, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibDefinition:Landroid/widget/ImageButton;

    aput-object v3, v6, v2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    aput-object v1, v6, v0

    invoke-virtual {p1, v6}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewEnable([Landroid/view/View;)V

    goto :goto_0

    .line 1825
    :cond_1
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    new-array v6, v6, [Landroid/view/View;

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v7, v7, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v7, v7, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    aput-object v7, v6, v5

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v5, v6, v4

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    aput-object v4, v6, v3

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibDefinition:Landroid/widget/ImageButton;

    aput-object v3, v6, v2

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    aput-object v1, v6, v0

    invoke-virtual {p1, v6}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewDisable([Landroid/view/View;)V

    .line 1827
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateInitRecordState()V

    :goto_0
    return-void
.end method

.method public setVideoIsAttachState()V
    .locals 0

    return-void
.end method

.method public setVideoZToBottom(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1559
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1560
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1561
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1564
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1565
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1566
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1569
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    invoke-virtual {p1, v0}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1570
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1571
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoZToTop(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1541
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1542
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1543
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1546
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1547
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1548
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1551
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {p1, v1}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1552
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1553
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs setViewDisable([Landroid/view/View;)V
    .locals 5

    .line 1651
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    const v4, 0x3f333333    # 0.7f

    .line 1652
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1653
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1654
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1655
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setViewEnable([Landroid/view/View;)V
    .locals 5

    .line 1641
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1642
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x1

    .line 1643
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1644
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1645
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setViewMarginLayoutParamsTop(Landroid/view/View;I)V
    .locals 1

    .line 1176
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1177
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1178
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showControlMenu(Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V
    .locals 4

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showControlMenu:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->root:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1715
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->root:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1716
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->root:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showControlView()V
    .locals 3

    .line 1577
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 1578
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitleFloat:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlLandBottomControlView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llLandscapeRightControl:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsVisible([Landroid/view/View;)V

    const-string v0, "onBackPressed_click:showControlView 3 "

    .line 1579
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->delayHideLandControlView()V

    :cond_0
    return-void
.end method

.method public showLoadView()V
    .locals 3

    const-string v0, "VideoLiveViewControl_showLoadView:"

    .line 1198
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1204
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showProgressIndicator()V
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateInitRecordState()V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1817
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibRecord:Landroid/widget/ImageButton;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_video_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public updateSmallIcon()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_portrait:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_portrait:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSmallClick:Landroid/widget/ImageView;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_full_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivBigClick:Landroid/widget/ImageView;

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_full_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public updateVideoMargin(I)V
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlVideoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateVideoMargin->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelTopMargin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelTopMargin:I

    .line 1066
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1067
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlVideoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateVideoPositionHashMap()V
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSmallWindowState1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

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

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setVideoPositionHashMap(Ljava/util/HashMap;)V

    .line 468
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setVideoPositionHashMap(Ljava/util/HashMap;)V

    .line 470
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setVideoPositionHashMap(Ljava/util/HashMap;)V

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changgeCanScale()V

    .line 476
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoZoomState()V

    return-void
.end method

.method public updateVideoZoomState()V
    .locals 7

    .line 1979
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDeviceInfo(ZLjava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDeviceInfo(ZLjava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v1, v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDeviceInfo(ZLjava/lang/String;)V

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "updateVideoZoomState:set true"

    .line 1987
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    .line 1990
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    .line 1991
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_6

    .line 1992
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    goto/16 :goto_3

    .line 1995
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const-string v2, "/"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 1997
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1998
    :goto_0
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v4, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    .line 2000
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v4, v5, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    .line 2001
    :goto_1
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v5, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    .line 2003
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateVideoZoomState:set "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    .line 2006
    :goto_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    goto :goto_3

    .line 2009
    :cond_5
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2010
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2012
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v3, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    .line 2013
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v3, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZoomEnabled(Z)V

    .line 2015
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateVideoZoomState double:set "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public videoBigClick()V
    .locals 6

    .line 1455
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1459
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_1

    .line 1460
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    goto/16 :goto_0

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_2

    const-string v0, "moveFragClick return 1"

    .line 1464
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v2}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v2

    iput v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    .line 1469
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v2}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v2

    iput v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    .line 1471
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v2, :cond_4

    .line 1472
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toBig()V

    .line 1473
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_3

    .line 1474
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1475
    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1476
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1485
    :cond_3
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1486
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1487
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1498
    :cond_4
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toBig()V

    .line 1499
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_5

    .line 1500
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1501
    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1502
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1511
    :cond_5
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1512
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1513
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto :goto_0

    :cond_6
    const-string v0, "moveFragClick:moveFragBig"

    .line 1525
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1527
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    .line 1530
    :cond_7
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    if-nez v0, :cond_a

    :cond_9
    return-void

    .line 1533
    :cond_a
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->clickChangeToSmallSize()V

    .line 1536
    :goto_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoZoomState()V

    :cond_b
    :goto_1
    return-void
.end method

.method public videoSmall3Click()V
    .locals 6

    .line 1215
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "moveFragClick:moveFragSmall"

    .line 1219
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_1

    .line 1221
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    goto/16 :goto_0

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_2

    const-string v0, "moveFragClick return 3"

    .line 1225
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 1229
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1230
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_4

    .line 1231
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toBig()V

    .line 1236
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_3

    .line 1237
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1239
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1248
    :cond_3
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmallTo3(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1250
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1259
    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_b

    .line 1260
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toBig()V

    .line 1265
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_5

    .line 1266
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1267
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget v4, v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    invoke-virtual {v0, v4}, Lcom/common/util/ui/MoveFrameLayout;->setZ(F)V

    .line 1268
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderOnTop(Z)V

    .line 1269
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setZOrderMediaOverlay(Z)V

    .line 1271
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1280
    :cond_5
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmallTo3(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1282
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1293
    :cond_6
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v4}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v4

    iput v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    .line 1294
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v4}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v4

    iput v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    .line 1296
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_8

    .line 1297
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toBig()V

    .line 1300
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_7

    .line 1301
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1302
    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1304
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1313
    :cond_7
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmallTo3(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1314
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1315
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1324
    :cond_8
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_a

    .line 1325
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toBig()V

    .line 1327
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v4}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v4

    iput v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    .line 1328
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v4}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v4

    iput v4, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    .line 1333
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v4, :cond_9

    .line 1334
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1335
    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1336
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto :goto_0

    .line 1345
    :cond_9
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toSmallTo3(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1346
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1347
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto :goto_0

    .line 1357
    :cond_a
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    .line 1362
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoZoomState()V

    :cond_c
    :goto_1
    return-void
.end method

.method public videoSmallClick()V
    .locals 6

    .line 1366
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1371
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_1

    .line 1372
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    goto/16 :goto_0

    .line 1375
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initSmallVideoPositions:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_2

    const-string v0, "moveFragClick return 2"

    .line 1377
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v2}, Lcom/common/util/ui/MoveFrameLayout;->getX()F

    move-result v2

    iput v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallX:F

    .line 1382
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->binding:Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v2}, Lcom/common/util/ui/MoveFrameLayout;->getY()F

    move-result v2

    iput v2, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragSmallY:F

    .line 1384
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    .line 1385
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toBig()V

    .line 1386
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_3

    .line 1387
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1388
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1389
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1398
    :cond_3
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1399
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1400
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1411
    :cond_4
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo2toBig()V

    .line 1412
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    if-ne v0, v2, :cond_5

    .line 1413
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo1toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1414
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1415
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto/16 :goto_0

    .line 1424
    :cond_5
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changVideo3toSmall(Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;)V

    .line 1425
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoZToTop(I)V

    .line 1426
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->left:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->top:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;->right:Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoPositionHashMap()V

    goto :goto_0

    :cond_6
    const-string v0, "moveFragClick:moveFragSmall"

    .line 1440
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1442
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlView()V

    .line 1445
    :cond_7
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->videoLiveActivity:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;

    iget-boolean v0, v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    if-nez v0, :cond_a

    :cond_9
    return-void

    .line 1448
    :cond_a
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->clickChangeToBigSize()V

    .line 1451
    :goto_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->updateVideoZoomState()V

    :cond_b
    :goto_1
    return-void
.end method
