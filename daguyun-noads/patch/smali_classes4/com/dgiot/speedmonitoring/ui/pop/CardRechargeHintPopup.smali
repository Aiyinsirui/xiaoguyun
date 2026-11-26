.class public Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;
.super Ljava/lang/Object;
.source "CardRechargeHintPopup.java"


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mProductSn:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Q6VqbE5NU8rIQIS-qwJlNvtfngY(Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->lambda$initDismissListener$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_bXV5mwQ8OaAITp-KjDJWulvKgU(Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mProductSn:Ljava/lang/String;

    const-string p1, "AdRechargePopup AndroidBridge start init"

    .line 56
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->initPopupWindow()V

    return-void
.end method

.method private initDismissListener()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dgiot/speedmonitoring/R$layout;->pop_bottom_sd_recharge_hint:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupView:Landroid/view/View;

    .line 66
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 69
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 71
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 74
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->initDismissListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupView:Landroid/view/View;

    sget v1, Lcom/dgiot/speedmonitoring/R$id;->tv_delete_adRecharge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initDismissListener$1()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->lighton()V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->dismiss()V

    .line 81
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->lighton()V

    return-void
.end method

.method private lightoff()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 121
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private lighton()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 129
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/pop/CardRechargeHintPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

