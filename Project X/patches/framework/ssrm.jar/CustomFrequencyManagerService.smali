.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ANIMATION_BOOST_TIMEOUT:I = 0x64

.field private static final BOOST_ARGUMENT:I = 0x40cd0000

.field static final DEBUG:Z

.field private static final GPIS_DISABLE_TIMEOUT:I = 0x7d0

.field private static final HINT_APP_LAUNCH:I = 0x12

.field private static final INCREASE_LOW_LATENCY_THRESHOLD:I = 0x320

.field private static final MPCTLV3_SCHED_LOW_LATENCY:I = 0x40cd0000

.field private static final MPCTLV3_SCHED_TASK_BOOST:I = 0x40c80000

.field private static final MPCTLV3_WALT_LOW_LATENCY_TASK_THRESHOLD:I = 0x40cd8000

.field private static final PERF_TUNE_CHECK_DURATION:I = 0x7530

.field private static final PERF_TUNE_CHECK_MAX_COUNT:I = 0x6

.field private static final PROP_PERF_TUNE:Ljava/lang/String; = "persist.sys.perftune.cpugpu"

.field static final TAG:Ljava/lang/String;

.field private static final TASKBOOST_MAX_TIMEOUT:I = 0x32a

.field private static final TASKBOOST_SYSFS_ID:I = 0x402611

.field public static final TASK_NAME_APP_HWUI:Ljava/lang/String; = "APP_HWUI"

.field public static final TASK_NAME_APP_RENDERER:Ljava/lang/String; = "APP_RENDERER"

.field public static final TASK_NAME_SF_THREAD:Ljava/lang/String; = "SF_THREAD"

.field public static final TYPE_ALLOW_DUPLICATED_NAME:I = 0x1

.field public static final TYPE_OVERWRITE_PREV_THREAD:I

.field static isLoaded:Z

.field public static mContext:Landroid/content/Context;

.field private static mCurrentDynamicFpsLevel:I

.field public static mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

.field public static mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

.field public static mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

.field public static mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field private static final sIsFactoryBinary:Z

.field private static sfHintAvailable:Z


# instance fields
.field final PATH_VMSCAN_FOR_LAUNCH:Ljava/lang/String;

.field private final allowedUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final disableGpisRunnable:Ljava/lang/Runnable;

.field private enableGpis:Z

.field private gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

.field private final gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

.field private final gpisLock:Ljava/lang/Object;

.field public isLauncherPidInitialized:Z

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

.field mBootComplete:Z

.field private mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

.field mCfmsHandler:Landroid/os/Handler;

.field private mCurrentFGChangedTime:J

.field private mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

.field mGpisHintEndTime:J

.field private mIsTaskBoostExist:Z

.field private final mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBoostTime:J

.field private mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

.field private mPerfTuneCheckCount:I

.field private mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

.field mPerfTuneRunnable:Ljava/lang/Runnable;

.field private mPerfTuneValue:Ljava/lang/String;

.field private mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field public mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field mSOSMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOn:Z

.field private mSetupWizardObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;

.field private mShutdownReceiver:Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

.field private mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

.field private mTaskBoostFramework:Landroid/util/BoostFramework;

.field private mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

.field mUserPresent:Z

.field private sfTid:I

.field private final taskboostLock:Ljava/lang/Object;

.field private final taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;


# direct methods
.method public static synthetic $r8$lambda$qvLi770E5YQjSMppCFUvcXMB-9o(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTaskBoostExist(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsolateUidMap(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerfTuneValue(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mShutdownReceiver:Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskBoostManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/fgapps/TopAppManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsfTid(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCPUSetController(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CPUSetController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPalmInputEventChecker(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/PalmInputEventChecker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPerfTuneValue(Lcom/android/server/ssrm/CustomFrequencyManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetupWizardObserver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSetupWizardObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mShutdownReceiver:Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    return-void
.end method

.method static bridge synthetic -$$Nest$macquirePerfTune(Lcom/android/server/ssrm/CustomFrequencyManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquirePerfTune(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initPerfettoLogging(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initScrollBooster(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsHandlerThread(Landroid/os/HandlerThread;)V
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 104
    const-string v0, "GPIS : Exception!!! on Load Library"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    .line 106
    const-class v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    .line 110
    :try_start_d
    const-string v3, "GPIS : loadLibrary!!!"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "cfms.ssrm.samsung"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z
    :try_end_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_1a} :catch_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_32

    .line 117
    :catch_1b
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    goto :goto_33

    .line 113
    .end local v2  # "e":Ljava/lang/Exception;
    :catch_27
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 116
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    .line 121
    .end local v2  # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_32
    nop

    .line 124
    :goto_33
    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 158
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    .line 160
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 162
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 190
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    .line 966
    const/16 v0, 0x63

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    .line 1374
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 273
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 130
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 154
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 166
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

    .line 168
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

    .line 170
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    .line 174
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 178
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 182
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    .line 188
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    .line 443
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    .line 449
    iput v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    .line 453
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneRunnable:Ljava/lang/Runnable;

    .line 588
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 590
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 592
    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 594
    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 596
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSOSMap:Ljava/util/Map;

    .line 598
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    .line 620
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 750
    const-string v3, "/sys/kernel/mm/vmscan/am_app_launch"

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_VMSCAN_FOR_LAUNCH:Ljava/lang/String;

    .line 995
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    .line 1234
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 1268
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    .line 1270
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    .line 1317
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    .line 1319
    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    .line 1335
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    .line 1376
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1378
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    .line 1382
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    .line 1410
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1454
    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1469
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 275
    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 277
    new-instance v1, Lcom/android/server/ssrm/ProcessCpuUsage;

    invoke-direct {v1}, Lcom/android/server/ssrm/ProcessCpuUsage;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

    .line 278
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 279
    invoke-static {p1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

    .line 281
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_LOW_TEMP"

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 283
    if-eqz v1, :cond_b3

    .line 284
    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 287
    :cond_b3
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    if-nez v1, :cond_e3

    .line 289
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    .line 291
    new-instance v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    .line 292
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->startObserving(Landroid/content/Context;)V

    .line 294
    invoke-static {}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->getInstance()Lcom/android/server/ssrm/fgapps/GameAppUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 296
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-nez v1, :cond_e3

    .line 297
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v1, :cond_e3

    .line 298
    new-instance v1, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 299
    invoke-static {p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    .line 300
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->run()V

    .line 305
    :cond_e3
    const-class v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    monitor-enter v1

    .line 306
    :try_start_e6
    sput-object p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 307
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_115

    .line 309
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registFGObserver()V

    .line 311
    const-class v1, Landroid/os/CustomFrequencyManagerInternal;

    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;

    invoke-direct {v2, p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 314
    new-instance v0, Lcom/android/server/ssrm/fgapps/TopAppManager;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 316
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "CFMS_TASK_BOOST"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 317
    if-eqz v0, :cond_114

    .line 318
    const v1, 0x402611

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->checkSysfsIdExist(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    .line 320
    :cond_114
    return-void

    .line 307
    :catchall_115
    move-exception v0

    :try_start_116
    monitor-exit v1
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v0
.end method

.method private acquirePerfTune(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"  # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_10

    .line 466
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PERF_TUNE_TEST"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 470
    :cond_10
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_8a

    :cond_1c
    goto :goto_4f

    :sswitch_1d
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_50

    :sswitch_27
    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_50

    :sswitch_31
    const-string v0, "70"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    goto :goto_50

    :sswitch_3b
    const-string v0, "50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    goto :goto_50

    :sswitch_45
    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_50

    :goto_4f
    const/4 v0, -0x1

    :goto_50
    packed-switch v0, :pswitch_data_a0

    goto :goto_88

    .line 486
    :pswitch_54  #0x4
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 487
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_88

    .line 482
    :pswitch_61  #0x3
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 483
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 484
    goto :goto_88

    .line 478
    :pswitch_6e  #0x2
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 479
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 480
    goto :goto_88

    .line 474
    :pswitch_7b  #0x0, 0x1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 475
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 476
    nop

    .line 490
    :goto_88
    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        0x65d -> :sswitch_45
        0x69b -> :sswitch_3b
        0x6d9 -> :sswitch_31
        0x12944 -> :sswitch_27
        0x1a564 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7b  #00000000
        :pswitch_7b  #00000001
        :pswitch_6e  #00000002
        :pswitch_61  #00000003
        :pswitch_54  #00000004
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .registers 1

    .line 195
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    return-object v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .registers 1

    .line 720
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    .line 721
    const/4 v0, 0x0

    return-object v0

    .line 723
    :cond_6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private initPerfettoLogging(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 585
    new-instance v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    .line 586
    return-void
.end method

.method private initScrollBooster(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 577
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-nez v0, :cond_d

    .line 578
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 580
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 581
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 582
    return-void
.end method

.method private isAllowedUid()Z
    .registers 5

    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1041
    .local v0, "uid":I
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_11

    .line 1042
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Shell is not Allowed"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const/4 v1, 0x0

    return v1

    .line 1045
    :cond_11
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowedPkg requested UID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPermissionGranted()Z
    .registers 6

    .line 767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 769
    .local v0, "uid":I
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_11

    .line 770
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Shell is not allowed."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v1, 0x0

    return v1

    .line 774
    :cond_11
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isPreloadAppUid(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 775
    return v2

    .line 778
    :cond_1b
    const/16 v1, 0x417

    if-ne v0, v1, :cond_27

    .line 779
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Camera is allowed."

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return v2

    .line 783
    :cond_27
    const/16 v1, 0x411

    if-ne v0, v1, :cond_33

    .line 784
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "audioserver is allowed."

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return v2

    .line 788
    :cond_33
    const/4 v1, 0x1

    .line 790
    .local v1, "hasPermission":Z
    :try_start_34
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    .line 795
    goto :goto_5d

    .line 792
    :catch_3d
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process with uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v1, 0x0

    .line 796
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_5d
    return v1
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"  # Ljava/lang/String;

    .line 534
    const-string v0, "TYPE_SCROLL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "SMOOTH_SCROLL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 535
    const-string v0, "GESTURE_DETECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "ANIMATION_BOOST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_26

    .line 538
    :cond_21
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    return v0

    .line 536
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1380
    return-void
.end method

.method private registFGObserver()V
    .registers 3

    .line 1250
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1252
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1255
    goto :goto_e

    .line 1253
    :catch_a
    move-exception v1

    .line 1254
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1256
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static setDynamicFpsLevel(I)V
    .registers 8
    .param p0, "level_"  # I

    .line 969
    move v0, p0

    .line 970
    .local v0, "level":I
    sget v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    if-eq v1, v0, :cond_5b

    const/4 v2, -0x1

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_d

    if-ne v0, v2, :cond_d

    goto :goto_5b

    .line 975
    :cond_d
    :try_start_d
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 976
    .local v1, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_51

    .line 977
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDynamicFpsLevel:: level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    if-eq v0, v2, :cond_37

    if-le v0, v3, :cond_32

    goto :goto_37

    .line 980
    :cond_32
    const/4 v2, 0x1

    if-ge v0, v2, :cond_39

    .line 981
    const/4 v0, 0x1

    goto :goto_39

    .line 979
    :cond_37
    :goto_37
    const/16 v0, 0x3c

    .line 983
    :cond_39
    :goto_39
    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 985
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x462

    invoke-interface {v1, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 988
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_51} :catch_52

    .line 992
    .end local v1  # "surfaceFlinger":Landroid/os/IBinder;
    .end local v2  # "data":Landroid/os/Parcel;
    :cond_51
    goto :goto_5a

    .line 990
    :catch_52
    move-exception v1

    .line 991
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "setDynamicFpsLevel:: failed: SurfaceFlinger is dead!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_5a
    return-void

    .line 971
    :cond_5b
    :goto_5b
    return-void
.end method

.method private triggerTopAppTaskBoost(II)V
    .registers 11
    .param p1, "pid"  # I
    .param p2, "timeout"  # I

    .line 1413
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-nez v0, :cond_5

    .line 1414
    return-void

    .line 1416
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_a

    .line 1417
    return-void

    .line 1419
    :cond_a
    if-gez p1, :cond_d

    .line 1420
    return-void

    .line 1422
    :cond_d
    if-gtz p2, :cond_10

    .line 1423
    return-void

    .line 1426
    :cond_10
    const/16 v0, 0x32a

    if-le p2, v0, :cond_16

    .line 1427
    const/16 p2, 0x32a

    .line 1430
    :cond_16
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1431
    nop

    .line 1435
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1436
    .local v0, "threadList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1437
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_HWUI"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1438
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_RENDERER"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1440
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1441
    .local v1, "perfLockReqList":[I
    const/4 v2, 0x0

    .line 1442
    .local v2, "idx":I
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1443
    .local v4, "tid":I
    add-int/lit8 v5, v2, 0x1

    .end local v2  # "idx":I
    .local v5, "idx":I
    const/high16 v6, 0x40cd0000  # 6.40625f

    aput v6, v1, v2

    .line 1444
    add-int/lit8 v2, v5, 0x1

    .end local v5  # "idx":I
    .restart local v2  # "idx":I
    aput v4, v1, v5

    .line 1445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Topapp task boost - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1446
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1447
    .end local v4  # "tid":I
    goto :goto_4f

    .line 1448
    :cond_85
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .local v3, "idx":I
    const v4, 0x40cd8000  # 6.421875f

    aput v4, v1, v2

    .line 1449
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    const/16 v4, 0x320

    aput v4, v1, v3

    .line 1451
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    invoke-virtual {v3, p2, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1452
    return-void
.end method

.method public static unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .registers 10
    .param p0, "fileZip"  # Ljava/io/File;

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 802
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 803
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 806
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 807
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 808
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 809
    const/4 v4, 0x0

    .line 811
    .local v4, "zentry":Ljava/util/zip/ZipEntry;
    :goto_1b
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_4a

    .line 812
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "classes.dex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2f

    .line 813
    goto :goto_1b

    .line 816
    :cond_2f
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 817
    .local v5, "buf":[B
    const/4 v6, 0x0

    .line 819
    .local v6, "len":I
    :goto_34
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4a

    .line 820
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_40} :catch_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_40} :catch_41

    goto :goto_34

    .line 827
    .end local v4  # "zentry":Ljava/util/zip/ZipEntry;
    .end local v5  # "buf":[B
    .end local v6  # "len":I
    :catch_41
    move-exception v4

    .line 828
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 825
    .end local v4  # "e":Ljava/io/IOException;
    :catch_46
    move-exception v4

    .line 826
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 829
    .end local v4  # "e":Ljava/io/FileNotFoundException;
    :cond_4a
    nop

    .line 831
    :goto_4b
    if-eqz v2, :cond_55

    .line 833
    :try_start_4d
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 836
    goto :goto_55

    .line 834
    :catch_51
    move-exception v4

    .line 835
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 839
    .end local v4  # "e":Ljava/io/IOException;
    :cond_55
    :goto_55
    if-eqz v1, :cond_5f

    .line 841
    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 844
    goto :goto_5f

    .line 842
    :catch_5b
    move-exception v4

    .line 843
    .restart local v4  # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 847
    .end local v4  # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    if-eqz v0, :cond_69

    .line 849
    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 852
    goto :goto_69

    .line 850
    :catch_65
    move-exception v4

    .line 851
    .restart local v4  # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 855
    .end local v4  # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    return-object v3
.end method


# virtual methods
.method public acquire(IILjava/lang/String;I[I)V
    .registers 9
    .param p1, "pid"  # I
    .param p2, "token"  # I
    .param p3, "procName"  # Ljava/lang/String;
    .param p4, "hint"  # I
    .param p5, "list"  # [I

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerAcquire(IILjava/lang/String;I[I)V

    const/16 v0, 0x12

    if-ne p4, v0, :cond_27

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    if-nez v1, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initLauncherPid(I)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-eqz v1, :cond_27

    const/4 v2, 0x4

    invoke-virtual {v1, p1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addThreadToType(III)V

    :cond_27
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v1, :cond_36

    if-ne p4, v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    if-eqz v0, :cond_36

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerAnimationBoost(I)V

    :cond_36
    return-void
.end method

.method acquireVMScanBoost(I)I
    .registers 5
    .param p1, "lockType"  # I

    .line 753
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 754
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "/sys/kernel/mm/vmscan/am_app_launch"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public addDvfsLockAllowedUid(I)I
    .registers 5
    .param p1, "uid"  # I

    .line 1002
    const/16 v0, 0x7d0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_d

    .line 1003
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addDvfsLockAllowedUid - Shell is not allowed"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    return v1

    .line 1007
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1d

    .line 1008
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addDvfsLockAllowedUid is allowed for system only"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return v1

    .line 1012
    :cond_1d
    if-lez p1, :cond_41

    .line 1013
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDvfsLockAllowedUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    return p1

    .line 1017
    :cond_41
    return v1
.end method

.method public checkHintExist(I)Z
    .registers 5
    .param p1, "hint"  # I

    .line 1589
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1590
    const/4 v0, 0x0

    return v0

    .line 1592
    :cond_8
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyPer : checkHintExist - hint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckHintExist(I)Z

    move-result v0

    return v0
.end method

.method public checkResourceExist(I)Z
    .registers 5
    .param p1, "resourceId"  # I

    .line 1598
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1599
    const/4 v0, 0x0

    return v0

    .line 1601
    :cond_8
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HyPer : checkResourceExist - resourceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckResourceExist(I)Z

    move-result v0

    return v0
.end method

.method public checkSysfsIdExist(I)Z
    .registers 3
    .param p1, "sysfsId"  # I

    .line 1581
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1582
    const/4 v0, 0x0

    return v0

    .line 1584
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckSysfsIdExist(I)Z

    move-result v0

    return v0
.end method

.method public disableGpisHint()V
    .registers 2

    .line 1619
    sget-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->disableGpisSkip:Z

    if-eqz v0, :cond_5

    .line 1620
    return-void

    .line 1622
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setGpisHint(Z)V

    .line 1623
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 543
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    return-void

    .line 551
    :cond_3d
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getPreMonitorLog()Lcom/android/server/ssrm/CircularBuffer;

    move-result-object v0

    .line 552
    .local v0, "tempBuffer":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<Ljava/lang/String;>;"
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v1

    if-lez v1, :cond_63

    .line 553
    const-string v1, "\nPREMONITOR LOG\n\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "temp":[Ljava/lang/String;
    if-eqz v1, :cond_63

    array-length v2, v1

    if-lez v2, :cond_63

    .line 556
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_58
    array-length v3, v1

    if-ge v2, v3, :cond_63

    .line 557
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 562
    .end local v1  # "temp":[Ljava/lang/String;
    .end local v2  # "i":I
    :cond_63
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 563
    const-string v1, "ASV INFO"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "/d/asv_summary"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "asv":Ljava/lang/String;
    if-nez v1, :cond_7a

    .line 566
    const-string v1, "N"

    .line 568
    :cond_7a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    .end local v1  # "asv":Ljava/lang/String;
    :cond_7d
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/ssrm/ProcessRestrictionManager;->dump(Ljava/io/PrintWriter;)V

    .line 573
    return-void
.end method

.method public enableInteractionHint(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 1627
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-nez v0, :cond_d

    .line 1628
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 1631
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-eqz v0, :cond_14

    .line 1632
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->enableInteractionHint(Z)V

    .line 1634
    :cond_14
    return-void
.end method

.method public getBatteryRemainingUsageTime(I)I
    .registers 6
    .param p1, "mode"  # I

    .line 863
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_8

    .line 864
    return v1

    .line 867
    :cond_8
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 868
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_20

    .line 869
    nop

    .line 870
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 871
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_20

    .line 873
    :try_start_17
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getRemainingUsageTime(I)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v1

    .line 874
    :catch_1c
    move-exception v3

    .line 875
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 880
    .end local v2  # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_20
    return v1
.end method

.method public getGameThrottlingLevel()I
    .registers 2

    .line 972
    const/4 v0, -0x1

    return v0
.end method

.method public getPreloadList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSortingMachine:Lcom/android/server/ssrm/SortingMachine;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 254
    return-object v1

    .line 256
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/ssrm/SortingMachine;->getPreloadList()Ljava/util/Hashtable;

    move-result-object v0

    .line 258
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_d

    .line 259
    return-object v1

    .line 262
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 264
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 265
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v3  # "key":Ljava/lang/String;
    goto :goto_16

    .line 269
    :cond_26
    return-object v1
.end method

.method public getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;
    .registers 9
    .param p1, "tarPids"  # [I

    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 203
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 204
    .local v1, "userId":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_34

    if-nez v1, :cond_34

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2b

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 208
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2b

    aget v5, p1, v4

    .line 209
    .local v5, "pid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v5  # "pid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 213
    :cond_2b
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ssrm/ProcessCpuUsage;->refresh(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)Landroid/os/CpuTrackerInfo;

    move-result-object v3

    return-object v3

    .line 215
    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_34
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessCpuUsage is not allowed. (uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSsrmStatus(I)I
    .registers 6
    .param p1, "type"  # I

    .line 363
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_9

    .line 364
    return v1

    .line 366
    :cond_9
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v0, :cond_f

    .line 367
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_f
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 371
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_28

    .line 372
    nop

    .line 373
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 374
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_28

    .line 376
    :try_start_1e
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return v1

    .line 377
    :catch_23
    move-exception v3

    .line 378
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 379
    return v1

    .line 383
    .end local v2  # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_28
    return v1
.end method

.method public getSupportedFrequency(II)[I
    .registers 4
    .param p1, "type"  # I
    .param p2, "level"  # I

    .line 1556
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1557
    const/4 v0, 0x0

    return-object v0

    .line 1559
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerGetSupportedFrequency(II)[I

    move-result-object v0

    .line 1560
    .local v0, "table":[I
    return-object v0
.end method

.method public initLauncherPid(I)V
    .registers 3
    .param p1, "launcherPid"  # I

    .line 1457
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_5

    .line 1458
    return-void

    .line 1460
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->setLauncherPid(I)V

    .line 1462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1463
    return-void
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 708
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 709
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 711
    .local v0, "manager":Landroid/app/ActivityManager;
    nop

    .line 712
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 711
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 713
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    if-eqz p1, :cond_32

    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 714
    const/4 v1, 0x1

    return v1

    .line 715
    .end local v2  # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_32
    goto :goto_16

    .line 716
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method public mpdUpdate(I)V
    .registers 2
    .param p1, "mpEnable"  # I

    .line 437
    return-void
.end method

.method native nativeHyPerAcquire(IILjava/lang/String;I[I)V
.end method

.method native nativeHyPerCheckHintExist(I)Z
.end method

.method native nativeHyPerCheckResourceExist(I)Z
.end method

.method native nativeHyPerCheckSysfsIdExist(I)Z
.end method

.method native nativeHyPerGetSupportedFrequency(II)[I
.end method

.method native nativeHyPerRelease(II)V
.end method

.method native nativeHyPerSysfsRead(I)Ljava/lang/String;
.end method

.method native nativeHyPerSysfsWrite(ILjava/lang/String;)V
.end method

.method native nativeSetProfile(IZ)Z
.end method

.method public onTopAppChanged()V
    .registers 8

    .line 1322
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_c

    .line 1323
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onTopAppChanged Error... TopAppManager is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    return-void

    .line 1327
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getLauncherPid()I

    move-result v0

    .line 1328
    .local v0, "launcherPid":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    .line 1329
    iget-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    if-lez v3, :cond_27

    .line 1330
    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    .line 1331
    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerTopAppTaskBoost(II)V

    .line 1333
    :cond_27
    return-void
.end method

.method public readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "endChar"  # C

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_4d

    .line 225
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 226
    .local v0, "mBuffer":[B
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 227
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 229
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_11
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 230
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 231
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 233
    if-lez v3, :cond_38

    .line 235
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_2b

    .line 236
    aget-byte v5, v0, v4

    if-ne v5, p2, :cond_28

    .line 237
    goto :goto_2b

    .line 235
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 240
    :cond_2b
    :goto_2b
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_31} :catch_43
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_31} :catch_41
    .catchall {:try_start_11 .. :try_end_31} :catchall_39

    .line 245
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 246
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 240
    return-object v5

    .line 233
    .end local v3  # "len":I
    .end local v4  # "i":I
    :cond_38
    goto :goto_44

    .line 245
    :catchall_39
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 246
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 247
    throw v3

    .line 243
    :catch_41
    move-exception v3

    goto :goto_44

    .line 242
    :catch_43
    move-exception v3

    .line 245
    :goto_44
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 246
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 247
    nop

    .line 248
    const/4 v3, 0x0

    return-object v3

    .line 223
    .end local v0  # "mBuffer":[B
    .end local v1  # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2  # "is":Ljava/io/FileInputStream;
    :cond_4d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "readFile is allowed for system only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSysfs(I)Ljava/lang/String;
    .registers 3
    .param p1, "sysfsId"  # I

    .line 1573
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1574
    const-string v0, ""

    return-object v0

    .line 1576
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerSysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method registerIntentReceiver()V
    .registers 6

    .line 727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 728
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 737
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 738
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v2, :cond_3b

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    goto :goto_3d

    :cond_3b
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 737
    :goto_3d
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 741
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 742
    .local v1, "filter1":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 744
    const-string v3, "com.sec.android.sdhms"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 745
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 746
    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    goto :goto_5e

    :cond_5c
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 745
    :goto_5e
    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    return-void
.end method

.method public release(II)V
    .registers 4
    .param p1, "pid"  # I
    .param p2, "token"  # I

    .line 1548
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1549
    return-void

    .line 1551
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerRelease(II)V

    .line 1552
    return-void
.end method

.method releaseVMScanBoost(I)I
    .registers 5
    .param p1, "lockType"  # I

    .line 760
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 761
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "/sys/kernel/mm/vmscan/am_app_launch"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public removeDvfsLockAllowedUid(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 1025
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    .line 1026
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "removeDvfsLockAllowedUid is allowed for system only"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    return v2

    .line 1030
    :cond_11
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1031
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDvfsLockAllowedUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1033
    const/4 v0, 0x1

    return v0

    .line 1035
    :cond_40
    return v2
.end method

.method public requestCPUUpdate(II)V
    .registers 9
    .param p1, "cpu"  # I
    .param p2, "enable"  # I

    .line 393
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 394
    return-void

    .line 397
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "core "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "send":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 401
    .local v1, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v2, 0x0

    .line 403
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_42
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "mpdecision"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 405
    .local v3, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 406
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v2, v4

    .line 407
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 408
    .local v4, "byteString":[B
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5c
    .catch Ljava/net/UnknownHostException; {:try_start_42 .. :try_end_5c} :catch_8f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5c} :catch_77
    .catchall {:try_start_42 .. :try_end_5c} :catchall_75

    .line 416
    .end local v3  # "address":Landroid/net/LocalSocketAddress;
    .end local v4  # "byteString":[B
    if-eqz v2, :cond_6a

    .line 417
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_64} :catch_65

    goto :goto_6a

    .line 420
    :catch_65
    move-exception v3

    .line 421
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    .line 422
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_6a
    :goto_6a
    nop

    .line 425
    :goto_6b
    nop

    .line 426
    :try_start_6c
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 430
    :goto_6f
    goto :goto_a7

    .line 428
    :catch_70
    move-exception v3

    .line 429
    .restart local v3  # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    .end local v3  # "ex":Ljava/io/IOException;
    goto :goto_a7

    .line 415
    :catchall_75
    move-exception v3

    goto :goto_a8

    .line 411
    :catch_77
    move-exception v3

    .line 413
    .local v3, "e":Ljava/io/IOException;
    :try_start_78
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    .line 416
    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_89

    .line 417
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_89

    .line 420
    :catch_84
    move-exception v3

    .line 421
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 422
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_89
    :goto_89
    nop

    .line 425
    :goto_8a
    nop

    .line 426
    :try_start_8b
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_70

    goto :goto_6f

    .line 409
    :catch_8f
    move-exception v3

    .line 410
    .local v3, "e1":Ljava/net/UnknownHostException;
    :try_start_90
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_75

    .line 416
    .end local v3  # "e1":Ljava/net/UnknownHostException;
    if-eqz v2, :cond_a1

    .line 417
    :try_start_95
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9b} :catch_9c

    goto :goto_a1

    .line 420
    :catch_9c
    move-exception v3

    .line 421
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 422
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_a1
    :goto_a1
    nop

    .line 425
    :goto_a2
    nop

    .line 426
    :try_start_a3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_70

    goto :goto_6f

    .line 433
    :goto_a7
    return-void

    .line 416
    :goto_a8
    if-eqz v2, :cond_b6

    .line 417
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b0} :catch_b1

    goto :goto_b6

    .line 420
    :catch_b1
    move-exception v4

    .line 421
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    .line 422
    .end local v4  # "ex":Ljava/io/IOException;
    :cond_b6
    :goto_b6
    nop

    .line 425
    :goto_b7
    nop

    .line 426
    :try_start_b8
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    .line 430
    goto :goto_c0

    .line 428
    :catch_bc
    move-exception v4

    .line 429
    .restart local v4  # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    .end local v4  # "ex":Ljava/io/IOException;
    :goto_c0
    throw v3
.end method

.method public requestFreezeSlowdown(IZLjava/lang/String;)I
    .registers 9
    .param p1, "pid"  # I
    .param p2, "isEnabled"  # Z
    .param p3, "type"  # Ljava/lang/String;

    .line 1208
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1209
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, -0x1

    .line 1211
    .local v1, "result":I
    if-eqz p1, :cond_5a

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5a

    .line 1216
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/ssrm/ProcessRestrictionManager;->manageProcessRestrictionState(IZLjava/lang/String;)I

    move-result v2

    move v1, v2

    .line 1218
    const/4 v2, -0x1

    if-ne v1, v2, :cond_50

    .line 1219
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFreezeSlowdown : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_55

    .line 1224
    :cond_50
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1225
    nop

    .line 1226
    return v1

    .line 1224
    :catchall_55
    move-exception v2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1225
    throw v2

    .line 1212
    :cond_5a
    :goto_5a
    return v1
.end method

.method public requestGpis(III)V
    .registers 14
    .param p1, "groupId"  # I
    .param p2, "boostLevel"  # I
    .param p3, "timeout"  # I

    .line 1473
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8c

    const/4 v1, 0x4

    if-le p1, v1, :cond_8

    goto/16 :goto_8c

    .line 1477
    :cond_8
    if-gez p2, :cond_12

    .line 1478
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::Wrong BoostLevel"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return-void

    .line 1481
    :cond_12
    iget v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    if-gtz v1, :cond_1e

    .line 1482
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::SF Tid not set"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    return-void

    .line 1485
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    if-nez v1, :cond_23

    .line 1486
    return-void

    .line 1489
    :cond_23
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPIS : Hint::Add BoostLevel - group : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    boostLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    if-eqz v2, :cond_8b

    .line 1494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1495
    .local v2, "now":J
    int-to-long v4, p3

    .line 1496
    .local v4, "qosTimeout":J
    iget-wide v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_6c

    .line 1497
    sub-long/2addr v6, v2

    int-to-long v8, p3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1499
    :cond_6c
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1500
    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    invoke-virtual {p0, v6, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_80

    .line 1501
    const-string v0, "GPIS::SetProfile default Fail"

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :cond_80
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1504
    add-long v0, v2, v4

    iput-wide v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 1506
    .end local v2  # "now":J
    .end local v4  # "qosTimeout":J
    :cond_8b
    return-void

    .line 1474
    :cond_8c
    :goto_8c
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::Group ID out of range"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .registers 2
    .param p1, "command"  # Ljava/lang/String;

    .line 441
    return-void
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "restrictReason"  # I

    .line 1607
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1608
    return-void

    .line 1610
    :cond_7
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_15

    .line 1611
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1613
    :cond_15
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1614
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 496
    return-void

    .line 499
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 500
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v1, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v1, "ANIMATION_BOOST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 507
    :try_start_30
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, "timeout":I
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerAnimationBoost(I)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_37} :catch_38

    .end local v1  # "timeout":I
    goto :goto_3c

    .line 509
    :catch_38
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 511
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :goto_3c
    goto :goto_91

    .line 512
    :cond_3d
    const-string v1, "GESTURE_DETECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 513
    const-string v1, "com.sec.android.app.sdhms.GestureDetect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_91

    .line 514
    :cond_4b
    const-string v1, "TYPE_SCROLL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 515
    const-string v1, "com.sec.android.app.sdhms.ListScroll"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_91

    .line 516
    :cond_59
    const-string v1, "SMOOTH_SCROLL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 517
    const-string v1, "com.sec.android.app.sdhms.SmoothScroll"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_91

    .line 518
    :cond_67
    const-string v1, "TASK_BOOST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 520
    :try_start_6f
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "strs":[Ljava/lang/String;
    if-eqz v1, :cond_8c

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8c

    .line 522
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 523
    .local v2, "pid":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 524
    .local v3, "timeout":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerTopAppTaskBoost(II)V
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_8c} :catch_8d
    .catch Ljava/lang/NullPointerException; {:try_start_6f .. :try_end_8c} :catch_8d

    .line 528
    .end local v1  # "strs":[Ljava/lang/String;
    .end local v2  # "pid":I
    .end local v3  # "timeout":I
    :cond_8c
    goto :goto_91

    .line 526
    :catch_8d
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 530
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :cond_91
    :goto_91
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 531
    return-void
.end method

.method public sendDrawingTid(III)V
    .registers 9
    .param p1, "pid"  # I
    .param p2, "tid"  # I
    .param p3, "groupId"  # I

    .line 1274
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_c

    .line 1275
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "sendDrawingTid Error... TopAppManager is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    return-void

    .line 1278
    :cond_c
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPIS : sendDrawingTid  pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     JNI loadSuccess? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "targetGroupId":I
    const/4 v1, 0x0

    .line 1283
    .local v1, "updateType":I
    const-string v2, "UNDEFINED"

    .line 1285
    .local v2, "name":Ljava/lang/String;
    packed-switch p3, :pswitch_data_72

    goto :goto_5a

    .line 1292
    :pswitch_42  #0x3
    const-string v2, "APP_HWUI"

    .line 1293
    const/4 v1, 0x1

    .line 1294
    const/4 v0, 0x1

    .line 1295
    goto :goto_5a

    .line 1297
    :pswitch_47  #0x2
    const-string v2, "SF_THREAD"

    .line 1298
    const/4 v1, 0x0

    .line 1299
    const/4 v0, 0x2

    .line 1300
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    .line 1301
    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    goto :goto_5a

    .line 1287
    :pswitch_55  #0x1
    const-string v2, "APP_RENDERER"

    .line 1288
    const/4 v1, 0x0

    .line 1289
    const/4 v0, 0x1

    .line 1290
    nop

    .line 1305
    :goto_5a
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1306
    packed-switch v1, :pswitch_data_7c

    goto :goto_6d

    .line 1311
    :pswitch_61  #0x1
    :try_start_61
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThreadWithDuplicatedName(IILjava/lang/String;)V

    goto :goto_6d

    .line 1308
    :pswitch_67  #0x0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 1309
    nop

    .line 1314
    :goto_6d
    monitor-exit v3

    .line 1315
    return-void

    .line 1314
    :catchall_6f
    move-exception v4

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_6f

    throw v4

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_47  #00000002
        :pswitch_42  #00000003
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_61  #00000001
    .end packed-switch
.end method

.method public sendTid(III)V
    .registers 8
    .param p1, "pid"  # I
    .param p2, "tid"  # I
    .param p3, "type"  # I

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 1361
    packed-switch p3, :pswitch_data_2c

    goto :goto_c

    .line 1363
    :pswitch_7  #0x4
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addThreadToType(III)V

    .line 1366
    :goto_c
    monitor-exit v0

    .line 1369
    goto :goto_2a

    .line 1366
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    .end local p0  # "this":Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local p1  # "pid":I
    .end local p2  # "tid":I
    .end local p3  # "type":I
    :try_start_10
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_11} :catch_11

    .line 1367
    .restart local p0  # "this":Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local p1  # "pid":I
    .restart local p2  # "tid":I
    .restart local p3  # "type":I
    :catch_11
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set scheduling policy, thread does not exist or not allowed : \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_7  #00000004
    .end packed-switch
.end method

.method public setFrozenTime(I)V
    .registers 3
    .param p1, "timeMs"  # I

    .line 1231
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/ProcessRestrictionManager;->setFrozenTime(I)V

    .line 1232
    return-void
.end method

.method public setGameFps(I)V
    .registers 2
    .param p1, "level"  # I

    .line 897
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 898
    return-void
.end method

.method public setGamePowerSaving(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 885
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 886
    return-void
.end method

.method public setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "level"  # Ljava/lang/String;
    .param p2, "head"  # Ljava/lang/String;
    .param p3, "tail"  # Ljava/lang/String;

    .line 943
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 951
    return-void
.end method

.method public setGameTurboMode(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 928
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 929
    return-void
.end method

.method public setGpisHint(Z)V
    .registers 6
    .param p1, "flag"  # Z

    .line 1638
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1639
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1641
    if-eqz p1, :cond_13

    .line 1642
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->requestGpis(III)V

    goto :goto_2f

    .line 1644
    :cond_13
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    if-eqz v0, :cond_2f

    .line 1645
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1646
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1647
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GPIS::SetProfile Disable Fail"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_2f
    :goto_2f
    return-void
.end method

.method public setLauncherPidInitialized(Z)V
    .registers 2
    .param p1, "launcherInit"  # Z

    .line 1466
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1467
    return-void
.end method

.method public supportVRTemperaturesInformation(Ljava/lang/String;II)[F
    .registers 5
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "type"  # I
    .param p3, "source"  # I

    .line 388
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public triggerAnimationBoost(I)V
    .registers 12
    .param p1, "timeout"  # I

    .line 1338
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsTaskBoostExist:Z

    if-nez v0, :cond_9

    goto :goto_77

    .line 1343
    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1344
    :try_start_c
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getThreadForType(I)Ljava/util/Vector;

    move-result-object v1

    .line 1347
    .local v1, "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1348
    .local v3, "tid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Launch anim task_boost trigger tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1349
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1350
    .local v4, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x402611

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 1351
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1352
    .end local v3  # "tid":I
    .end local v4  # "value":Ljava/lang/String;
    goto :goto_1e

    .line 1353
    :cond_69
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->taskboostReleaseRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1354
    nop

    .end local v1  # "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 1355
    return-void

    .line 1354
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_c .. :try_end_76} :catchall_74

    throw v1

    .line 1339
    :cond_77
    :goto_77
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Error... TopAppManager or MultiTaskBoost sysfs is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return-void
.end method

.method public unsetGameTouchParam()V
    .registers 1

    .line 958
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 964
    return-void
.end method

.method public writeSysfs(ILjava/lang/String;)V
    .registers 4
    .param p1, "sysfsId"  # I
    .param p2, "value"  # Ljava/lang/String;

    .line 1565
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1566
    return-void

    .line 1568
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerSysfsWrite(ILjava/lang/String;)V

    .line 1569
    return-void
.end method
