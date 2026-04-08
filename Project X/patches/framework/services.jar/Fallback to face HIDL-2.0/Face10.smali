# classes.dex

.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/face/ServiceProvider;


# static fields
.field public static mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public static sSystemClock:Ljava/time/Clock;


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field public mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

.field public final mGeneratedChallengeCount:Ljava/util/List;

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final mHandler:Landroid/os/Handler;

.field public final mLazyDaemon:Ljava/util/function/Supplier;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field public mTestHalEnabled:Z

.field public mTpaHalModeEnabled:Z

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

.field public final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$-59KgI1Q_Pr8HqI_75oPRPUAkS8(Lcom/android/server/biometrics/sensors/face/hidl/Face10;II[B)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleResetLockout$12(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$-cgnUCyafYkOWpOh6VjNa5ufbR0(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleSetFeature$13(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$3tuBggi60W_3f6Q41yOtsogfvuc(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGetFeature$14(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4KHzgpOw22OXUGrCmeZ8hgeIWMI()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semPauseEnroll$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$5PmAXG9JJU2Gibt3QP7MMjurHbo(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$serviceDied$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5RQ0v_bUcWn_RiHjY6Nll4nmIRM(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$cancelEnrollment$7(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$5mo5ftDkT71ZgKWNyHn7uh8mhAM()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semPauseAuth$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$63sDZI2kAH7FkY_snEWhBqdYEy0(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRemoveAll$11(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EFT5Ie6LMkf8AD0cpaxvztXDlOk(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V
    .registers 12

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleAuthenticate$8(Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$JOPPr_WavDkztN6Dq0b9OgMD9QM(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$onBootPhase$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PxYkjKFX91C4twDcQfTFvouJo8M(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SlhKCjtEevwvUQHuA-Mnq2leCpg(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wz-Go0ZBp61l2GgCfMu-LMkWLOU(II)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$getDaemon$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YF8TLHhhQ3nYxaci344L_cFTk0A(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRevokeChallenge$5(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5yBhb-ln98XjlFGygi-gGDCs-E(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleLoadAuthenticatorIds$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$ato9dcejMs4FaVhxyspQ-NBh_1M()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semResumeAuth$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$dQWjTsrnUOq-YFLRVM9CuCtrdUc(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRemove$10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dd6mDiKgI7HN9fb5FftelKDh5NU()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semResumeEnroll$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$iYOnsm0RYuUV4b1hmhzRzkEmffQ(JLjava/lang/Long;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$decrementChallengeCount$3(JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lVfjGS9Zr62tb-SDdl53eM5SMHU()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semSessionClose$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$ljFq2e-7GImZ3sDEcoEm8wQB1Zw(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleInternalCleanup$15(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lk-O3W259kr7Dv3n-iJJkMFxKls(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$startPreparedClient$16(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oScSJsWB299JVtaqSSSuqsrxYR8(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGenerateChallenge$4(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qlx7Tra2pj3ybtNcaXxxe1eRxV4(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ypTW-WlDWb-OoVUH7IC51s62Zug(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$cancelAuthentication$9(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsmx69uEc8DwO1PQvKH1pgBOy7U()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semSessionOpen$23()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/log/BiometricContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 165
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 19

    move-object v0, p0

    move-object v3, p1

    move-object v1, p3

    const-string v8, "Face10"

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 185
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTpaHalModeEnabled:Z

    .line 191
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v2, -0x2710

    .line 192
    iput v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v2, 0x0

    .line 195
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 198
    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 213
    new-instance v9, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;

    invoke-direct {v9, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v9, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 668
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 669
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    move-object v4, p2

    .line 670
    iput-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 671
    iget v4, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iput v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object/from16 v5, p6

    .line 672
    iput-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-object/from16 v4, p5

    .line 673
    iput-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    .line 676
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-direct {v6, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;)V

    sput-object v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-object/from16 v6, p7

    .line 679
    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 680
    new-instance v6, Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-direct {v6, p1}, Lcom/android/server/biometrics/sensors/face/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 681
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    .line 682
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 686
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    invoke-direct {v6, p1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    .line 689
    new-instance v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget v2, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const/4 v6, 0x0

    move-object v1, v10

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    iput-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 691
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v10, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V

    .line 697
    :try_start_7e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_85} :catch_86

    goto :goto_8b

    :catch_86
    const-string v0, "Unable to register user switch observer"

    .line 699
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    return-void
.end method

.method private synthetic lambda$cancelAuthentication$9(Landroid/os/IBinder;J)V
    .registers 4

    .line 1139
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelEnrollment$7(Landroid/os/IBinder;J)V
    .registers 4

    .line 1062
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic lambda$decrementChallengeCount$3(JLjava/lang/Long;)Z
    .registers 5

    .line 924
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$getDaemon$2(II)V
    .registers 4

    const-string v0, "Face10"

    if-nez p0, :cond_2a

    .line 823
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    .line 824
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityLevel : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_1d

    const-string p1, " (Strong=1,2,3)"

    goto :goto_1f

    :cond_1d
    const-string p1, ""

    :goto_1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_2a
    const-string p0, "SecurityLevel fail"

    .line 826
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 692
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    .line 693
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return-void
.end method

.method public static synthetic lambda$onBootPhase$25(I)V
    .registers 2

    .line 1605
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onBootPhase(I)V

    return-void
.end method

.method private synthetic lambda$scheduleAuthenticate$8(Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V
    .registers 35

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v21, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v12, p10

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    move-result v0

    .line 1086
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1088
    iget v0, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v16

    .line 1091
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->hasPrivilegedAttr(Landroid/os/Bundle;I)Z

    move-result v0

    or-int v19, p2, v0

    .line 1094
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;

    move-object v0, v14

    iget-object v2, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    const/4 v13, 0x0

    const/4 v13, 0x2

    move-object/from16 p2, v14

    move/from16 v14, p11

    .line 1097
    invoke-virtual {v15, v13, v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v14

    move-object/from16 v13, p2

    iget-object v13, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 p3, v0

    move-object v0, v15

    move-object v15, v13

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    move-object/from16 v17, v13

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v18, v13

    iget v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1100
    invoke-static {v13}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v20

    move-object/from16 v22, p2

    move-object/from16 v0, p3

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZILandroid/hardware/face/FaceAuthenticateOptions;)V

    .line 1117
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-wide/from16 v1, p4

    move-object/from16 v3, v22

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msetCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V

    move-object/from16 v0, p0

    .line 1120
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleEnroll$6(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 31

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v18, p5

    move-wide/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    .line 1007
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1009
    iget-object v0, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelReEnrollNotification(Landroid/content/Context;)V

    .line 1011
    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;

    move-object v0, v13

    iget-object v2, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object v5, v11

    move-object/from16 p1, v13

    move-object/from16 v13, p3

    invoke-direct {v11, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v11, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1013
    invoke-static {v11}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v11

    const/16 v13, 0x4b

    move-object/from16 v19, p1

    iget v13, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object/from16 p2, v0

    move-object v0, v15

    move v15, v13

    const/4 v13, 0x1

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {v0, v13, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    const/16 v13, 0x4b

    invoke-direct/range {v0 .. v18}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1035
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;

    move-object/from16 v3, v19

    invoke-direct {v2, v0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleGenerateChallenge$4(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 939
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->incrementChallengeCount()V

    .line 941
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isGeneratedChallengeCacheValid()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "Face10"

    const-string v3, "Current challenge is cached and will be reused"

    .line 942
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V

    return-void

    :cond_18
    move/from16 v6, p2

    .line 947
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 949
    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x0

    .line 952
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    .line 954
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    move-object v1, v13

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V

    .line 955
    iput-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 956
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;

    invoke-direct {v2, p0, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;)V

    invoke-virtual {v1, v13, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleGetFeature$14(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 22

    move-object v0, p0

    move/from16 v13, p2

    .line 1237
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v1

    .line 1238
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring getFeature, no templates enrolled for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1243
    :cond_24
    invoke-virtual {p0, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v2, 0x0

    .line 1245
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v12

    .line 1246
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1248
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V

    .line 1250
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$9;

    move/from16 v3, p6

    invoke-direct {v2, p0, v3, v14, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$9;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;I)V

    invoke-virtual {v1, v14, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleInternalCleanup$15(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 14

    .line 1272
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSetActiveUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1277
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1278
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 1279
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1282
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 1283
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    filled-new-array {p2, p0}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleLoadAuthenticatorIds$17()V
    .registers 5

    .line 1396
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1397
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1398
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1399
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    goto :goto_e

    :cond_2c
    return-void
.end method

.method private synthetic lambda$scheduleRemove$10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 21

    move-object v0, p0

    .line 1146
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1148
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1150
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1151
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 1154
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 1157
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v14}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result v1

    const-string v2, "R"

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$scheduleRemoveAll$11(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 1167
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1170
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v6, 0x0

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1173
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1174
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 1177
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleResetLockout$12(II[B)V
    .registers 14

    .line 1184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring lockout reset, no templates enrolled for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1189
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1191
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$8;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1192
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v0, 0x0

    .line 1193
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, p1

    move-object v1, p0

    move v4, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$8;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[B)V

    .line 1206
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRevokeChallenge$5(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 15

    .line 972
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->decrementChallengeCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    const-string v2, "Face10"

    if-nez v0, :cond_26

    .line 974
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "scheduleRevokeChallenge skipped - challenge still in use: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string/jumbo v0, "scheduleRevokeChallenge executing - no active clients"

    .line 979
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 982
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 984
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v2, v0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 987
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;

    invoke-direct {p2, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleSetFeature$13(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v6, p2

    .line 1215
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v1

    .line 1216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring setFeature, no templates enrolled for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1221
    :cond_25
    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v2, 0x0

    .line 1223
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v14

    .line 1224
    new-instance v15, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p4

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 1226
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v15

    move-object/from16 v4, p3

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V

    .line 1229
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v15}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic lambda$semPauseAuth$20()V
    .registers 1

    .line 1534
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonPauseAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semPauseEnroll$18()V
    .registers 1

    .line 1519
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonPauseEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semResumeAuth$21()V
    .registers 1

    .line 1541
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonResumeAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semResumeEnroll$19()V
    .registers 3

    .line 1526
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmEnrollStartTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V

    .line 1527
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonResumeEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semSessionClose$24()V
    .registers 1

    .line 1578
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semSessionOpen$23()V
    .registers 1

    .line 1571
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSessionOpen(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method private synthetic lambda$serviceDied$1()V
    .registers 5

    .line 727
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    const/4 v0, 0x0

    .line 729
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    .line 730
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 732
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 733
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_3e

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 736
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v0, 0x4

    const/4 v1, -0x1

    const/16 v3, 0x94

    .line 739
    invoke-static {v3, v0, v2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 745
    :cond_3e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 746
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    return-void
.end method

.method private synthetic lambda$startPreparedClient$16(I)V
    .registers 2

    .line 1303
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    .registers 13

    .line 710
    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 711
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/biometrics/sensors/face/SemFaceScheduler;

    const-string v0, "Face10"

    invoke-direct {v6, v0}, Lcom/android/server/biometrics/sensors/face/SemFaceScheduler;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object v8
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 6

    .line 1139
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 6

    .line 1062
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelFaceDetect(ILandroid/os/IBinder;J)V
    .registers 5

    .line 1075
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsSensor(I)Z
    .registers 2

    .line 857
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 5

    .line 1443
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 10

    .line 1509
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V

    return-object p1
.end method

.method public final decrementChallengeCount()I
    .registers 5

    .line 921
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 924
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda25;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 925
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 926
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 928
    :cond_1e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 8

    .line 1460
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_9

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string/jumbo p1, "ro.face.disable_debug_data"

    const/4 v0, 0x0

    .line 1466
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6a

    const-string/jumbo p1, "persist.face.disable_debug_data"

    .line 1467
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_6a

    .line 1474
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    if-eqz p0, :cond_6a

    const/4 p1, 0x0

    .line 1478
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/dev/null"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_56
    .catchall {:try_start_24 .. :try_end_2b} :catchall_54

    .line 1479
    :try_start_2b
    new-instance p1, Landroid/os/NativeHandle;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/FileDescriptor;

    .line 1480
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    new-array p2, v0, [I

    invoke-direct {p1, v2, p2, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    .line 1482
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4a} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_51
    .catchall {:try_start_2b .. :try_end_4a} :catchall_4e

    .line 1488
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_6a

    goto :goto_6a

    :catchall_4e
    move-exception p0

    move-object p1, v1

    goto :goto_64

    :catch_51
    move-exception p0

    move-object p1, v1

    goto :goto_57

    :catchall_54
    move-exception p0

    goto :goto_64

    :catch_56
    move-exception p0

    :goto_57
    :try_start_57
    const-string p2, "Face10"

    const-string p3, "error while reading face debugging data"

    .line 1484
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    if-eqz p1, :cond_6a

    .line 1488
    :try_start_60
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6a

    goto :goto_6a

    :goto_64
    if-eqz p1, :cond_69

    :try_start_66
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    .line 1492
    :catch_69
    :cond_69
    throw p0

    :catch_6a
    :cond_6a
    :goto_6a
    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 11

    const-string p1, "Face10"

    .line 1342
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1343
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 1345
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string/jumbo v2, "service"

    .line 1347
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1349
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1350
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1351
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1352
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 1353
    invoke-virtual {v5, v6, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1354
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "id"

    .line 1355
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "count"

    .line 1356
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "accept"

    .line 1357
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "reject"

    .line 1358
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquire"

    .line 1359
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "lockout"

    .line 1360
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "permanentLockout"

    .line 1361
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acceptCrypto"

    .line 1364
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "rejectCrypto"

    .line 1365
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquireCrypto"

    .line 1366
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1367
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_26

    :cond_aa
    const-string/jumbo v3, "prints"

    .line 1370
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_b0} :catch_b1

    goto :goto_b7

    :catch_b1
    move-exception v2

    const-string v3, "dump formatting failure"

    .line 1372
    invoke-static {p1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1374
    :goto_b7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL deaths since last reboot: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 1378
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 1381
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdump(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 3

    .line 0
    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 12

    const-wide v0, 0x20b00000001L

    .line 1310
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1312
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x2

    .line 1313
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1314
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 1315
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    const-wide v4, 0x10500000003L

    .line 1314
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1316
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    const-wide v4, 0x10b00000004L

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1318
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 1319
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 1321
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1322
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1323
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 1324
    invoke-virtual {v6, v7, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const-wide v6, 0x10500000002L

    .line 1323
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1325
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4a

    .line 1328
    :cond_86
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1330
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    const-wide v2, 0x10800000007L

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1333
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 899
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final declared-synchronized getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 12

    monitor-enter p0

    .line 762
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isTpaSehTestHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 763
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->getInstance(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_13c

    .line 765
    monitor-exit p0

    return-object v0

    .line 768
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    if-eqz v0, :cond_2a

    .line 769
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 770
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_13c

    .line 771
    monitor-exit p0

    return-object v0

    .line 774
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_13c

    if-eqz v0, :cond_30

    .line 775
    monitor-exit p0

    return-object v0

    :cond_30
    :try_start_30
    const-string v0, "Face10"

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 779
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_13c

    .line 784
    .line 785
    :try_start_4c
    invoke-static {}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->getService()Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_52
    .catch Ljava/util/NoSuchElementException; {:try_start_4c .. :try_end_52} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_52} :catch_53
    .catchall {:try_start_4c .. :try_end_52} :catchall_13c

    goto :goto_64

    :catch_53
    move-exception v0

    :try_start_54
    const-string v1, "Face10"

    const-string v2, "Failed to get face HAL"

    .line 797
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :catch_5c
    move-exception v0

    const-string v1, "Face10"

    const-string v2, "NoSuchElementException"

    .line 795
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    :goto_64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_72

    const-string v0, "Face10"

    const-string v2, "Face HAL not available"

    .line 801
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_13c

    .line 802
    monitor-exit p0

    return-object v1

    .line 805
    :cond_72
    :try_start_72
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_13c

    .line 812
    :try_start_7b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 814
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-interface {v0, v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v6, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8b} :catch_e8
    .catchall {:try_start_7b .. :try_end_8b} :catchall_13c

    :try_start_8b
    const-string v0, "Face10"

    .line 819
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetCallback FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) RESULT(HAL id): "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 821
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;

    invoke-direct {v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v0, v8}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    const-string v0, "Face10"

    .line 829
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecurityLevel FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setHalDeviceId(J)V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_e5} :catch_e6
    .catchall {:try_start_8b .. :try_end_e5} :catchall_13c

    goto :goto_f3

    :catch_e6
    move-exception v0

    goto :goto_ea

    :catch_e8
    move-exception v0

    move-wide v6, v2

    :goto_ea
    :try_start_ea
    const-string v4, "Face10"

    const-string v5, "Failed to set callback for face HAL"

    .line 835
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    :goto_f3
    const-string v0, "Face10"

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face HAL ready, HAL ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v6, v2

    if-eqz v0, :cond_12f

    .line 841
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleLoadAuthenticatorIds()V

    .line 842
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 843
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 844
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 843
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    goto :goto_138

    :cond_12f
    const-string v0, "Face10"

    const-string v2, "Unable to set callback"

    .line 848
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 852
    :goto_138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_13a
    .catchall {:try_start_ea .. :try_end_13a} :catchall_13c

    monitor-exit p0

    return-object v0

    :catchall_13c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnrolledFaces(II)Ljava/util/List;
    .registers 3

    .line 877
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenerateChallengeReuseInterval()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getLockoutModeForUser(II)I
    .registers 3

    .line 889
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    invoke-interface {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object p0

    .line 890
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    .line 889
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->getLockoutStateFor(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 2

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 2

    .line 871
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 2

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hasEnrollments(II)Z
    .registers 3

    .line 882
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final incrementChallengeCount()V
    .registers 3

    .line 917
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final isGeneratedChallengeCacheValid()Z
    .registers 5

    .line 911
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    .line 912
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getCreatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isHardwareDetected(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isTpaSehTestHalEnabled()Z
    .registers 2

    .line 752
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_e

    :cond_8
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTpaHalModeEnabled:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 1605
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;ZIZ)J
    .registers 24

    move-object v0, p0

    .line 1129
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v12

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide v7, v12

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 1131
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;JZIZ)V

    return-wide v12
.end method

.method public scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;JZIZ)V
    .registers 27

    move-object v1, p0

    .line 1084
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda23;

    move-object v0, v14

    move-object/from16 v2, p6

    move/from16 v3, p11

    move-object/from16 v4, p1

    move-wide/from16 v5, p7

    move-object/from16 v7, p5

    move-wide/from16 v8, p2

    move/from16 v10, p9

    move/from16 v11, p4

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .registers 25

    move-object v1, p0

    .line 1005
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    .line 1006
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;

    move-object v0, v14

    move/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-wide v7, v11

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v11
.end method

.method public scheduleFaceDetect(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;I)J
    .registers 5

    .line 1069
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 938
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 17

    move-object v1, p0

    .line 1236
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;

    move-object v0, v9

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object/from16 v6, p6

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    .line 1291
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;Z)V
    .registers 5

    .line 1297
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 1269
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleLoadAuthenticatorIds()V
    .registers 3

    .line 1395
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15

    .line 1145
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 1166
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda20;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6

    .line 1183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 971
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda18;

    invoke-direct {p5, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 21

    move-object v1, p0

    .line 1214
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;

    move-object v0, v11

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateActiveUserWithoutHandler(I)V
    .registers 14

    .line 1413
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 1414
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$10;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1415
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x0

    .line 1416
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$10;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V

    .line 1429
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$11;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public semGetInfo(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_a

    .line 1630
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonGetTrustAppVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 2

    .line 1600
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mgetRemainingLockoutTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I

    move-result p0

    return p0
.end method

.method public semGetSecurityLevel(Z)I
    .registers 2

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1590
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mgetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)I

    move-result p0

    return p0
.end method

.method public semIsFrameworkHandleLockout()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public semIsSessionClose()Z
    .registers 1

    .line 1584
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonIsSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result p0

    return p0
.end method

.method public semPauseAuth()V
    .registers 2

    .line 1533
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semPauseEnroll()V
    .registers 2

    .line 1518
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semResetAuthenticationTimeout()Z
    .registers 2

    .line 1547
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isNeededSetBrightness()Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1388

    goto :goto_11

    :cond_f
    const/16 p0, 0xfa0

    .line 1549
    :goto_11
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mresetOperationTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)Z

    move-result p0

    return p0
.end method

.method public semResumeAuth()V
    .registers 2

    .line 1540
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semResumeEnroll()V
    .registers 2

    .line 1525
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSessionClose()V
    .registers 2

    .line 1577
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSessionOpen()V
    .registers 2

    .line 1570
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 6

    .line 1610
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTpaHalModeEnabled:Z

    .line 1611
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "biometric_tpa_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    if-eqz p1, :cond_11

    or-int/lit8 p1, v0, 0x8

    goto :goto_13

    :cond_11
    and-int/lit8 p1, v0, -0x9

    .line 1617
    :goto_13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3, p1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public semUpdateTpaAction()V
    .registers 2

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isTpaSehTestHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->postUpdateAction()V

    :cond_f
    return-void
.end method

.method public serviceDied(J)V
    .registers 3

    const-string p1, "Face10"

    const-string p2, "HAL died"

    .line 725
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 1497
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    .line 1499
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    if-eqz p0, :cond_9

    .line 1500
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->-$$Nest$fputmHalResultTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Z)V

    :cond_9
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 4

    .line 1302
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
