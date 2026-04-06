.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DisplayChangedReceiver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;
    }
.end annotation


# static fields
.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field private static BOOST_ARGUMENT:I = 0x0

.field static final DEBUG:Z

.field private static final GPIS_DISABLE_TIMEOUT:I = 0x7d0

.field private static final HINT_APP_LAUNCH:I = 0x12

.field private static final HINT_GPIS_END:I = -0x1

.field private static final INCREASE_LOW_LATENCY_THRESHOLD:I = 0x320

.field private static final MPCTLV3_SCHED_LOW_LATENCY:I = 0x40cd0000

.field private static final MPCTLV3_SCHED_TASK_BOOST:I = 0x40c80000

.field private static final MPCTLV3_WALT_LOW_LATENCY_TASK_THRESHOLD:I = 0x40cd8000

.field private static final PERF_TUNE_CHECK_DURATION:I = 0x7530

.field private static final PERF_TUNE_CHECK_MAX_COUNT:I = 0x6

.field private static final PROP_PERF_TUNE:Ljava/lang/String; = "persist.sys.perftune.cpugpu"

.field static final TAG:Ljava/lang/String;

.field private static final TASKBOOST_MAX_TIMEOUT:I = 0x32a

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

.field static sCpuCoreNumBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

.field static sCpuFreqBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field private static sIsCallActivityOn:Z

.field private static sIsFactoryBinary:Z

.field private static sfHintAvailable:Z


# instance fields
.field final PATH_VMSCAN_FOR_LAUNCH:Ljava/lang/String;

.field private allowedUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curFps:I

.field private disableGpisRunnable:Ljava/lang/Runnable;

.field private display:Landroid/view/Display;

.field private enableGpis:Z

.field private gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

.field private gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

.field private gpisLock:Ljava/lang/Object;

.field private isLauncherPidInitialized:Z

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

.field mBootComplete:Z

.field private mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

.field mCfmsHandler:Landroid/os/Handler;

.field private mCurrentFGChangedTime:J

.field private mDynamicLoadDetector:Lcom/android/server/ssrm/DynamicLoadDetector;

.field mGpisHintEndTime:J

.field private mGpisReqHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private volatile mPersistentDVFSLocksInfo:I

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field public mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

.field private mProcessObserver:Landroid/app/IProcessObserver;

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

.field private mSupportedLCDFrequency:[I

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

.field mSystemIntentReceiverForJDM:Landroid/content/BroadcastReceiver;

.field mTaskBoostFramework:Landroid/util/BoostFramework;

.field private mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

.field mUserPresent:Z

.field maActivityManager:Landroid/app/ActivityManager;

.field private resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

.field private sfDrawingFinishRunnable:Ljava/lang/Runnable;

.field private sfTid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcurFps(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->curFps:I

    return p0
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

.method static bridge synthetic -$$Nest$fgetsfTid(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurFps(Lcom/android/server/ssrm/CustomFrequencyManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->curFps:I

    return-void
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

.method static bridge synthetic -$$Nest$mgetRefreshRate(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getRefreshRate()I

    move-result p0

    return p0
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

.method static bridge synthetic -$$Nest$sfputsIsCallActivityOn(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsCallActivityOn:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 109
    const-string v0, "GPIS : Exception!!! on Load Library"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    .line 111
    const-class v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    .line 115
    :try_start_d
    const-string v3, "GPIS : loadLibrary!!!"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "cfms.ssrm.samsung"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z
    :try_end_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_1a} :catch_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_32

    .line 122
    :catch_1b
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    goto :goto_33

    .line 118
    .end local v2  # "e":Ljava/lang/Exception;
    :catch_27
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 121
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    .line 126
    .end local v2  # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_32
    nop

    .line 130
    :goto_33
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    .line 170
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 180
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    .line 182
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 184
    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 265
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    invoke-direct {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sCpuFreqBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    .line 267
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    invoke-direct {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sCpuCoreNumBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    .line 269
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    .line 978
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsCallActivityOn:Z

    .line 1103
    const/16 v0, 0x63

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    .line 1572
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    .line 1613
    const/high16 v0, 0x40cd0000  # 6.40625f

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOOST_ARGUMENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 328
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 136
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 172
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 174
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->maActivityManager:Landroid/app/ActivityManager;

    .line 176
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 186
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 190
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPalmInputEventChecker:Lcom/android/server/ssrm/PalmInputEventChecker;

    .line 192
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCPUSetController:Lcom/android/server/ssrm/CPUSetController;

    .line 194
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    .line 198
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 202
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 518
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    .line 524
    iput v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneCheckCount:I

    .line 528
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneRunnable:Ljava/lang/Runnable;

    .line 690
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 692
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 696
    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 698
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSOSMap:Ljava/util/Map;

    .line 700
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    .line 722
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$5;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForJDM:Landroid/content/BroadcastReceiver;

    .line 870
    const-string v3, "/sys/kernel/mm/vmscan/am_app_launch"

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_VMSCAN_FOR_LAUNCH:Ljava/lang/String;

    .line 1132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    .line 1373
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$6;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 1395
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    .line 1452
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    .line 1453
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    .line 1507
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    .line 1508
    iput-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    .line 1576
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1578
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    .line 1582
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfDrawingFinishRunnable:Ljava/lang/Runnable;

    .line 1586
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->curFps:I

    .line 1588
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->display:Landroid/view/Display;

    .line 1590
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    .line 1611
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1657
    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1667
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 330
    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 332
    new-instance v2, Lcom/android/server/ssrm/ProcessCpuUsage;

    invoke-direct {v2}, Lcom/android/server/ssrm/ProcessCpuUsage;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

    .line 333
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 334
    invoke-static {p1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    .line 336
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "SIOP_LOW_TEMP"

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBoostDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 338
    if-eqz v2, :cond_bc

    .line 339
    const/16 v3, 0x44c

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 342
    :cond_bc
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    if-nez v2, :cond_ed

    .line 344
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    .line 346
    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceRestrictionObserver:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    .line 347
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->startObserving(Landroid/content/Context;)V

    .line 349
    invoke-static {}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->getInstance()Lcom/android/server/ssrm/fgapps/GameAppUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 351
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-nez v2, :cond_f0

    .line 352
    iget-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v2, :cond_f0

    .line 353
    new-instance v2, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v2}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 354
    invoke-static {p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    .line 355
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->run()V

    goto :goto_f0

    .line 359
    :cond_ed
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiverForJDM()V

    .line 362
    :cond_f0
    :goto_f0
    const-class v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    monitor-enter v2

    .line 363
    :try_start_f3
    sput-object p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 364
    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_13f

    .line 366
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registFGObserver()V

    .line 368
    if-eqz p1, :cond_124

    .line 369
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 370
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v2, :cond_124

    .line 371
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->display:Landroid/view/Display;

    .line 372
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getRefreshRate()I

    move-result v1

    iput v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->curFps:I

    .line 373
    new-instance v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DisplayChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DisplayChangedReceiver;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 378
    .end local v2  # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_124
    const-class v1, Landroid/os/CustomFrequencyManagerInternal;

    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;

    invoke-direct {v2, p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$CustomFrequencyManagerInternalImpl-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    .line 384
    new-instance v0, Lcom/android/server/ssrm/fgapps/TopAppManager;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 385
    return-void

    .line 364
    :catchall_13f
    move-exception v0

    :try_start_140
    monitor-exit v2
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw v0
.end method

.method private acquirePerfTune(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"  # Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_10

    .line 541
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const/16 v1, 0x15

    const-string v2, "PERF_TUNE_TEST"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 545
    :cond_10
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 546
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_88

    :cond_1d
    goto :goto_4f

    :sswitch_1e
    const-string v1, "max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_28
    const-string v1, "MAX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_32
    const-string v1, "70"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_3c
    const-string v1, "50"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_46
    const-string v1, "30"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x4

    :goto_4f
    packed-switch v0, :pswitch_data_9e

    goto :goto_87

    .line 561
    :pswitch_53  #0x4
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 562
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_87

    .line 557
    :pswitch_60  #0x3
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 558
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 559
    goto :goto_87

    .line 553
    :pswitch_6d  #0x2
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 554
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 555
    goto :goto_87

    .line 549
    :pswitch_7a  #0x0, 0x1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 550
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 551
    nop

    .line 565
    :goto_87
    return-void

    :sswitch_data_88
    .sparse-switch
        0x65d -> :sswitch_46
        0x69b -> :sswitch_3c
        0x6d9 -> :sswitch_32
        0x12944 -> :sswitch_28
        0x1a564 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7a  #00000000
        :pswitch_7a  #00000001
        :pswitch_6d  #00000002
        :pswitch_60  #00000003
        :pswitch_53  #00000004
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .registers 1

    .line 274
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sInstance:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    return-object v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .registers 1

    .line 833
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    .line 834
    const/4 v0, 0x0

    return-object v0

    .line 836
    :cond_6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private getRefreshRate()I
    .registers 4

    .line 1737
    const-string v0, "Error - Fail To Get RefreshRate"

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->display:Landroid/view/Display;

    if-eqz v1, :cond_22

    .line 1739
    :try_start_6
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_e} :catch_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 1743
    :catch_f
    move-exception v1

    .line 1744
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 1740
    .end local v1  # "e":Ljava/lang/Exception;
    :catch_19
    move-exception v1

    .line 1741
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1748
    .end local v1  # "e":Ljava/lang/IllegalStateException;
    :cond_22
    :goto_22
    const/4 v0, -0x1

    return v0
.end method

.method private initLauncherPid(I)V
    .registers 3
    .param p1, "launcherPid"  # I

    .line 1659
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_5

    .line 1660
    return-void

    .line 1662
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->setLauncherPid(I)V

    .line 1664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    .line 1665
    return-void
.end method

.method private initPerfettoLogging(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 687
    new-instance v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerformanceLogging:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    .line 688
    return-void
.end method

.method private initScrollBooster(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 679
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-nez v0, :cond_d

    .line 680
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 682
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mListScrollPerformance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 683
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSmoothScrollPerformance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 684
    return-void
.end method

.method private isAllowedUid()Z
    .registers 5

    .line 1176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1178
    .local v0, "uid":I
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_11

    .line 1179
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Shell is not Allowed"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const/4 v1, 0x0

    return v1

    .line 1182
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

    .line 1183
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPermissionGranted()Z
    .registers 6

    .line 887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 889
    .local v0, "uid":I
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_11

    .line 890
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Shell is not allowed."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v1, 0x0

    return v1

    .line 894
    :cond_11
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isPreloadAppUid(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 895
    return v2

    .line 898
    :cond_1b
    const/16 v1, 0x417

    if-ne v0, v1, :cond_27

    .line 899
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Camera is allowed."

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    return v2

    .line 903
    :cond_27
    const/16 v1, 0x411

    if-ne v0, v1, :cond_33

    .line 904
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "audioserver is allowed."

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return v2

    .line 908
    :cond_33
    const/4 v1, 0x1

    .line 910
    .local v1, "hasPermission":Z
    :try_start_34
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    .line 915
    goto :goto_5d

    .line 912
    :catch_3d
    move-exception v2

    .line 913
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

    .line 914
    const/4 v1, 0x0

    .line 916
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_5d
    return v1
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"  # Ljava/lang/String;

    .line 626
    const-string v0, "TYPE_SCROLL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "SMOOTH_SCROLL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 627
    const-string v0, "GESTURE_DETECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "MULTIWINDOW_FOCUS_PID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_26

    .line 630
    :cond_21
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    return v0

    .line 628
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0
.end method

.method private registFGObserver()V
    .registers 3

    .line 1387
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1389
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1392
    goto :goto_e

    .line 1390
    :catch_a
    move-exception v1

    .line 1391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1393
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static setDynamicFpsLevel(I)V
    .registers 8
    .param p0, "level_"  # I

    .line 1106
    move v0, p0

    .line 1107
    .local v0, "level":I
    sget v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    if-eq v1, v0, :cond_5b

    const/4 v2, -0x1

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_d

    if-ne v0, v2, :cond_d

    goto :goto_5b

    .line 1112
    :cond_d
    :try_start_d
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1113
    .local v1, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_51

    .line 1114
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

    .line 1115
    if-eq v0, v2, :cond_37

    if-le v0, v3, :cond_32

    goto :goto_37

    .line 1117
    :cond_32
    const/4 v2, 0x1

    if-ge v0, v2, :cond_39

    .line 1118
    const/4 v0, 0x1

    goto :goto_39

    .line 1116
    :cond_37
    :goto_37
    const/16 v0, 0x3c

    .line 1120
    :cond_39
    :goto_39
    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDynamicFpsLevel:I

    .line 1121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1122
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    const/16 v3, 0x462

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1125
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_51} :catch_52

    .line 1129
    .end local v1  # "surfaceFlinger":Landroid/os/IBinder;
    .end local v2  # "data":Landroid/os/Parcel;
    :cond_51
    goto :goto_5a

    .line 1127
    :catch_52
    move-exception v1

    .line 1128
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v3, "setDynamicFpsLevel:: failed: SurfaceFlinger is dead!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_5a
    return-void

    .line 1108
    :cond_5b
    :goto_5b
    return-void
.end method

.method private triggerTopAppTaskBoost(II)V
    .registers 11
    .param p1, "pid"  # I
    .param p2, "timeout"  # I

    .line 1615
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-nez v0, :cond_5

    .line 1616
    return-void

    .line 1618
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_a

    .line 1619
    return-void

    .line 1621
    :cond_a
    if-gez p1, :cond_d

    .line 1622
    return-void

    .line 1624
    :cond_d
    if-gtz p2, :cond_10

    .line 1625
    return-void

    .line 1628
    :cond_10
    const/16 v0, 0x32a

    if-le p2, v0, :cond_16

    .line 1629
    const/16 p2, 0x32a

    .line 1632
    :cond_16
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    .line 1633
    nop

    .line 1637
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1638
    .local v0, "threadList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1639
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_HWUI"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1640
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v2, "APP_RENDERER"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1643
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1644
    .local v1, "perfLockReqList":[I
    const/4 v2, 0x0

    .line 1645
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

    .line 1646
    .local v4, "tid":I
    add-int/lit8 v5, v2, 0x1

    .end local v2  # "idx":I
    .local v5, "idx":I
    sget v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOOST_ARGUMENT:I

    aput v6, v1, v2

    .line 1647
    add-int/lit8 v2, v5, 0x1

    .end local v5  # "idx":I
    .restart local v2  # "idx":I
    aput v4, v1, v5

    .line 1648
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

    .line 1649
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1650
    .end local v4  # "tid":I
    goto :goto_4f

    .line 1651
    :cond_85
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "idx":I
    .local v3, "idx":I
    const v4, 0x40cd8000  # 6.421875f

    aput v4, v1, v2

    .line 1652
    add-int/lit8 v2, v3, 0x1

    .end local v3  # "idx":I
    .restart local v2  # "idx":I
    const/16 v4, 0x320

    aput v4, v1, v3

    .line 1654
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTaskBoostFramework:Landroid/util/BoostFramework;

    invoke-virtual {v3, p2, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1655
    return-void
.end method

.method public static unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .registers 10
    .param p0, "fileZip"  # Ljava/io/File;

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 922
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 923
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 926
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 927
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 928
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 929
    const/4 v4, 0x0

    .line 931
    .local v4, "zentry":Ljava/util/zip/ZipEntry;
    :goto_1b
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_4a

    .line 932
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "classes.dex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2f

    .line 933
    goto :goto_1b

    .line 936
    :cond_2f
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 937
    .local v5, "buf":[B
    const/4 v6, 0x0

    .line 939
    .local v6, "len":I
    :goto_34
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4a

    .line 940
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_40} :catch_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_40} :catch_41

    goto :goto_34

    .line 947
    .end local v4  # "zentry":Ljava/util/zip/ZipEntry;
    .end local v5  # "buf":[B
    .end local v6  # "len":I
    :catch_41
    move-exception v4

    .line 948
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 945
    .end local v4  # "e":Ljava/io/IOException;
    :catch_46
    move-exception v4

    .line 946
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 949
    .end local v4  # "e":Ljava/io/FileNotFoundException;
    :cond_4a
    nop

    .line 951
    :goto_4b
    if-eqz v2, :cond_55

    .line 953
    :try_start_4d
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 956
    goto :goto_55

    .line 954
    :catch_51
    move-exception v4

    .line 955
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 959
    .end local v4  # "e":Ljava/io/IOException;
    :cond_55
    :goto_55
    if-eqz v1, :cond_5f

    .line 961
    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 964
    goto :goto_5f

    .line 962
    :catch_5b
    move-exception v4

    .line 963
    .restart local v4  # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 967
    .end local v4  # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    if-eqz v0, :cond_69

    .line 969
    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 972
    goto :goto_69

    .line 970
    :catch_65
    move-exception v4

    .line 971
    .restart local v4  # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 975
    .end local v4  # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    return-object v3
.end method


# virtual methods
.method public acquire(IILjava/lang/String;I[I)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "token"  # I
    .param p3, "procName"  # Ljava/lang/String;
    .param p4, "hint"  # I
    .param p5, "list"  # [I

    .line 1709
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1710
    return-void

    .line 1713
    :cond_d
    const/16 v0, 0x12

    if-ne p4, v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLauncherPidInitialized:Z

    if-nez v0, :cond_18

    .line 1714
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initLauncherPid(I)V

    .line 1716
    :cond_18
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerAcquire(IILjava/lang/String;I[I)V

    .line 1717
    return-void
.end method

.method acquireVMScanBoost(I)I
    .registers 5
    .param p1, "lockType"  # I

    .line 873
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 874
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "/sys/kernel/mm/vmscan/am_app_launch"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public addDvfsLockAllowedUid(I)I
    .registers 5
    .param p1, "uid"  # I

    .line 1139
    const/4 v0, -0x1

    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_d

    .line 1140
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addDvfsLockAllowedUid - Shell is not allowed"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return v0

    .line 1144
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1d

    .line 1145
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addDvfsLockAllowedUid is allowed for system only"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return v0

    .line 1149
    :cond_1d
    if-lez p1, :cond_41

    .line 1150
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

    .line 1151
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    return p1

    .line 1154
    :cond_41
    return v0
.end method

.method public addPerfMgrThread(II)V
    .registers 7
    .param p1, "tid"  # I
    .param p2, "groupId"  # I

    .line 1398
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    if-eqz v0, :cond_35

    if-ltz p1, :cond_35

    const/4 v1, 0x1

    if-lt p2, v1, :cond_35

    const/4 v1, 0x3

    if-le p2, v1, :cond_11

    goto :goto_35

    .line 1401
    :cond_11
    monitor-enter v0

    .line 1403
    :try_start_12
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1404
    monitor-exit v0

    return-void

    .line 1406
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativePerfMgrAddTask(II)I

    .line 1407
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    monitor-exit v0

    .line 1409
    return-void

    .line 1408
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_32

    throw v1

    .line 1399
    :cond_35
    :goto_35
    return-void
.end method

.method public checkHintExist(I)Z
    .registers 5
    .param p1, "hint"  # I

    .line 1793
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1794
    const/4 v0, 0x0

    return v0

    .line 1796
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

    .line 1797
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckHintExist(I)Z

    move-result v0

    return v0
.end method

.method public checkResourceExist(I)Z
    .registers 5
    .param p1, "resourceId"  # I

    .line 1802
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1803
    const/4 v0, 0x0

    return v0

    .line 1805
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

    .line 1806
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckResourceExist(I)Z

    move-result v0

    return v0
.end method

.method public checkSysfsIdExist(I)Z
    .registers 3
    .param p1, "sysfsId"  # I

    .line 1785
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1786
    const/4 v0, 0x0

    return v0

    .line 1788
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerCheckSysfsIdExist(I)Z

    move-result v0

    return v0
.end method

.method public disableGpisHint()V
    .registers 2

    .line 1820
    sget-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->disableGpisSkip:Z

    if-eqz v0, :cond_5

    .line 1821
    return-void

    .line 1823
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setGpisHint(Z)V

    .line 1824
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 635
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    return-void

    .line 643
    :cond_3f
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getPreMonitorLog()Lcom/android/server/ssrm/CircularBuffer;

    move-result-object v0

    .line 644
    .local v0, "tempBuffer":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<Ljava/lang/String;>;"
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v1

    if-lez v1, :cond_65

    .line 645
    const-string v1, "\nPREMONITOR LOG\n\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "temp":[Ljava/lang/String;
    if-eqz v1, :cond_65

    array-length v2, v1

    if-lez v2, :cond_65

    .line 648
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5a
    array-length v3, v1

    if-ge v2, v3, :cond_65

    .line 649
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 654
    .end local v1  # "temp":[Ljava/lang/String;
    .end local v2  # "i":I
    :cond_65
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 655
    const-string v1, "ASV INFO"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "/d/asv_summary"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "asv":Ljava/lang/String;
    if-nez v1, :cond_7c

    .line 658
    const-string v1, "N"

    .line 660
    :cond_7c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const-string v2, "\nCFMS BOOST USAGE\n\nType : CPU MIN FREQ"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sCpuFreqBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    monitor-enter v2

    .line 664
    :try_start_87
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sCpuFreqBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    invoke-virtual {v3, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;->print(Ljava/io/PrintWriter;)V

    .line 665
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_a2

    .line 666
    const-string v2, "\nType : # OF MIN ACTIVE CORE"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sCpuCoreNumBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    monitor-enter v3

    .line 668
    :try_start_95
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sCpuCoreNumBoostUsage:Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;

    invoke-virtual {v2, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;->print(Ljava/io/PrintWriter;)V

    .line 669
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_9f

    .line 670
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_a5

    .line 669
    :catchall_9f
    move-exception v2

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v2

    .line 665
    :catchall_a2
    move-exception v3

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v3

    .line 673
    .end local v1  # "asv":Ljava/lang/String;
    :cond_a5
    :goto_a5
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/ssrm/ProcessRestrictionManager;->dump(Ljava/io/PrintWriter;)V

    .line 675
    return-void
.end method

.method public enableInteractionHint(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 1828
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-nez v0, :cond_d

    .line 1829
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 1832
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGestureDetectPerformance:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    if-eqz v0, :cond_14

    .line 1833
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->enableInteractionHint(Z)V

    .line 1835
    :cond_14
    return-void
.end method

.method public getBatteryRemainingUsageTime(I)I
    .registers 6
    .param p1, "mode"  # I

    .line 1000
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_8

    .line 1001
    return v1

    .line 1004
    :cond_8
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1005
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_20

    .line 1006
    nop

    .line 1007
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 1008
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_20

    .line 1010
    :try_start_17
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getRemainingUsageTime(I)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v1

    .line 1011
    :catch_1c
    move-exception v3

    .line 1012
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1017
    .end local v2  # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_20
    return v1
.end method

.method public getGameThrottlingLevel()I
    .registers 2

    .line 957
    const/4 v0, -0x1

    return v0
.end method

.method public getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;
    .registers 9
    .param p1, "tarPids"  # [I

    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 282
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 283
    .local v1, "userId":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_34

    if-nez v1, :cond_34

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2b

    .line 286
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 287
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2b

    aget v5, p1, v4

    .line 288
    .local v5, "pid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v5  # "pid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 292
    :cond_2b
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mProcessCpuUsage:Lcom/android/server/ssrm/ProcessCpuUsage;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mIsolateUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ssrm/ProcessCpuUsage;->refresh(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)Landroid/os/CpuTrackerInfo;

    move-result-object v3

    return-object v3

    .line 294
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

    .line 296
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSsrmStatus(I)I
    .registers 6
    .param p1, "type"  # I

    .line 423
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_9

    .line 424
    return v1

    .line 426
    :cond_9
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v0, :cond_f

    .line 427
    const/4 v0, 0x0

    return v0

    .line 430
    :cond_f
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 431
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_28

    .line 432
    nop

    .line 433
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 434
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_28

    .line 436
    :try_start_1e
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return v1

    .line 437
    :catch_23
    move-exception v3

    .line 438
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 439
    return v1

    .line 443
    .end local v2  # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_28
    return v1
.end method

.method public getSupportedFrequency(II)[I
    .registers 4
    .param p1, "type"  # I
    .param p2, "level"  # I

    .line 1729
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1730
    const/4 v0, 0x0

    return-object v0

    .line 1732
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerGetSupportedFrequency(II)[I

    move-result-object v0

    .line 1733
    .local v0, "table":[I
    return-object v0
.end method

.method public isAmsBoostAndNotCallStateAndScreenOff(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "AMS_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsCallActivityOn:Z

    if-nez v1, :cond_2d

    .line 984
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 985
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 987
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    nop

    .line 988
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 987
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_2d

    .line 989
    const/4 v0, 0x1

    .line 992
    .end local v1  # "tm":Landroid/telephony/TelephonyManager;
    :cond_2d
    return v0
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 821
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 822
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 824
    .local v0, "manager":Landroid/app/ActivityManager;
    nop

    .line 825
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 824
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 826
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    if-eqz p1, :cond_32

    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 827
    const/4 v1, 0x1

    return v1

    .line 828
    .end local v2  # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_32
    goto :goto_16

    .line 829
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$new$0$com-android-server-ssrm-CustomFrequencyManagerService()V
    .registers 2

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1580
    return-void
.end method

.method synthetic lambda$new$1$com-android-server-ssrm-CustomFrequencyManagerService()V
    .registers 2

    .line 1583
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativePerfMgrRemoveTask(I)I

    .line 1584
    return-void
.end method

.method public mpdUpdate(I)V
    .registers 2
    .param p1, "mpEnable"  # I

    .line 497
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

.method native nativePerfMgrAddTask(II)I
.end method

.method native nativePerfMgrRemoveTask(I)I
.end method

.method native nativePerfMgrSendDuration(IIIJ)I
.end method

.method native nativePerfMgrSendFps(I)I
.end method

.method native nativeSetProfile(IZ)Z
.end method

.method public onTopAppChanged()V
    .registers 10

    .line 1511
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_c

    .line 1512
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onTopAppChanged Error... TopAppManager is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    return-void

    .line 1516
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getLauncherPid()I

    move-result v0

    .line 1517
    .local v0, "launcherPid":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFGChangedTime:J

    .line 1518
    iget-wide v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    if-lez v3, :cond_27

    .line 1519
    iput-wide v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLastBoostTime:J

    .line 1520
    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerTopAppTaskBoost(II)V

    .line 1523
    :cond_27
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1524
    const/4 v2, 0x1

    :try_start_2b
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->removePerfMgrInGroup(I)V

    .line 1526
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getCurrentTopAppPids()Ljava/util/Vector;

    move-result-object v3

    .line 1527
    .local v3, "topAppPids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1528
    .local v5, "pid":I
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v7, "APP_RENDERER"

    invoke-virtual {v6, v5, v7}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v6

    .line 1529
    .local v6, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    const-string v8, "APP_HWUI"

    invoke-virtual {v7, v5, v8}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1531
    invoke-virtual {p0, v5, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->addPerfMgrThread(II)V

    .line 1532
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_62
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1533
    .local v8, "tid":I
    invoke-virtual {p0, v8, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->addPerfMgrThread(II)V

    .line 1534
    .end local v8  # "tid":I
    goto :goto_62

    .line 1535
    .end local v5  # "pid":I
    .end local v6  # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_76
    goto :goto_38

    .line 1536
    .end local v3  # "topAppPids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_77
    monitor-exit v1

    .line 1537
    return-void

    .line 1536
    :catchall_79
    move-exception v2

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_2b .. :try_end_7b} :catchall_79

    throw v2
.end method

.method public readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "endChar"  # C

    .line 301
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 302
    .local v0, "mBuffer":[B
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 303
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 305
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 306
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 307
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 309
    if-lez v3, :cond_30

    .line 311
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_23

    .line 312
    aget-byte v5, v0, v4

    if-ne v5, p2, :cond_20

    .line 313
    goto :goto_23

    .line 311
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 316
    :cond_23
    :goto_23
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_29} :catch_3b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_39
    .catchall {:try_start_9 .. :try_end_29} :catchall_31

    .line 321
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 322
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 316
    return-object v5

    .line 309
    .end local v3  # "len":I
    .end local v4  # "i":I
    :cond_30
    goto :goto_3c

    .line 321
    :catchall_31
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 322
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 323
    throw v3

    .line 319
    :catch_39
    move-exception v3

    goto :goto_3c

    .line 318
    :catch_3b
    move-exception v3

    .line 321
    :goto_3c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 322
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 323
    nop

    .line 324
    const/4 v3, 0x0

    return-object v3
.end method

.method public readSysfs(I)Ljava/lang/String;
    .registers 3
    .param p1, "sysfsId"  # I

    .line 1777
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1778
    const-string v0, ""

    return-object v0

    .line 1780
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerSysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method registerIntentReceiver()V
    .registers 5

    .line 840
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 841
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 850
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 851
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    goto :goto_3d

    :cond_3b
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 850
    :goto_3d
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 855
    .local v1, "filter1":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 857
    const/4 v2, 0x0

    const-string v3, "com.sec.android.sdhms"

    invoke-virtual {v1, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 858
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 859
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsFactoryBinary:Z

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForFactoryBinary:Landroid/content/BroadcastReceiver;

    goto :goto_60

    :cond_5e
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 858
    :goto_60
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 861
    return-void
.end method

.method registerIntentReceiverForJDM()V
    .registers 4

    .line 864
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 865
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 867
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiverForJDM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    return-void
.end method

.method public release(II)V
    .registers 4
    .param p1, "pid"  # I
    .param p2, "token"  # I

    .line 1721
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isAllowedUid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1722
    return-void

    .line 1724
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerRelease(II)V

    .line 1725
    return-void
.end method

.method releaseVMScanBoost(I)I
    .registers 5
    .param p1, "lockType"  # I

    .line 880
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 881
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "/sys/kernel/mm/vmscan/am_app_launch"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public removeDvfsLockAllowedUid(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 1162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_11

    .line 1163
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v2, "removeDvfsLockAllowedUid is allowed for system only"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return v1

    .line 1167
    :cond_11
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1168
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

    .line 1169
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->allowedUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1170
    const/4 v0, 0x1

    return v0

    .line 1172
    :cond_40
    return v1
.end method

.method public removePerfMgrInGroup(I)V
    .registers 9
    .param p1, "groupId"  # I

    .line 1424
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    if-nez v0, :cond_9

    goto :goto_6c

    .line 1427
    :cond_9
    monitor-enter v0

    .line 1428
    :try_start_a
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1429
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1430
    .local v2, "targetTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1431
    .local v4, "tid":I
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1432
    .local v5, "tidGroup":Ljava/lang/Integer;
    if-eqz v5, :cond_44

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_44

    .line 1433
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1435
    .end local v4  # "tid":I
    .end local v5  # "tidGroup":Ljava/lang/Integer;
    :cond_44
    goto :goto_19

    .line 1437
    :cond_45
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1438
    .restart local v4  # "tid":I
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativePerfMgrRemoveTask(I)I

    .line 1439
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    nop

    .end local v4  # "tid":I
    goto :goto_49

    .line 1441
    .end local v1  # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2  # "targetTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_67
    monitor-exit v0

    .line 1442
    return-void

    .line 1441
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_a .. :try_end_6b} :catchall_69

    throw v1

    .line 1425
    :cond_6c
    :goto_6c
    return-void
.end method

.method public removePerfMgrThread(I)V
    .registers 5
    .param p1, "tid"  # I

    .line 1412
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    if-nez v0, :cond_9

    goto :goto_27

    .line 1415
    :cond_9
    monitor-enter v0

    .line 1416
    :try_start_a
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1417
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativePerfMgrRemoveTask(I)I

    .line 1418
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisReqHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    :cond_22
    monitor-exit v0

    .line 1421
    return-void

    .line 1420
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    throw v1

    .line 1413
    :cond_27
    :goto_27
    return-void
.end method

.method public requestCPUUpdate(II)V
    .registers 9
    .param p1, "cpu"  # I
    .param p2, "enable"  # I

    .line 453
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 454
    return-void

    .line 457
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

    .line 458
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

    .line 460
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 461
    .local v1, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v2, 0x0

    .line 463
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_42
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "mpdecision"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 465
    .local v3, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 466
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v2, v4

    .line 467
    const-string v4, "UTF8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 468
    .local v4, "byteString":[B
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5c
    .catch Ljava/net/UnknownHostException; {:try_start_42 .. :try_end_5c} :catch_8f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5c} :catch_77
    .catchall {:try_start_42 .. :try_end_5c} :catchall_75

    .line 476
    .end local v3  # "address":Landroid/net/LocalSocketAddress;
    .end local v4  # "byteString":[B
    if-eqz v2, :cond_6a

    .line 477
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 478
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_64} :catch_65

    goto :goto_6a

    .line 480
    :catch_65
    move-exception v3

    .line 481
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    .line 482
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_6a
    :goto_6a
    nop

    .line 485
    :goto_6b
    nop

    .line 486
    :try_start_6c
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 490
    :goto_6f
    goto :goto_a7

    .line 488
    :catch_70
    move-exception v3

    .line 489
    .restart local v3  # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 491
    .end local v3  # "ex":Ljava/io/IOException;
    goto :goto_a7

    .line 475
    :catchall_75
    move-exception v3

    goto :goto_a8

    .line 471
    :catch_77
    move-exception v3

    .line 473
    .local v3, "e":Ljava/io/IOException;
    :try_start_78
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    .line 476
    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_89

    .line 477
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 478
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_89

    .line 480
    :catch_84
    move-exception v3

    .line 481
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 482
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_89
    :goto_89
    nop

    .line 485
    :goto_8a
    nop

    .line 486
    :try_start_8b
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_70

    goto :goto_6f

    .line 469
    :catch_8f
    move-exception v3

    .line 470
    .local v3, "e1":Ljava/net/UnknownHostException;
    :try_start_90
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_75

    .line 476
    .end local v3  # "e1":Ljava/net/UnknownHostException;
    if-eqz v2, :cond_a1

    .line 477
    :try_start_95
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 478
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9b} :catch_9c

    goto :goto_a1

    .line 480
    :catch_9c
    move-exception v3

    .line 481
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 482
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_a1
    :goto_a1
    nop

    .line 485
    :goto_a2
    nop

    .line 486
    :try_start_a3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_70

    goto :goto_6f

    .line 493
    :goto_a7
    return-void

    .line 476
    :goto_a8
    if-eqz v2, :cond_b6

    .line 477
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 478
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b0} :catch_b1

    goto :goto_b6

    .line 480
    :catch_b1
    move-exception v4

    .line 481
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    .line 482
    .end local v4  # "ex":Ljava/io/IOException;
    :cond_b6
    :goto_b6
    nop

    .line 485
    :goto_b7
    nop

    .line 486
    :try_start_b8
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    .line 490
    goto :goto_c0

    .line 488
    :catch_bc
    move-exception v4

    .line 489
    .restart local v4  # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 491
    .end local v4  # "ex":Ljava/io/IOException;
    :goto_c0
    throw v3
.end method

.method public requestFreezeSlowdown(IZLjava/lang/String;)I
    .registers 9
    .param p1, "pid"  # I
    .param p2, "isEnabled"  # Z
    .param p3, "type"  # Ljava/lang/String;

    .line 1343
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1344
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, -0x1

    .line 1346
    .local v1, "result":I
    if-nez p1, :cond_8

    .line 1347
    return v1

    .line 1351
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_5a

    const/4 v3, -0x1

    if-nez v2, :cond_14

    .line 1352
    nop

    .line 1363
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1352
    return v3

    .line 1355
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/ssrm/ProcessRestrictionManager;->manageProcessRestrictionState(IZLjava/lang/String;)I

    move-result v2

    move v1, v2

    .line 1357
    if-ne v1, v3, :cond_55

    .line 1358
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
    :try_end_55
    .catchall {:try_start_14 .. :try_end_55} :catchall_5a

    .line 1363
    :cond_55
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1364
    nop

    .line 1365
    return v1

    .line 1363
    :catchall_5a
    move-exception v2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1364
    throw v2
.end method

.method public requestGpis(III)V
    .registers 14
    .param p1, "groupId"  # I
    .param p2, "boostLevel"  # I
    .param p3, "timeout"  # I

    .line 1670
    const/4 v0, 0x1

    if-lt p1, v0, :cond_98

    const/4 v1, 0x3

    if-le p1, v1, :cond_8

    goto/16 :goto_98

    .line 1674
    :cond_8
    if-gez p2, :cond_12

    .line 1675
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::Wrong BoostLevel"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    return-void

    .line 1678
    :cond_12
    iget v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    if-gtz v1, :cond_1e

    .line 1679
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::SF Tid not set"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    return-void

    .line 1682
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    if-nez v1, :cond_23

    .line 1683
    return-void

    .line 1686
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

    const-string v3, "   CurFPS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->curFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    if-eqz v2, :cond_97

    .line 1691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1692
    .local v2, "now":J
    int-to-long v4, p3

    .line 1693
    .local v4, "qosTimeout":J
    iget-wide v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_78

    .line 1694
    sub-long/2addr v6, v2

    int-to-long v8, p3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1696
    :cond_78
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1697
    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    invoke-virtual {p0, v6, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1698
    const-string v0, "GPIS::SetProfile default Fail"

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_8c
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisHintRunnable:Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1701
    add-long v0, v2, v4

    iput-wide v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 1703
    .end local v2  # "now":J
    .end local v4  # "qosTimeout":J
    :cond_97
    return-void

    .line 1671
    :cond_98
    :goto_98
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "requestGpis::Group ID out of range"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .registers 2
    .param p1, "command"  # Ljava/lang/String;

    .line 501
    return-void
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "restrictReason"  # I

    .line 1811
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_e

    .line 1812
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1814
    :cond_e
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1815
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 570
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 571
    return-void

    .line 575
    :cond_7
    const-string v0, "EXEC_ACTIVITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 576
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sIsCallActivityOn:Z

    .line 577
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    return-void

    .line 586
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 587
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "pid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "uid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v2, "GESTURE_DETECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 598
    const-string v1, "com.sec.android.app.sdhms.GestureDetect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_aa

    .line 599
    :cond_4e
    const-string v2, "TYPE_SCROLL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 600
    const-string v1, "com.sec.android.app.sdhms.ListScroll"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_aa

    .line 601
    :cond_5c
    const-string v2, "SMOOTH_SCROLL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 602
    const-string v1, "com.sec.android.app.sdhms.SmoothScroll"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_aa

    .line 603
    :cond_6a
    const-string v2, "MULTIWINDOW_FOCUS_PID"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 605
    :try_start_72
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 606
    .local v1, "focusPid":I
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->setFocusTopAppPid(I)V
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_7b} :catch_7c

    .end local v1  # "focusPid":I
    goto :goto_80

    .line 607
    :catch_7c
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 609
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :goto_80
    goto :goto_aa

    .line 610
    :cond_81
    const-string v2, "TASK_BOOST"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 612
    :try_start_89
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "strs":[Ljava/lang/String;
    if-eqz v2, :cond_a5

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a5

    .line 614
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 615
    .local v3, "pid":I
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 616
    .local v1, "timeout":I
    invoke-direct {p0, v3, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->triggerTopAppTaskBoost(II)V
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_a5} :catch_a6
    .catch Ljava/lang/NullPointerException; {:try_start_89 .. :try_end_a5} :catch_a6

    .line 620
    .end local v1  # "timeout":I
    .end local v2  # "strs":[Ljava/lang/String;
    .end local v3  # "pid":I
    :cond_a5
    goto :goto_aa

    .line 618
    :catch_a6
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 622
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :cond_aa
    :goto_aa
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 623
    return-void
.end method

.method public sendDrawingTid(III)V
    .registers 10
    .param p1, "pid"  # I
    .param p2, "tid"  # I
    .param p3, "groupId"  # I

    .line 1457
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-nez v0, :cond_c

    .line 1458
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "sendDrawingTid Error... TopAppManager is not exist"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    return-void

    .line 1461
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

    .line 1464
    const/4 v0, 0x0

    .line 1465
    .local v0, "targetGroupId":I
    const/4 v1, 0x0

    .line 1466
    .local v1, "updateType":I
    const-string v2, "UNDEFINED"

    .line 1468
    .local v2, "name":Ljava/lang/String;
    packed-switch p3, :pswitch_data_88

    goto :goto_5a

    .line 1475
    :pswitch_42  #0x3
    const-string v2, "APP_HWUI"

    .line 1476
    const/4 v1, 0x1

    .line 1477
    const/4 v0, 0x1

    .line 1478
    goto :goto_5a

    .line 1480
    :pswitch_47  #0x2
    const-string v2, "SF_THREAD"

    .line 1481
    const/4 v1, 0x0

    .line 1482
    const/4 v0, 0x2

    .line 1483
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    .line 1484
    iput p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    goto :goto_5a

    .line 1470
    :pswitch_55  #0x1
    const-string v2, "APP_RENDERER"

    .line 1471
    const/4 v1, 0x0

    .line 1472
    const/4 v0, 0x1

    .line 1473
    nop

    .line 1488
    :goto_5a
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->gpisLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1489
    packed-switch v1, :pswitch_data_92

    goto :goto_6d

    .line 1494
    :pswitch_61  #0x1
    :try_start_61
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThreadWithDuplicatedName(IILjava/lang/String;)V

    goto :goto_6d

    .line 1491
    :pswitch_67  #0x0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 1492
    nop

    .line 1499
    :goto_6d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v4}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getCurrentTopAppPids()Ljava/util/Vector;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1500
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->addPerfMgrThread(II)V

    .line 1501
    invoke-virtual {p0, p2, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->addPerfMgrThread(II)V

    .line 1504
    :cond_83
    monitor-exit v3

    .line 1505
    return-void

    .line 1504
    :catchall_85
    move-exception v4

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_85

    throw v4

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_47  #00000002
        :pswitch_42  #00000003
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_61  #00000001
    .end packed-switch
.end method

.method public sendDrawingTime(IIJ)V
    .registers 13
    .param p1, "tid"  # I
    .param p2, "groupId"  # I
    .param p3, "duration"  # J

    .line 1544
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPIS : sendDrawingTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     JNI loadSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isLoaded:Z

    if-nez v0, :cond_33

    .line 1548
    return-void

    .line 1550
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    if-nez v0, :cond_38

    .line 1551
    return-void

    .line 1554
    :cond_38
    packed-switch p2, :pswitch_data_76

    goto :goto_75

    .line 1561
    :pswitch_3c  #0x2
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfDrawingFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1562
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfDrawingFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1563
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->curFps:I

    const/16 v1, 0x78

    if-lt v0, v1, :cond_75

    .line 1564
    const/4 v5, -0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativePerfMgrSendDuration(IIIJ)I

    goto :goto_75

    .line 1556
    :pswitch_5b  #0x1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mTopAppManager:Lcom/android/server/ssrm/fgapps/TopAppManager;

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getCurrentTopAppPids()Ljava/util/Vector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1557
    const/4 v4, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativePerfMgrSendDuration(IIIJ)I

    .line 1568
    :cond_75
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5b  #00000001
        :pswitch_3c  #00000002
    .end packed-switch
.end method

.method public setFrozenTime(I)V
    .registers 3
    .param p1, "timeMs"  # I

    .line 1370
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/ProcessRestrictionManager;->setFrozenTime(I)V

    .line 1371
    return-void
.end method

.method public setGameFps(I)V
    .registers 2
    .param p1, "level"  # I

    .line 1034
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1035
    return-void
.end method

.method public setGamePowerSaving(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 1022
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1023
    return-void
.end method

.method public setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "level"  # Ljava/lang/String;
    .param p2, "head"  # Ljava/lang/String;
    .param p3, "tail"  # Ljava/lang/String;

    .line 1080
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1088
    return-void
.end method

.method public setGameTurboMode(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 1065
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1066
    return-void
.end method

.method public setGpisHint(Z)V
    .registers 6
    .param p1, "flag"  # Z

    .line 1839
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1840
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->enableGpis:Z

    .line 1842
    if-eqz p1, :cond_13

    .line 1843
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->requestGpis(III)V

    goto :goto_2f

    .line 1845
    :cond_13
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfHintAvailable:Z

    if-eqz v0, :cond_2f

    .line 1846
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->disableGpisRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1847
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->sfTid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1848
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GPIS::SetProfile Disable Fail"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    :cond_2f
    :goto_2f
    return-void
.end method

.method public supportVRTemperaturesInformation(Ljava/lang/String;II)[F
    .registers 5
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "type"  # I
    .param p3, "source"  # I

    .line 448
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public triggerAppStart()V
    .registers 5

    .line 504
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 505
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1b

    .line 506
    nop

    .line 507
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 508
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_1b

    .line 510
    :try_start_f
    const-string v2, "APP_START"

    const-string v3, "start"

    invoke-interface {v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    .line 513
    goto :goto_1b

    .line 511
    :catch_17
    move-exception v2

    .line 512
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 516
    .end local v1  # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public unsetGameTouchParam()V
    .registers 1

    .line 1095
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    .line 1101
    return-void
.end method

.method public writeSysfs(ILjava/lang/String;)V
    .registers 4
    .param p1, "sysfsId"  # I
    .param p2, "value"  # Ljava/lang/String;

    .line 1769
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1770
    return-void

    .line 1772
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerSysfsWrite(ILjava/lang/String;)V

    .line 1773
    return-void
.end method
