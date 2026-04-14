.class public Lcom/android/server/ssrm/DynamicLoadDetector;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final MONITORING_TEMP:I = 0x154

.field static final MSG_TYPE_LOAD_DETECTED:I = 0x2

.field static final MSG_TYPE_RESTART_LOAD_DETECT:I = 0x3

.field static final MSG_TYPE_START_MONITORING:I = 0x1

.field static final TAG:Ljava/lang/String;

.field static mSiopShift:Z

.field static sHandler:Landroid/os/Handler;


# instance fields
.field final APP_START_DELAY:I

.field MAX_SHIFT_TIME:J

.field final RESTART_MONITORING_DELAY:I

.field final SINGLE_BOOST_SIOP_SHIFT_TIMEOUT:I

.field final SIOP_SHIFT_TIMEOUT:I

.field final TYPE_CPU:I

.field final TYPE_GPU:I

.field final TYPE_NONE:I

.field fakeCount:I

.field mContext:Landroid/content/Context;

.field mForegroundPackageName:Ljava/lang/String;

.field mIsFirstShift:Z

.field mIsGpuSiopTableExist:Z

.field mIsPIDUsed:Z

.field mIsTempSatisfied:Z

.field mIsTimeout:Z

.field mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

.field mNativeMonitoringOn:Z

.field private mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

.field mShiftStartTime:J

.field mShiftTotalTime:J

.field mSiopShiftRunnable:Ljava/lang/Runnable;

.field mTemperatureCheckRunnable:Ljava/lang/Runnable;

.field mTimeInit:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-class v0, Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->APP_START_DELAY:I

    .line 42
    const v0, 0x41eb0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->SIOP_SHIFT_TIMEOUT:I

    .line 44
    const v0, 0x15f90

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->SINGLE_BOOST_SIOP_SHIFT_TIMEOUT:I

    .line 46
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->RESTART_MONITORING_DELAY:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->fakeCount:I

    .line 50
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    .line 52
    const-wide/32 v1, 0x124f80

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 56
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 58
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsGpuSiopTableExist:Z

    .line 94
    new-instance v1, Lcom/android/server/ssrm/DynamicLoadDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$2;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 145
    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_NONE:I

    .line 147
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_CPU:I

    .line 149
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_GPU:I

    .line 155
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    .line 285
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 306
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    .line 310
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$3;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$3;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/ssrm/LoadDetectMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    .line 68
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$1;

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector$1;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    .line 87
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    .line 90
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    .line 91
    .local v0, "eventManager":Lcom/android/server/ssrm/common/EventManager;
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 92
    return-void
.end method

.method private pauseLoadDetect()V
    .registers 3

    .line 394
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 395
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "pauseLoadDetect: !@# Detecting OFF"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->pauseLoadDetect()V

    .line 398
    return-void
.end method

.method public static reportLoadState(I)V
    .registers 4
    .param p0, "state"  # I

    .line 401
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 402
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLoadState: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_1c
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 405
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 407
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 408
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    .end local v0  # "msg":Landroid/os/Message;
    :cond_2e
    return-void
.end method

.method public static reportSingleBoostState(I)V
    .registers 5
    .param p0, "state"  # I

    .line 415
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    if-nez v0, :cond_7

    if-eqz p0, :cond_7

    .line 416
    return-void

    .line 419
    :cond_7
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3c

    .line 420
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 421
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 422
    if-nez p0, :cond_16

    const/4 v1, 0x5

    goto :goto_17

    :cond_16
    const/4 v1, 0x6

    :goto_17
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 423
    sget-boolean v1, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v1, :cond_37

    .line 424
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSingleBoostState:: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_37
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    .end local v0  # "msg":Landroid/os/Message;
    :cond_3c
    return-void
.end method

.method private stopMonitoring()V
    .registers 2

    .line 356
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 357
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-eqz v0, :cond_a

    .line 358
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 360
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(Z)V

    .line 363
    :cond_14
    return-void
.end method

.method private stopNativeMonitoring()V
    .registers 3

    .line 375
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "!@# Monitoring OFF"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 377
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->stopLoadMonitor()V

    .line 378
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .registers 4
    .param p0, "e"  # [I

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 453
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 455
    .end local v1  # "i":I
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method enableHeavyuser(ZI)V
    .registers 8
    .param p1, "on"  # Z
    .param p2, "type"  # I

    const/4 p1, 0x0

    .line 241
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 242
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_3c

    .line 243
    nop

    .line 244
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 245
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_3c

    .line 247
    :try_start_10
    const-string v2, "Heavyuser"

    if-eqz p1, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_28
    const-string v3, "0"

    :goto_2a
    invoke-interface {v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    if-eqz p1, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/LoadDetectMonitor;->setHeavyModeState(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_37} :catch_38

    .line 251
    goto :goto_3c

    .line 249
    :catch_38
    move-exception v2

    .line 250
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    .end local v1  # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    return-void
.end method

.method isHeavyuserTargetApp()Z
    .registers 5

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "isNotHeavyuserTargetApp":Z
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 268
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isSetupWizardFinished()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v1

    if-nez v1, :cond_20

    .line 269
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isHeavyDetectDisabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v2

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v3

    :goto_21
    move v0, v1

    .line 271
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isMlPidModel()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 272
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isPreloadApp()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    if-eqz v1, :cond_34

    move v1, v3

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    or-int/2addr v0, v1

    goto :goto_3c

    .line 274
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isPreloadApp()Z

    move-result v1

    or-int/2addr v0, v1

    .line 277
    :goto_3c
    if-nez v0, :cond_3f

    move v2, v3

    :cond_3f
    return v2
.end method

.method isMlPidModel()Z
    .registers 3

    .line 281
    const-string v0, "dev.ssrm.gamelevel"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isPreloadApp()Z
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 258
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    if-eqz v0, :cond_f

    .line 259
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 261
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method isSiopShifted()Z
    .registers 2

    .line 142
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    return v0
.end method

.method onFgAppChanged()V
    .registers 4

    .line 299
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 300
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppChanged: mForegroundPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring()V

    .line 304
    return-void
.end method

.method protected onLoadDetected(I)V
    .registers 15
    .param p1, "state"  # I

    .line 108
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 109
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadDetected:: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1c
    const/4 v0, 0x0

    .line 113
    .local v0, "STATE_CPU_HIGH_LOAD_END":I
    const/4 v1, 0x1

    .line 114
    .local v1, "STATE_CPU_HIGH_LOAD_START":I
    const/4 v2, 0x2

    .line 115
    .local v2, "STATE_GPU_HIGH_LOAD_END":I
    const/4 v3, 0x3

    .line 116
    .local v3, "STATE_GPU_HIGH_LOAD_START":I
    const/4 v4, 0x4

    .line 117
    .local v4, "STATE_MODERATELY_HEAVY_LOAD_START":I
    const/4 v5, 0x5

    .line 118
    .local v5, "STATE_CPU_SINGLE_BOOST_END":I
    const/4 v6, 0x6

    .line 120
    .local v6, "STATE_CPU_SINGLE_BOOST_START":I
    sget-object v7, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 121
    .local v7, "msg":Landroid/os/Message;
    sparse-switch p1, :sswitch_data_5a

    goto :goto_59

    .line 125
    :sswitch_2d
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 126
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne p1, v8, :cond_36

    const/4 v10, 0x2

    goto :goto_37

    :cond_36
    move v10, v9

    :goto_37
    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 127
    sget-object v9, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 128
    const/4 v11, 0x6

    if-ne p1, v11, :cond_45

    const-wide/32 v11, 0x15f90

    goto :goto_48

    .line 129
    :cond_45
    const-wide/32 v11, 0x41eb0

    .line 127
    :goto_48
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    iput v8, v7, Landroid/os/Message;->what:I

    .line 131
    sget-object v8, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->pauseLoadDetect()V

    .line 133
    nop

    .line 137
    :goto_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_2d
        0x3 -> :sswitch_2d
        0x6 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onScreenOff()V
    .registers 3

    .line 444
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 445
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "onScreenOff: stopMonitoring"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_b
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopMonitoring()V

    .line 448
    return-void
.end method

.method public onScreenOn()V
    .registers 6

    .line 431
    nop

    .line 432
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 433
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    goto :goto_10

    :cond_e
    const/16 v1, -0x3e7

    .line 434
    .local v1, "lrp":I
    :goto_10
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    if-nez v2, :cond_1f

    const/16 v2, 0x154

    if-ge v1, v2, :cond_1f

    .line 435
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 437
    :cond_1f
    sget-boolean v2, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 438
    sget-object v2, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenOn: mIsTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lrp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onFgAppChanged()V

    .line 441
    return-void
.end method

.method removeMessagesAndCallbackForLoadDetect()V
    .registers 3

    .line 211
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 212
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "removeMessagesAndCallbackForLoadDetect"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    return-void
.end method

.method resumeLoadDetect()V
    .registers 4

    .line 381
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v0, :cond_23

    .line 382
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 383
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeLoadDetect: mIsTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_22
    return-void

    .line 387
    :cond_23
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 388
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "resumeLoadDetect: !@# Detecting ON"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_2e
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->resumeLoadDetect()V

    .line 391
    return-void
.end method

.method scheduleMonitoring()V
    .registers 5

    .line 332
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isHeavyuserTargetApp()Z

    move-result v0

    .line 334
    .local v0, "needToMonitorLoad":Z
    sget-boolean v1, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 335
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleMonitoring:: needToMonitorLoad = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_20
    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 339
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v2, :cond_2b

    .line 340
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->startNativeMonitoring()V

    goto :goto_4e

    .line 342
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isPreloadApp()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(Z)V

    goto :goto_4e

    .line 347
    :cond_3b
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v2, :cond_45

    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 348
    :cond_45
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopMonitoring()V

    .line 350
    :cond_48
    iput-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 351
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 353
    :cond_4e
    :goto_4e
    return-void
.end method

.method setCondition(ZI)V
    .registers 7
    .param p1, "isShift"  # Z
    .param p2, "type"  # I

    .line 220
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isHeavyuserTargetApp()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_22

    .line 221
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 222
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 223
    invoke-virtual {p0, v3, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 224
    iput-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 225
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 226
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 227
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "setCondition: NOT isHeavyuserTargetApp, return "

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_21
    return-void

    .line 232
    :cond_22
    if-nez p1, :cond_2a

    .line 233
    invoke-virtual {p0, v3, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 234
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    goto :goto_2e

    .line 236
    :cond_2a
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 238
    :goto_2e
    return-void
.end method

.method shiftSiopTable(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 153
    return-void
.end method

.method shiftSiopTable(ZI)V
    .registers 12
    .param p1, "enable"  # Z
    .param p2, "type"  # I

    .line 160
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 161
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shiftSiopTable:: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_26
    sput-boolean p1, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    .line 166
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_8d

    .line 167
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    if-nez v3, :cond_55

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 169
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 170
    if-eqz v0, :cond_8f

    .line 171
    sget-object v3, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shiftSiopTable:: mShiftStartTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 174
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 175
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 176
    if-eqz v0, :cond_8a

    .line 177
    sget-object v5, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shiftSiopTable:: mShiftTotalTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsTimeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_8a
    iput-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 181
    .end local v3  # "time":J
    goto :goto_8f

    .line 183
    :cond_8d
    iput-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 186
    :cond_8f
    :goto_8f
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    if-nez v3, :cond_ad

    .line 187
    const-string v3, "dev.sdhms.hp"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "hp":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 189
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 190
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    .line 192
    :cond_ab
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    .line 196
    .end local v3  # "hp":Ljava/lang/String;
    :cond_ad
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    if-nez v3, :cond_db

    .line 197
    iget-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_db

    .line 198
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 199
    invoke-virtual {p0, v1, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->setCondition(ZI)V

    .line 200
    if-eqz v0, :cond_da

    .line 201
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shiftSiopTable:: mIsTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_da
    return-void

    .line 207
    :cond_db
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ssrm/DynamicLoadDetector;->setCondition(ZI)V

    .line 208
    return-void
.end method

.method startNativeMonitoring()V
    .registers 3

    .line 366
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v0, :cond_5

    .line 367
    return-void

    .line 369
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "!@# Monitoring ON"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 371
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->startLoadMonitor()V

    .line 372
    return-void
.end method
