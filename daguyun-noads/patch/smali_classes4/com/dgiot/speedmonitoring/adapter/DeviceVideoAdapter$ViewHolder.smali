.class Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeviceVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field adNativeView:Landroid/widget/FrameLayout;

.field bat0:Landroid/widget/ImageView;

.field batView:Landroid/widget/ImageView;

.field bt_goLiveVideo:Lcom/dgiot/baseframework/view/CustomClickEffectView;

.field cusiv_data_plan:Landroid/widget/ImageView;

.field cusiv_data_yun:Landroid/widget/ImageView;

.field cusiv_playback:Landroid/widget/ImageView;

.field cusiv_setting:Landroid/widget/ImageView;

.field cusiv_share:Landroid/widget/ImageView;

.field cv_cardFlow:Landroidx/cardview/widget/CardView;

.field flAd:Landroid/widget/FrameLayout;

.field flAdContent:Landroid/widget/FrameLayout;

.field fl_delete:Landroid/widget/FrameLayout;

.field fl_root:Landroid/widget/FrameLayout;

.field iv_categoryImage:Landroid/widget/ImageView;

.field iv_delete:Landroid/widget/ImageView;

.field iv_play:Landroid/widget/ImageView;

.field iv_rechargeYun:Landroid/widget/ImageView;

.field iv_state:Landroid/widget/ImageView;

.field ll_Mask:Landroid/view/View;

.field ll_cusiv_data_plan:Landroid/widget/FrameLayout;

.field ll_cusiv_playback:Landroid/widget/LinearLayout;

.field ll_cusiv_setting:Landroid/widget/LinearLayout;

.field ll_cusiv_share:Landroid/widget/LinearLayout;

.field ll_yun:Landroid/widget/FrameLayout;

.field tvOnLineStateDesc:Landroid/widget/TextView;

.field tv_data_plan:Landroid/widget/TextView;

.field tv_data_yun:Landroid/widget/TextView;

.field tv_flag:Landroid/widget/TextView;

.field tv_goFlow:Landroid/widget/TextView;

.field tv_name:Landroid/widget/TextView;

.field tv_netType:Landroid/widget/TextView;

.field tv_playback:Landroid/widget/TextView;

.field tv_rechargeState:Landroid/widget/TextView;

.field tv_rechargeState1:Landroid/widget/TextView;

.field tv_setting:Landroid/widget/TextView;

.field tv_share:Landroid/widget/TextView;

.field view_stateFlag:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 906
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 907
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_play:Landroid/widget/ImageView;

    .line 908
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->fl_ad:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->flAd:Landroid/widget/FrameLayout;

    .line 909
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->fl_adContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->flAdContent:Landroid/widget/FrameLayout;

    .line 910
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ad_NativeView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->adNativeView:Landroid/widget/FrameLayout;

    .line 911
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_netType:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_netType:Landroid/widget/TextView;

    .line 912
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->cv_cardFlow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cv_cardFlow:Landroidx/cardview/widget/CardView;

    .line 913
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->fl_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_root:Landroid/widget/FrameLayout;

    .line 914
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->fl_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->fl_delete:Landroid/widget/FrameLayout;

    .line 915
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 916
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_flag:Landroid/widget/TextView;

    .line 917
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->cusiv_share:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_share:Landroid/widget/ImageView;

    .line 918
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ll_cusiv_share:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_share:Landroid/widget/LinearLayout;

    .line 919
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_share:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_share:Landroid/widget/TextView;

    .line 920
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_bat0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->bat0:Landroid/widget/ImageView;

    .line 922
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_rechargeYun:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_rechargeYun:Landroid/widget/ImageView;

    .line 924
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_categoryImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_categoryImage:Landroid/widget/ImageView;

    .line 926
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->cusiv_data_plan:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_data_plan:Landroid/widget/ImageView;

    .line 927
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ll_cusiv_data_plan:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_data_plan:Landroid/widget/FrameLayout;

    .line 928
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_data_plan:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_data_plan:Landroid/widget/TextView;

    .line 929
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->cusiv_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_setting:Landroid/widget/ImageView;

    .line 930
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ll_cusiv_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_setting:Landroid/widget/LinearLayout;

    .line 931
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_setting:Landroid/widget/TextView;

    .line 932
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->cusiv_playback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_playback:Landroid/widget/ImageView;

    .line 933
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ll_cusiv_playback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_cusiv_playback:Landroid/widget/LinearLayout;

    .line 934
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_playback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_playback:Landroid/widget/TextView;

    .line 935
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->view_stateFlag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->view_stateFlag:Landroid/view/View;

    .line 936
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_state:Landroid/widget/ImageView;

    .line 937
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->iv_delete:Landroid/widget/ImageView;

    .line 938
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ll_Mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_Mask:Landroid/view/View;

    .line 939
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_onLineStateDesc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tvOnLineStateDesc:Landroid/widget/TextView;

    .line 941
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->bt_goLiveVideo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dgiot/baseframework/view/CustomClickEffectView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->bt_goLiveVideo:Lcom/dgiot/baseframework/view/CustomClickEffectView;

    .line 942
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_goFlow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_goFlow:Landroid/widget/TextView;

    .line 944
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->ll_yun:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->ll_yun:Landroid/widget/FrameLayout;

    .line 945
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->cusiv_data_yun:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->cusiv_data_yun:Landroid/widget/ImageView;

    .line 946
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_data_yun:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_data_yun:Landroid/widget/TextView;

    .line 948
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->batView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->batView:Landroid/widget/ImageView;

    .line 950
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_rechargeState:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState:Landroid/widget/TextView;

    .line 951
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_rechargeState1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewHolder;->tv_rechargeState1:Landroid/widget/TextView;

    return-void
.end method
