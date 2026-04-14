.class Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;
.super Landroid/database/ContentObserver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceRestrictionObserver"
.end annotation


# static fields
.field private static final MODE_MAX:I = 0x2

.field private static final MODE_MID:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final URI_MAX:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final URI_MID:Ljava/lang/String; = "low_power"

.field private static final URI_RESTRICTION:Ljava/lang/String; = "restricted_device_performance"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsMAXPerfRestriction:Z

.field private mIsMIDPerfRestriction:Z

.field private mIsPerformanceRestricted:Z

.field mPsmLimitCheckRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestricted(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckRestrictionSetting(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestrictionSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPowerSavingMode(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->getPowerSavingMode()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 1082
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1083
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1128
    new-instance p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;

    invoke-direct {p1, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    .line 1084
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mHandler:Landroid/os/Handler;

    .line 1085
    return-void
.end method

.method private checkRestricted(I)Z
    .registers 3
    .param p1, "mode"  # I

    .line 1169
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c

    .line 1177
    return v0

    .line 1175
    :pswitch_5  #0x2
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z

    return v0

    .line 1173
    :pswitch_8  #0x1
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z

    return v0

    .line 1171
    :pswitch_b  #0x0
    return v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_8  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method

.method private checkRestrictionSetting()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z

    return-void
.end method

.method private getPowerSavingMode()I
    .registers 6

    .line 1137
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1138
    .local v0, "midMode":I
    const/4 v1, 0x1

    if-eq v0, v2, :cond_14

    if-eqz v0, :cond_14

    .line 1139
    return v1

    .line 1142
    :cond_14
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_25

    .line 1143
    const/4 v1, 0x2

    return v1

    .line 1146
    :cond_25
    return v4
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 1115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1116
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 1120
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    if-nez v0, :cond_1a

    .line 1122
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 1124
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1126
    :goto_25
    return-void
.end method

.method public startObserving(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 1088
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1091
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1094
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1095
    const-string v1, "restricted_device_performance"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Landroid/os/Handler;)V

    .line 1094
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1108
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestrictionSetting()V

    .line 1109
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->getPowerSavingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestricted(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    .line 1110
    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 1111
    return-void
.end method
