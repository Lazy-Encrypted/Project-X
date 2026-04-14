.class public Lcom/android/server/ssrm/CustomProcessCpuTracker;
.super Ljava/lang/Object;
.source "CustomProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;,
        Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;,
        Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final MINIMUM_TOP_LOGGING_LOAD:F = 10.0f

.field private static final MINIMUM_TOP_SKIP_COUNT:I = 0x4

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private final mCcuStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCpuUidFullTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private mLowLoadSkipCount:I

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private mSamplingCount:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z

.field private final mWorkingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingThreadsSorted:Z


# direct methods
.method public static synthetic $r8$lambda$RaDaK79KZsvBisyC8DrpTV2JC3g(Lcom/android/server/ssrm/CustomProcessCpuTracker;I[J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->lambda$collectCcuStats$0(I[J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 71
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 101
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 115
    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 327
    new-instance v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_2c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_4e
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_80
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 6
    .param p1, "includeThreads"  # Z

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessStatsData:[J

    .line 69
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSinglePidStatsData:[J

    .line 97
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 99
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsData:[J

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSystemCpuData:[J

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoadAverageData:[F

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    .line 134
    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    .line 136
    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSamplingCount:I

    .line 199
    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    .line 201
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    .line 203
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

    invoke-direct {v1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCpuUidFullTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

    .line 346
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mIncludeThreads:Z

    .line 347
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 348
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    .line 349
    return-void
.end method

.method private declared-synchronized collectCcuStats()V
    .registers 4

    monitor-enter p0

    .line 703
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 704
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCpuUidFullTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

    new-instance v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ssrm/CustomProcessCpuTracker;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->readDelta(ZLcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 712
    monitor-exit p0

    return-void

    .line 702
    .end local p0  # "this":Lcom/android/server/ssrm/CustomProcessCpuTracker;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I
    .registers 38
    .param p1, "statsFile"  # Ljava/lang/String;
    .param p2, "parentPid"  # I
    .param p3, "first"  # Z
    .param p4, "curPids"  # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 512
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;>;"
    .local p6, "tarPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    if-nez v10, :cond_14

    .line 513
    move-object/from16 v11, p1

    move-object/from16 v12, p4

    invoke-static {v11, v12}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    move-object v13, v0

    .local v0, "pids":[I
    goto :goto_32

    .line 515
    .end local v0  # "pids":[I
    :cond_14
    move-object/from16 v11, p1

    move-object/from16 v12, p4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 516
    .restart local v0  # "pids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, v0

    if-ge v1, v2, :cond_31

    .line 517
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_31
    move-object v13, v0

    .line 521
    .end local v0  # "pids":[I
    .end local v1  # "i":I
    .local v13, "pids":[I
    :goto_32
    const/4 v14, 0x0

    if-nez v13, :cond_37

    move v0, v14

    goto :goto_38

    :cond_37
    array-length v0, v13

    :goto_38
    move v15, v0

    .line 522
    .local v15, "NP":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 523
    .local v0, "NS":I
    const/4 v1, 0x0

    .line 524
    .local v1, "curStatsIndex":I
    const/4 v2, 0x0

    move v6, v0

    move v5, v2

    .end local v0  # "NS":I
    .local v5, "i":I
    .local v6, "NS":I
    :goto_41
    if-ge v5, v15, :cond_28f

    .line 525
    aget v3, v13, v5

    .line 526
    .local v3, "pid":I
    if-gez v3, :cond_4d

    .line 527
    move v15, v3

    .line 528
    move v12, v8

    move-object/from16 v18, v13

    goto/16 :goto_297

    .line 530
    :cond_4d
    const/4 v0, 0x0

    if-ge v1, v6, :cond_57

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    goto :goto_58

    :cond_57
    move-object v2, v0

    .line 532
    .local v2, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :goto_58
    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v2, :cond_179

    iget v4, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    if-ne v4, v3, :cond_179

    .line 534
    iput-boolean v14, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    .line 535
    iput-boolean v14, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 536
    add-int/lit8 v19, v1, 0x1

    .line 541
    .end local v1  # "curStatsIndex":I
    .local v19, "curStatsIndex":I
    iget-boolean v1, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_163

    .line 542
    move/from16 v20, v15

    .end local v15  # "NP":I
    .local v20, "NP":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 544
    .local v14, "uptime":J
    iget-object v4, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessStatsData:[J

    .line 545
    .local v4, "procStats":[J
    iget-object v1, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v5

    .end local v5  # "i":I
    .local v21, "i":I
    sget-object v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v1, v5, v0, v4, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 547
    move/from16 v22, v6

    move-object v6, v7

    move-object/from16 v18, v13

    move/from16 v10, v21

    const/4 v0, 0x1

    goto/16 :goto_16f

    .line 550
    :cond_8e
    move/from16 v22, v6

    const/4 v0, 0x0

    .end local v6  # "NS":I
    .local v22, "NS":I
    aget-wide v6, v4, v0

    .line 551
    .local v6, "minfaults":J
    move-wide/from16 v23, v6

    const/4 v0, 0x1

    .end local v6  # "minfaults":J
    .local v23, "minfaults":J
    aget-wide v6, v4, v0

    .line 552
    .local v6, "majfaults":J
    aget-wide v0, v4, v17

    move-object/from16 v5, p0

    move-wide/from16 v25, v23

    move-wide/from16 v23, v6

    .end local v6  # "majfaults":J
    .local v23, "majfaults":J
    .local v25, "minfaults":J
    iget-wide v6, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v6

    .line 553
    .local v0, "utime":J
    aget-wide v16, v4, v16

    mul-long v6, v6, v16

    .line 555
    .local v6, "stime":J
    iget-wide v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_d2

    iget-wide v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    cmp-long v10, v6, v10

    if-nez v10, :cond_d2

    .line 556
    const/4 v10, 0x0

    iput v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 557
    iput v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 558
    iput v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 559
    iput v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 560
    iget-boolean v11, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    if-eqz v11, :cond_ca

    .line 561
    iput-boolean v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    move-object v6, v5

    move-object/from16 v18, v13

    move/from16 v10, v21

    const/4 v0, 0x1

    goto/16 :goto_16f

    .line 560
    :cond_ca
    move-object v6, v5

    move-object/from16 v18, v13

    move/from16 v10, v21

    const/4 v0, 0x1

    goto/16 :goto_16f

    .line 566
    :cond_d2
    iget-boolean v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    if-nez v10, :cond_da

    .line 567
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    goto :goto_db

    .line 566
    :cond_da
    const/4 v10, 0x1

    .line 570
    :goto_db
    if-gez v8, :cond_120

    .line 571
    iget-object v11, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v5, v2, v11}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getName(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 572
    iget-object v11, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v11, :cond_110

    .line 573
    iget-object v11, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v10, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    iget-object v5, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move-wide/from16 v27, v0

    .end local v0  # "utime":J
    .local v27, "utime":J
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v11, v2

    .end local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v11, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    move v2, v3

    move/from16 v29, v3

    .end local v3  # "pid":I
    .local v29, "pid":I
    move/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4  # "procStats":[J
    .local v16, "procStats":[J
    move-object v4, v10

    move/from16 v10, v21

    .end local v21  # "i":I
    .local v10, "i":I
    move-wide v7, v6

    move-object/from16 v18, v13

    move-wide/from16 v12, v23

    .end local v6  # "stime":J
    .end local v13  # "pids":[I
    .end local v23  # "majfaults":J
    .local v7, "stime":J
    .local v12, "majfaults":J
    .local v18, "pids":[I
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I

    move-result-object v0

    move-object/from16 v6, p0

    iput-object v0, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_12f

    .line 572
    .end local v7  # "stime":J
    .end local v10  # "i":I
    .end local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v12  # "majfaults":J
    .end local v16  # "procStats":[J
    .end local v18  # "pids":[I
    .end local v27  # "utime":J
    .end local v29  # "pid":I
    .restart local v0  # "utime":J
    .restart local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v3  # "pid":I
    .restart local v4  # "procStats":[J
    .restart local v6  # "stime":J
    .restart local v13  # "pids":[I
    .restart local v21  # "i":I
    .restart local v23  # "majfaults":J
    :cond_110
    move-wide/from16 v27, v0

    move-object v11, v2

    move/from16 v29, v3

    move-object/from16 v16, v4

    move-wide v7, v6

    move-object/from16 v18, v13

    move/from16 v10, v21

    move-wide/from16 v12, v23

    move-object v6, v5

    .end local v0  # "utime":J
    .end local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v3  # "pid":I
    .end local v4  # "procStats":[J
    .end local v6  # "stime":J
    .end local v13  # "pids":[I
    .end local v21  # "i":I
    .end local v23  # "majfaults":J
    .restart local v7  # "stime":J
    .restart local v10  # "i":I
    .restart local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12  # "majfaults":J
    .restart local v16  # "procStats":[J
    .restart local v18  # "pids":[I
    .restart local v27  # "utime":J
    .restart local v29  # "pid":I
    goto :goto_12f

    .line 570
    .end local v7  # "stime":J
    .end local v10  # "i":I
    .end local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v12  # "majfaults":J
    .end local v16  # "procStats":[J
    .end local v18  # "pids":[I
    .end local v27  # "utime":J
    .end local v29  # "pid":I
    .restart local v0  # "utime":J
    .restart local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v3  # "pid":I
    .restart local v4  # "procStats":[J
    .restart local v6  # "stime":J
    .restart local v13  # "pids":[I
    .restart local v21  # "i":I
    .restart local v23  # "majfaults":J
    :cond_120
    move-wide/from16 v27, v0

    move-object v11, v2

    move/from16 v29, v3

    move-object/from16 v16, v4

    move-wide v7, v6

    move-object/from16 v18, v13

    move/from16 v10, v21

    move-wide/from16 v12, v23

    move-object v6, v5

    .line 586
    .end local v0  # "utime":J
    .end local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v3  # "pid":I
    .end local v4  # "procStats":[J
    .end local v6  # "stime":J
    .end local v13  # "pids":[I
    .end local v21  # "i":I
    .end local v23  # "majfaults":J
    .restart local v7  # "stime":J
    .restart local v10  # "i":I
    .restart local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12  # "majfaults":J
    .restart local v16  # "procStats":[J
    .restart local v18  # "pids":[I
    .restart local v27  # "utime":J
    .restart local v29  # "pid":I
    :goto_12f
    iget-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_uptime:J

    sub-long v0, v14, v0

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_uptime:J

    .line 587
    iput-wide v14, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_uptime:J

    .line 588
    iget-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    move-wide/from16 v2, v27

    .end local v27  # "utime":J
    .local v2, "utime":J
    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 589
    iget-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    sub-long v0, v7, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 590
    iput-wide v2, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    .line 591
    iput-wide v7, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    .line 592
    iget-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    move-wide/from16 v4, v25

    .end local v25  # "minfaults":J
    .local v4, "minfaults":J
    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 593
    iget-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 594
    iput-wide v4, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    .line 595
    iput-wide v12, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 597
    .end local v2  # "utime":J
    .end local v4  # "minfaults":J
    .end local v7  # "stime":J
    .end local v12  # "majfaults":J
    .end local v14  # "uptime":J
    .end local v16  # "procStats":[J
    goto :goto_16f

    .line 541
    .end local v10  # "i":I
    .end local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v18  # "pids":[I
    .end local v20  # "NP":I
    .end local v22  # "NS":I
    .end local v29  # "pid":I
    .local v2, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v3  # "pid":I
    .restart local v5  # "i":I
    .local v6, "NS":I
    .restart local v13  # "pids":[I
    .restart local v15  # "NP":I
    :cond_163
    move-object v11, v2

    move/from16 v29, v3

    move v10, v5

    move/from16 v22, v6

    move-object v6, v7

    move-object/from16 v18, v13

    move/from16 v20, v15

    const/4 v0, 0x1

    .line 524
    .end local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v3  # "pid":I
    .end local v5  # "i":I
    .end local v6  # "NS":I
    .end local v13  # "pids":[I
    .end local v15  # "NP":I
    .restart local v10  # "i":I
    .restart local v18  # "pids":[I
    .restart local v20  # "NP":I
    .restart local v22  # "NS":I
    :goto_16f
    move/from16 v12, p2

    move-object v7, v6

    move v5, v10

    move/from16 v1, v19

    move/from16 v6, v22

    goto/16 :goto_280

    .line 532
    .end local v10  # "i":I
    .end local v18  # "pids":[I
    .end local v19  # "curStatsIndex":I
    .end local v20  # "NP":I
    .end local v22  # "NS":I
    .restart local v1  # "curStatsIndex":I
    .restart local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v3  # "pid":I
    .restart local v5  # "i":I
    .restart local v6  # "NS":I
    .restart local v13  # "pids":[I
    .restart local v15  # "NP":I
    :cond_179
    move-object v11, v2

    move/from16 v29, v3

    move v10, v5

    move/from16 v22, v6

    move-object v6, v7

    move-object/from16 v18, v13

    move/from16 v20, v15

    const/4 v7, 0x1

    .line 602
    .end local v2  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v3  # "pid":I
    .end local v5  # "i":I
    .end local v6  # "NS":I
    .end local v13  # "pids":[I
    .end local v15  # "NP":I
    .restart local v10  # "i":I
    .restart local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v18  # "pids":[I
    .restart local v20  # "NP":I
    .restart local v22  # "NS":I
    .restart local v29  # "pid":I
    if-eqz v11, :cond_1ac

    iget v2, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    move/from16 v8, v29

    .end local v29  # "pid":I
    .local v8, "pid":I
    if-le v2, v8, :cond_18e

    goto :goto_1ae

    .line 667
    :cond_18e
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 668
    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 669
    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 670
    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 671
    iput-boolean v7, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    .line 672
    iput-boolean v7, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 673
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 674
    add-int/lit8 v0, v22, -0x1

    .line 680
    .end local v22  # "NS":I
    .local v0, "NS":I
    add-int/lit8 v5, v10, -0x1

    .line 681
    .end local v10  # "i":I
    .restart local v5  # "i":I
    move/from16 v12, p2

    move-object/from16 v30, v6

    move v6, v0

    move v0, v7

    move-object/from16 v7, v30

    goto/16 :goto_280

    .line 602
    .end local v0  # "NS":I
    .end local v5  # "i":I
    .end local v8  # "pid":I
    .restart local v10  # "i":I
    .restart local v22  # "NS":I
    .restart local v29  # "pid":I
    :cond_1ac
    move/from16 v8, v29

    .line 604
    .end local v29  # "pid":I
    .restart local v8  # "pid":I
    :goto_1ae
    new-instance v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    iget-boolean v3, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v12, p2

    invoke-direct {v2, v8, v12, v3}, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v11, v2

    .line 605
    invoke-virtual {v9, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 606
    add-int/lit8 v13, v1, 0x1

    .line 607
    .end local v1  # "curStatsIndex":I
    .local v13, "curStatsIndex":I
    add-int/lit8 v14, v22, 0x1

    .line 612
    .end local v22  # "NS":I
    .local v14, "NS":I
    iget-object v15, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 613
    .local v15, "procStatsString":[Ljava/lang/String;
    iget-object v5, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsData:[J

    .line 614
    .local v5, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_uptime:J

    .line 615
    iget-object v1, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v4, v1, v15, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 623
    const/4 v0, 0x5

    aget-wide v0, v5, v0

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->vsize:J

    .line 625
    iput-boolean v7, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    .line 626
    const/4 v0, 0x0

    aget-object v1, v15, v0

    iput-object v1, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 627
    aget-wide v0, v5, v7

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    .line 628
    aget-wide v0, v5, v17

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    .line 629
    aget-wide v0, v5, v16

    iget-wide v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    .line 630
    const/4 v0, 0x4

    aget-wide v0, v5, v0

    iget-wide v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    goto :goto_221

    .line 632
    :cond_1fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v0, "<unknown>"

    iput-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 634
    const-wide/16 v0, 0x0

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    .line 635
    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    .line 638
    :goto_221
    if-gez v12, :cond_254

    .line 639
    iget-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v11, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getName(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 640
    iget-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_24e

    .line 641
    iget-object v1, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    iget-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v2

    move v2, v8

    move-object/from16 v21, v4

    .end local v4  # "path":Ljava/lang/String;
    .local v21, "path":Ljava/lang/String;
    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5  # "procStats":[J
    .local v19, "procStats":[J
    move-object/from16 v5, v17

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_269

    .line 640
    .end local v19  # "procStats":[J
    .end local v21  # "path":Ljava/lang/String;
    .restart local v4  # "path":Ljava/lang/String;
    .restart local v5  # "procStats":[J
    :cond_24e
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object v7, v6

    .end local v4  # "path":Ljava/lang/String;
    .end local v5  # "procStats":[J
    .restart local v19  # "procStats":[J
    .restart local v21  # "path":Ljava/lang/String;
    goto :goto_269

    .line 644
    .end local v19  # "procStats":[J
    .end local v21  # "path":Ljava/lang/String;
    .restart local v4  # "path":Ljava/lang/String;
    .restart local v5  # "procStats":[J
    :cond_254
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object v7, v6

    .end local v4  # "path":Ljava/lang/String;
    .end local v5  # "procStats":[J
    .restart local v19  # "procStats":[J
    .restart local v21  # "path":Ljava/lang/String;
    iget-boolean v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_269

    .line 645
    iget-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 646
    iget-object v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->nameWidth:I

    .line 655
    :cond_269
    :goto_269
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 656
    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 657
    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 658
    iput v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    .line 660
    if-nez p3, :cond_27d

    iget-boolean v1, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_27d

    .line 661
    iput-boolean v0, v11, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 524
    .end local v8  # "pid":I
    .end local v11  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v15  # "procStatsString":[Ljava/lang/String;
    .end local v19  # "procStats":[J
    .end local v21  # "path":Ljava/lang/String;
    :cond_27d
    move v5, v10

    move v1, v13

    move v6, v14

    .end local v10  # "i":I
    .end local v13  # "curStatsIndex":I
    .end local v14  # "NS":I
    .restart local v1  # "curStatsIndex":I
    .local v5, "i":I
    .restart local v6  # "NS":I
    :goto_280
    add-int/2addr v5, v0

    move-object/from16 v11, p1

    move-object/from16 v10, p6

    move v8, v12

    move-object/from16 v13, v18

    move/from16 v15, v20

    const/4 v14, 0x0

    move-object/from16 v12, p4

    goto/16 :goto_41

    .end local v18  # "pids":[I
    .end local v20  # "NP":I
    .local v13, "pids":[I
    .local v15, "NP":I
    :cond_28f
    move v10, v5

    move/from16 v22, v6

    move v12, v8

    move-object/from16 v18, v13

    move/from16 v20, v15

    .line 684
    .end local v5  # "i":I
    .end local v13  # "pids":[I
    .restart local v18  # "pids":[I
    :goto_297
    if-ge v1, v6, :cond_2b4

    .line 686
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 687
    .local v0, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 688
    iput v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 689
    iput v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 690
    iput v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 691
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    .line 692
    iput-boolean v3, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 693
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 694
    nop

    .end local v0  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    add-int/lit8 v6, v6, -0x1

    .line 697
    goto :goto_297

    .line 699
    :cond_2b4
    return-object v18
.end method

.method private getName(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"  # Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"  # Ljava/lang/String;

    .line 1217
    iget-object v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1218
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1219
    const-string v2, "usap32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "usap64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1220
    :cond_2e
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_52

    .line 1222
    move-object v0, v1

    .line 1223
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1224
    .local v2, "i":I
    if-lez v2, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_52

    .line 1225
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .end local v2  # "i":I
    :cond_52
    if-nez v0, :cond_56

    .line 1229
    iget-object v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 1232
    .end local v1  # "cmdName":Ljava/lang/String;
    :cond_56
    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_62

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 1233
    :cond_62
    iput-object v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1234
    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->nameWidth:I

    .line 1236
    :cond_6c
    return-void
.end method

.method private synthetic lambda$collectCcuStats$0(I[J)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "cpuFreqTimeMs"  # [J

    .line 705
    new-instance v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;

    invoke-direct {v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;-><init>()V

    .line 706
    .local v0, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    iput p1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    .line 707
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    .line 708
    iget-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    if-eqz v1, :cond_17

    .line 709
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_17
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 31
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "label"  # Ljava/lang/String;
    .param p5, "totalTime"  # I
    .param p6, "user"  # I
    .param p7, "system"  # I
    .param p8, "iowait"  # I
    .param p9, "irq"  # I
    .param p10, "softIrq"  # I
    .param p11, "minFaults"  # I
    .param p12, "majFaults"  # I

    .line 1042
    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    if-nez p5, :cond_1a

    .line 1044
    const/4 v0, 0x1

    move v15, v0

    .end local p5  # "totalTime":I
    .local v0, "totalTime":I
    goto :goto_1c

    .line 1043
    .end local v0  # "totalTime":I
    .restart local p5  # "totalTime":I
    :cond_1a
    move/from16 v15, p5

    .line 1045
    .end local p5  # "totalTime":I
    .local v15, "totalTime":I
    :goto_1c
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1046
    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    if-ltz v7, :cond_39

    .line 1048
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    :cond_39
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1054
    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1056
    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    const-string v4, " + "

    if-lez v10, :cond_7c

    .line 1058
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    int-to-long v2, v10

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1060
    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7d

    .line 1057
    :cond_7c
    move-object v7, v4

    .line 1062
    :goto_7d
    if-lez v11, :cond_90

    .line 1063
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1065
    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    :cond_90
    if-lez v12, :cond_a3

    .line 1068
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1070
    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    :cond_a3
    if-gtz v13, :cond_a7

    if-lez v14, :cond_c8

    .line 1073
    :cond_a7
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    const-string v0, " "

    if-lez v13, :cond_bb

    .line 1075
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 1077
    const-string v1, " minor"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    :cond_bb
    if-lez v14, :cond_c8

    .line 1080
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1082
    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1086
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "numerator"  # J
    .param p4, "denominator"  # J

    .line 1027
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 1028
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 1029
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1030
    cmp-long v6, v4, v2

    if-gez v6, :cond_20

    .line 1031
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 1032
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_20

    .line 1033
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1034
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1037
    .end local v2  # "remainder":J
    :cond_20
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .param p1, "file"  # Ljava/lang/String;
    .param p2, "endChar"  # C

    .line 1191
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1192
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 1194
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1195
    iget-object v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 1196
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1198
    if-lez v2, :cond_32

    .line 1200
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_23

    .line 1201
    iget-object v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    aget-byte v4, v4, v3

    if-ne v4, p2, :cond_20

    .line 1202
    goto :goto_23

    .line 1200
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1205
    :cond_23
    :goto_23
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2b} :catch_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_3b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_33

    .line 1210
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1205
    return-object v4

    .line 1198
    .end local v2  # "len":I
    .end local v3  # "i":I
    :cond_32
    goto :goto_3e

    .line 1210
    :catchall_33
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1212
    throw v2

    .line 1208
    :catch_3b
    move-exception v2

    goto :goto_3e

    .line 1207
    :catch_3d
    move-exception v2

    .line 1210
    :goto_3e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1212
    nop

    .line 1213
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .registers 8

    .line 871
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_65

    .line 872
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 873
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 874
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    const/4 v2, 0x1

    if-ge v1, v0, :cond_5c

    .line 875
    iget-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 876
    .local v3, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v4, :cond_59

    .line 877
    iget-object v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_59

    .line 879
    iget-object v2, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 880
    iget-object v2, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 881
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    if-ge v4, v2, :cond_52

    .line 882
    iget-object v5, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 883
    .local v5, "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 884
    iget-object v6, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v5  # "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 887
    .end local v4  # "j":I
    :cond_52
    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    .end local v2  # "M":I
    .end local v3  # "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 891
    .end local v1  # "i":I
    :cond_5c
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 892
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 894
    .end local v0  # "N":I
    :cond_65
    return-void
.end method

.method final buildWorkingThreads()V
    .registers 8

    .line 845
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreadsSorted:Z

    if-nez v0, :cond_65

    .line 846
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 847
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 848
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_5b

    .line 849
    iget-object v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 850
    .local v2, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v3, :cond_58

    .line 851
    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_58

    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_58

    .line 852
    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 853
    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 854
    .local v3, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_36
    if-ge v4, v3, :cond_51

    .line 855
    iget-object v5, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 856
    .local v5, "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_4e

    .line 857
    iget-object v6, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v6, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    .end local v5  # "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 861
    .end local v4  # "j":I
    :cond_51
    iget-object v4, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 848
    .end local v2  # "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v3  # "M":I
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 865
    .end local v1  # "i":I
    :cond_5b
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 866
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreadsSorted:Z

    .line 868
    .end local v0  # "N":I
    :cond_65
    return-void
.end method

.method public final countStats()I
    .registers 2

    .line 897
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats(Z)I
    .registers 3
    .param p1, "includeThreads"  # Z

    .line 921
    if-eqz p1, :cond_c

    .line 922
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->buildWorkingThreads()V

    .line 923
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 925
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->buildWorkingProcs()V

    .line 926
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getBaseIdleTime()J
    .registers 3

    .line 829
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIdleTime:J

    return-wide v0
.end method

.method public final getBaseIoWaitTime()J
    .registers 3

    .line 808
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIoWaitTime:J

    return-wide v0
.end method

.method public final getBaseIrqTime()J
    .registers 3

    .line 815
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIrqTime:J

    return-wide v0
.end method

.method public final getBaseSampleTime()J
    .registers 3

    .line 780
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    return-wide v0
.end method

.method public final getBaseSoftIrqTime()J
    .registers 3

    .line 822
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSoftIrqTime:J

    return-wide v0
.end method

.method public final getBaseSystemTime()J
    .registers 3

    .line 801
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSystemTime:J

    return-wide v0
.end method

.method public final getBaseUserTime()J
    .registers 3

    .line 794
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseUserTime:J

    return-wide v0
.end method

.method public declared-synchronized getCcuStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 715
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 715
    .end local p0  # "this":Lcom/android/server/ssrm/CustomProcessCpuTracker;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 9
    .param p1, "pid"  # I

    .line 723
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 724
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSinglePidStatsData:[J

    .line 726
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 727
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 728
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 730
    .end local v3  # "time":J
    :cond_33
    monitor-exit v0

    const-wide/16 v3, 0x0

    return-wide v3

    .line 731
    .end local v1  # "statFile":Ljava/lang/String;
    .end local v2  # "statsData":[J
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public final getLastIdleTime()I
    .registers 2

    .line 773
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .line 752
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .line 759
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSampleTime()J
    .registers 3

    .line 787
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    return-wide v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .line 766
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .line 745
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .line 738
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"  # I

    .line 905
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getStats(Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;)Ljava/util/List;
    .registers 7
    .param p1, "filter"  # Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    .local v0, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 911
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_12
    if-ge v2, v1, :cond_28

    .line 912
    iget-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 913
    .local v3, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    invoke-interface {p1, v3}, Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;->needed(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 914
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    .end local v3  # "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 917
    .end local v2  # "p":I
    :cond_28
    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .registers 6

    .line 837
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v2, v4

    .line 838
    .local v2, "denom":I
    if-gtz v2, :cond_10

    .line 839
    const/4 v0, 0x0

    return v0

    .line 841
    :cond_10
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"  # I

    .line 938
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getWorkingStats(IZ)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .registers 4
    .param p1, "index"  # I
    .param p2, "includeThreads"  # Z

    .line 931
    if-eqz p2, :cond_b

    .line 932
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0

    .line 934
    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getWorkingThreadStats(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 943
    .local v0, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    return-object v1
.end method

.method public final hasGoodLastStats()Z
    .registers 2

    .line 833
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->update(Ljava/util/List;)Z

    .line 363
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"  # F
    .param p2, "load5"  # F
    .param p3, "load15"  # F

    .line 352
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public printCpuCoreInfo()Ljava/lang/String;
    .registers 21

    .line 1091
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1092
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1094
    .local v1, "pw":Ljava/io/PrintWriter;
    const/16 v2, 0x1020

    filled-new-array {v2}, [I

    move-result-object v2

    .line 1098
    .local v2, "SINGLE_STRING_FORMAT":[I
    const/16 v4, 0x2020

    filled-new-array {v4}, [I

    move-result-object v4

    .line 1102
    .local v4, "SINGLE_LONG_FORMAT":[I
    const-string v5, "/sys/devices/system/cpu/offline"

    const-string v6, "/sys/devices/system/cpu/online"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 1106
    .local v5, "CPUINFO_PATH":[Ljava/lang/String;
    const-string v6, "/sys/devices/system/cpu/possible"

    .line 1108
    .local v6, "POSSIBLE_PATH":Ljava/lang/String;
    const-string v7, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"

    const-string v8, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_max_freq"

    const-string v9, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 1114
    .local v7, "CPUINFO_EACH_PATH":[Ljava/lang/String;
    const-string v8, "/dev/null"

    const-string v9, "/dev/null"

    const-string v10, "/dev/null"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 1120
    .local v8, "AP_THERMISTOR_PATH":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    .line 1121
    .local v10, "temp":[Ljava/lang/String;
    new-array v11, v9, [J

    .line 1122
    .local v11, "temp_l":[J
    const/4 v12, 0x0

    .line 1124
    .local v12, "core_num":I
    const-string v13, "------ Current CPU Core Info ------"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_43
    array-length v14, v5

    const/16 v15, 0x2f

    if-ge v13, v14, :cond_7b

    .line 1127
    const-string v14, "- "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    aget-object v14, v5, v13

    aget-object v3, v5, v13

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    aget-object v3, v5, v13

    const/4 v14, 0x0

    invoke-static {v3, v2, v10, v14, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 1132
    const/4 v3, 0x0

    aget-object v14, v10, v3

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_77

    .line 1134
    :cond_72
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    :goto_77
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_43

    .line 1138
    .end local v13  # "i":I
    :cond_7b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7c
    array-length v13, v8

    if-ge v3, v13, :cond_ac

    .line 1139
    aget-object v13, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v4, v14, v11, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_a9

    .line 1141
    const/4 v13, 0x0

    aget-wide v17, v11, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "- AP Temp = %d%n"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    goto :goto_ac

    .line 1138
    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 1147
    .end local v3  # "i":I
    :cond_ac
    :goto_ac
    const-string v3, "/sys/devices/system/cpu/possible"

    const/4 v13, 0x0

    invoke-static {v3, v2, v10, v13, v13}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 1148
    const/4 v3, 0x0

    aget-object v13, v10, v3

    aget-object v14, v10, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1151
    :cond_cc
    if-lez v12, :cond_16f

    .line 1152
    const-string v3, "                  "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_d4
    if-gt v3, v12, :cond_ea

    .line 1154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%12d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .line 1156
    .end local v3  # "i":I
    :cond_ea
    const-string v3, "\n------------------"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    const/4 v13, 0x0

    .restart local v13  # "i":I
    :goto_f0
    const-string v14, "------------"

    if-gt v13, v12, :cond_fa

    .line 1158
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    add-int/lit8 v13, v13, 0x1

    goto :goto_f0

    .line 1161
    .end local v13  # "i":I
    :cond_fa
    const/4 v13, 0x0

    .restart local v13  # "i":I
    :goto_fb
    array-length v9, v7

    if-ge v13, v9, :cond_15d

    .line 1162
    aget-object v9, v7, v13

    move-object/from16 v18, v4

    .end local v4  # "SINGLE_LONG_FORMAT":[I
    .local v18, "SINGLE_LONG_FORMAT":[I
    aget-object v4, v7, v13

    .line 1163
    invoke-virtual {v4, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1162
    const-string v9, "%n%-18s"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_11e
    if-gt v4, v12, :cond_154

    .line 1166
    aget-object v9, v7, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-static {v9, v2, v10, v15, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 1168
    const/4 v9, 0x0

    aget-object v16, v10, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v9

    const-string v15, "%12s"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14f

    .line 1170
    :cond_14a
    const-string v9, "           -"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    :goto_14f
    add-int/lit8 v4, v4, 0x1

    const/16 v15, 0x2f

    goto :goto_11e

    .line 1161
    .end local v4  # "j":I
    :cond_154
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v17

    move-object/from16 v4, v18

    const/16 v15, 0x2f

    goto :goto_fb

    .end local v18  # "SINGLE_LONG_FORMAT":[I
    .local v4, "SINGLE_LONG_FORMAT":[I
    :cond_15d
    move-object/from16 v18, v4

    .line 1175
    .end local v4  # "SINGLE_LONG_FORMAT":[I
    .end local v13  # "i":I
    .restart local v18  # "SINGLE_LONG_FORMAT":[I
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_163
    if-gt v3, v12, :cond_16b

    .line 1177
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    add-int/lit8 v3, v3, 0x1

    goto :goto_163

    .line 1179
    .end local v3  # "i":I
    :cond_16b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_171

    .line 1151
    .end local v18  # "SINGLE_LONG_FORMAT":[I
    .restart local v4  # "SINGLE_LONG_FORMAT":[I
    :cond_16f
    move-object/from16 v18, v4

    .line 1182
    .end local v4  # "SINGLE_LONG_FORMAT":[I
    .restart local v18  # "SINGLE_LONG_FORMAT":[I
    :goto_171
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1183
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 5

    .line 947
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 948
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 949
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 951
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    iget v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 953
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 954
    iget v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 955
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 956
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 34
    .param p1, "now"  # J

    .line 960
    move-object/from16 v13, p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 962
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->buildWorkingProcs()V

    .line 964
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v15, v0

    .line 965
    .local v15, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object v12, v0

    .line 967
    .local v12, "pw":Ljava/io/PrintWriter;
    const-string v0, "CPU usage from "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    iget-wide v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v0

    const-string v3, "ms to "

    if-lez v2, :cond_3e

    .line 969
    sub-long v0, p1, v0

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 970
    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    iget-wide v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 972
    const-string v0, "ms ago"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_52

    .line 974
    :cond_3e
    sub-long v0, v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 975
    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    iget-wide v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 977
    const-string v0, "ms later"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    :goto_52
    const-string v0, " ("

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    const-string v0, " to "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 982
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 983
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    iget-wide v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    sub-long v16, v0, v2

    .line 986
    .local v16, "sampleTime":J
    iget-wide v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v18, v0, v2

    .line 987
    .local v18, "sampleRealTime":J
    const-wide/16 v0, 0x0

    cmp-long v2, v18, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_95

    mul-long v0, v16, v3

    div-long v0, v0, v18

    :cond_95
    move-wide v10, v0

    .line 988
    .local v10, "percAwake":J
    cmp-long v0, v10, v3

    if-eqz v0, :cond_a7

    .line 989
    const-string v0, " with "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v12, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 991
    const-string v0, "% awake"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    :cond_a7
    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    iget v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    add-int v20, v0, v1

    .line 1002
    .local v20, "totalTime":I
    iget-object v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1003
    .local v9, "N":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_c6
    if-ge v8, v9, :cond_18b

    .line 1004
    iget-object v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 1005
    .local v7, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v0, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_d9

    const-string v0, " +"

    :goto_d7
    move-object v2, v0

    goto :goto_e3

    :cond_d9
    iget-boolean v0, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_e0

    const-string v0, " -"

    goto :goto_d7

    :cond_e0
    const-string v0, "  "

    goto :goto_d7

    :goto_e3
    iget v3, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    iget-object v4, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    iget v1, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v0, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    move-wide/from16 v24, v10

    .end local v10  # "percAwake":J
    .local v24, "percAwake":J
    iget v10, v7, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    move v11, v0

    move-object/from16 v0, p0

    move/from16 v26, v1

    move-object v1, v12

    move-object/from16 v27, v7

    .end local v7  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v27, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    move/from16 v7, v26

    move/from16 v26, v8

    .end local v8  # "i":I
    .local v26, "i":I
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9  # "N":I
    .local v21, "N":I
    move/from16 v9, v22

    move/from16 v22, v10

    move/from16 v10, v23

    move-object/from16 v23, v12

    .end local v12  # "pw":Ljava/io/PrintWriter;
    .local v23, "pw":Ljava/io/PrintWriter;
    move/from16 v12, v22

    invoke-direct/range {v0 .. v12}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1008
    move-object/from16 v12, v27

    .end local v27  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v12, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v0, v12, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_17f

    iget-object v0, v12, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_17f

    .line 1009
    iget-object v0, v12, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1010
    .local v11, "M":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "j":I
    :goto_129
    if-ge v10, v11, :cond_178

    .line 1011
    iget-object v0, v12, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 1012
    .local v9, "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v0, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_13c

    const-string v0, "   +"

    :goto_13a
    move-object v2, v0

    goto :goto_146

    :cond_13c
    iget-boolean v0, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_143

    const-string v0, "   -"

    goto :goto_13a

    :cond_143
    const-string v0, "    "

    goto :goto_13a

    :goto_146
    iget v3, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    iget-object v4, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v30, v9

    .end local v9  # "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v30, "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    move/from16 v9, v22

    move/from16 v22, v10

    .end local v10  # "j":I
    .local v22, "j":I
    move/from16 v10, v27

    move/from16 v27, v11

    .end local v11  # "M":I
    .local v27, "M":I
    move/from16 v11, v28

    move-object/from16 v28, v12

    .end local v12  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v28, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    move/from16 v12, v29

    invoke-direct/range {v0 .. v12}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1010
    .end local v30  # "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    add-int/lit8 v10, v22, 0x1

    move/from16 v11, v27

    move-object/from16 v12, v28

    .end local v22  # "j":I
    .restart local v10  # "j":I
    goto :goto_129

    .end local v27  # "M":I
    .end local v28  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v11  # "M":I
    .restart local v12  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_178
    move/from16 v22, v10

    move/from16 v27, v11

    move-object/from16 v28, v12

    .end local v10  # "j":I
    .end local v11  # "M":I
    .end local v12  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v22  # "j":I
    .restart local v27  # "M":I
    .restart local v28  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    goto :goto_181

    .line 1008
    .end local v22  # "j":I
    .end local v27  # "M":I
    .end local v28  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_17f
    move-object/from16 v28, v12

    .line 1003
    .end local v12  # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :goto_181
    add-int/lit8 v8, v26, 0x1

    move/from16 v9, v21

    move-object/from16 v12, v23

    move-wide/from16 v10, v24

    .end local v26  # "i":I
    .restart local v8  # "i":I
    goto/16 :goto_c6

    .end local v21  # "N":I
    .end local v23  # "pw":Ljava/io/PrintWriter;
    .end local v24  # "percAwake":J
    .local v9, "N":I
    .local v10, "percAwake":J
    .local v12, "pw":Ljava/io/PrintWriter;
    :cond_18b
    move/from16 v26, v8

    move/from16 v21, v9

    move-wide/from16 v24, v10

    move-object/from16 v23, v12

    .line 1019
    .end local v8  # "i":I
    .end local v9  # "N":I
    .end local v10  # "percAwake":J
    .end local v12  # "pw":Ljava/io/PrintWriter;
    .restart local v21  # "N":I
    .restart local v23  # "pw":Ljava/io/PrintWriter;
    .restart local v24  # "percAwake":J
    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    iget v6, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v7, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    iget v8, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    iget v10, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v5, v20

    invoke-direct/range {v0 .. v12}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1022
    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintWriter;->flush()V

    .line 1023
    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readCurTotalCpuTime()J
    .registers 16

    .line 366
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSystemCpuData:[J

    .line 367
    .local v0, "sysCpu":[J
    sget-object v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v2, 0x0

    const-string v3, "/proc/stat"

    invoke-static {v3, v1, v2, v0, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 369
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v3

    .line 371
    .local v1, "usertime":J
    const/4 v5, 0x2

    aget-wide v5, v0, v5

    mul-long/2addr v5, v3

    .line 373
    .local v5, "systemtime":J
    const/4 v7, 0x3

    aget-wide v7, v0, v7

    mul-long/2addr v7, v3

    .line 375
    .local v7, "idletime":J
    const/4 v9, 0x4

    aget-wide v9, v0, v9

    mul-long/2addr v9, v3

    .line 376
    .local v9, "iowaittime":J
    const/4 v11, 0x5

    aget-wide v11, v0, v11

    mul-long/2addr v11, v3

    .line 377
    .local v11, "irqtime":J
    const/4 v13, 0x6

    aget-wide v13, v0, v13

    mul-long/2addr v13, v3

    .line 379
    .local v13, "softirqtime":J
    add-long v3, v1, v5

    add-long/2addr v3, v7

    add-long/2addr v3, v9

    add-long/2addr v3, v11

    add-long/2addr v3, v13

    return-wide v3

    .line 382
    .end local v1  # "usertime":J
    .end local v5  # "systemtime":J
    .end local v7  # "idletime":J
    .end local v9  # "iowaittime":J
    .end local v11  # "irqtime":J
    .end local v13  # "softirqtime":J
    :cond_32
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public update(Ljava/util/List;)Z
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 389
    .local p1, "tarPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v8, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 390
    .local v9, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 391
    .local v11, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 393
    .local v13, "nowWallTime":J
    iget-object v15, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSystemCpuData:[J

    .line 394
    .local v15, "sysCpu":[J
    sget-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v1, "/proc/stat"

    const/4 v7, 0x0

    invoke-static {v1, v0, v7, v15, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_c6

    .line 396
    aget-wide v0, v15, v5

    aget-wide v2, v15, v6

    add-long/2addr v0, v2

    iget-wide v2, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    .line 398
    .local v0, "usertime":J
    aget-wide v17, v15, v16

    mul-long v5, v17, v2

    .line 400
    .local v5, "systemtime":J
    const/4 v4, 0x3

    aget-wide v17, v15, v4

    mul-long v7, v17, v2

    .line 402
    .local v7, "idletime":J
    const/4 v4, 0x4

    aget-wide v17, v15, v4

    move-wide/from16 v20, v5

    .end local v5  # "systemtime":J
    .local v20, "systemtime":J
    mul-long v4, v17, v2

    .line 403
    .local v4, "iowaittime":J
    const/16 v17, 0x5

    aget-wide v17, v15, v17

    move-wide/from16 v22, v7

    .end local v7  # "idletime":J
    .local v22, "idletime":J
    mul-long v6, v17, v2

    .line 404
    .local v6, "irqtime":J
    const/16 v17, 0x6

    aget-wide v17, v15, v17

    mul-long v2, v2, v17

    .line 405
    .local v2, "softirqtime":J
    const/16 v17, 0x0

    .line 411
    .local v17, "totalLoad":F
    move-object/from16 v8, p0

    move-wide/from16 v24, v11

    move-wide/from16 v34, v13

    move-wide/from16 v13, v22

    move-wide/from16 v22, v34

    .end local v11  # "nowRealtime":J
    .local v13, "idletime":J
    .local v22, "nowWallTime":J
    .local v24, "nowRealtime":J
    iget-wide v11, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseUserTime:J

    sub-long v11, v0, v11

    long-to-int v11, v11

    iput v11, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    .line 412
    move-wide/from16 v26, v9

    .end local v9  # "nowUptime":J
    .local v26, "nowUptime":J
    iget-wide v9, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSystemTime:J

    sub-long v9, v20, v9

    long-to-int v9, v9

    iput v9, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    .line 413
    move-wide/from16 v28, v0

    .end local v0  # "usertime":J
    .local v28, "usertime":J
    iget-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    .line 414
    move-wide/from16 v30, v4

    .end local v4  # "iowaittime":J
    .local v30, "iowaittime":J
    iget-wide v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIrqTime:J

    sub-long v4, v6, v4

    long-to-int v1, v4

    iput v1, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    .line 415
    iget-wide v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v4, v2, v4

    long-to-int v4, v4

    iput v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    .line 416
    move-wide/from16 v32, v2

    .end local v2  # "softirqtime":J
    .local v32, "softirqtime":J
    iget-wide v2, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIdleTime:J

    sub-long v2, v13, v2

    long-to-int v2, v2

    iput v2, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    .line 417
    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelStatsAreGood:Z

    .line 424
    if-nez p1, :cond_af

    iget-boolean v3, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    if-nez v3, :cond_af

    .line 425
    add-int v3, v11, v9

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    add-int/2addr v11, v9

    add-int/2addr v11, v0

    add-int/2addr v11, v1

    add-int/2addr v11, v4

    add-int/2addr v11, v2

    int-to-float v0, v11

    div-float v17, v3, v0

    .line 428
    const/high16 v0, 0x41200000  # 10.0f

    cmpg-float v0, v17, v0

    if-gtz v0, :cond_aa

    iget v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_aa

    .line 437
    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    .line 438
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_aa
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 441
    iput v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    goto :goto_b1

    .line 424
    :cond_af
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 459
    :goto_b1
    move-wide/from16 v1, v28

    .end local v28  # "usertime":J
    .local v1, "usertime":J
    iput-wide v1, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseUserTime:J

    .line 460
    move-wide/from16 v3, v20

    .end local v20  # "systemtime":J
    .local v3, "systemtime":J
    iput-wide v3, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSystemTime:J

    .line 461
    move-wide/from16 v10, v30

    .end local v30  # "iowaittime":J
    .local v10, "iowaittime":J
    iput-wide v10, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIoWaitTime:J

    .line 462
    iput-wide v6, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIrqTime:J

    .line 463
    move-wide/from16 v0, v32

    .end local v1  # "usertime":J
    .end local v32  # "softirqtime":J
    .local v0, "softirqtime":J
    .restart local v28  # "usertime":J
    iput-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 464
    iput-wide v13, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_cd

    .line 394
    .end local v0  # "softirqtime":J
    .end local v3  # "systemtime":J
    .end local v6  # "irqtime":J
    .end local v10  # "iowaittime":J
    .end local v17  # "totalLoad":F
    .end local v22  # "nowWallTime":J
    .end local v24  # "nowRealtime":J
    .end local v26  # "nowUptime":J
    .end local v28  # "usertime":J
    .restart local v9  # "nowUptime":J
    .restart local v11  # "nowRealtime":J
    .local v13, "nowWallTime":J
    :cond_c6
    move-wide/from16 v26, v9

    move-wide/from16 v24, v11

    move-wide/from16 v22, v13

    move v9, v6

    .line 467
    .end local v9  # "nowUptime":J
    .end local v11  # "nowRealtime":J
    .end local v13  # "nowWallTime":J
    .restart local v22  # "nowWallTime":J
    .restart local v24  # "nowRealtime":J
    .restart local v26  # "nowUptime":J
    :goto_cd
    iget-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    .line 468
    move-wide/from16 v10, v26

    .end local v26  # "nowUptime":J
    .local v10, "nowUptime":J
    iput-wide v10, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    .line 469
    iget-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleRealTime:J

    .line 470
    move-wide/from16 v12, v24

    .end local v24  # "nowRealtime":J
    .local v12, "nowRealtime":J
    iput-wide v12, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 471
    iget-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleWallTime:J

    .line 472
    move-wide/from16 v6, v22

    .end local v22  # "nowWallTime":J
    .local v6, "nowWallTime":J
    iput-wide v6, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 474
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v14

    .line 476
    .local v14, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_e9
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    iget-object v5, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurPids:[I

    iget-object v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;
    :try_end_f2
    .catchall {:try_start_e9 .. :try_end_f2} :catchall_143

    move-object/from16 v1, p0

    const/4 v9, 0x0

    move-wide/from16 v17, v6

    const/16 v19, 0x1

    .end local v6  # "nowWallTime":J
    .local v17, "nowWallTime":J
    move-object v6, v0

    const/4 v0, 0x0

    move-object/from16 v7, p1

    :try_start_fd
    invoke-direct/range {v1 .. v7}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurPids:[I

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectCcuStats()V
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_141

    .line 479
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 480
    nop

    .line 482
    iget-object v1, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoadAverageData:[F

    .line 483
    .local v1, "loadAverages":[F
    const-string v2, "/proc/loadavg"

    sget-object v3, Lcom/android/server/ssrm/CustomProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    invoke-static {v2, v3, v0, v0, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 484
    aget v0, v1, v9

    .line 485
    .local v0, "load1":F
    aget v2, v1, v19

    .line 486
    .local v2, "load5":F
    aget v3, v1, v16

    .line 487
    .local v3, "load15":F
    iget v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v0, v4

    if-nez v4, :cond_12e

    iget v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_12e

    iget v4, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_137

    .line 488
    :cond_12e
    iput v0, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    .line 489
    iput v2, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    .line 490
    iput v3, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    .line 491
    invoke-virtual {v8, v0, v2, v3}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->onLoadChanged(FFF)V

    .line 499
    .end local v0  # "load1":F
    .end local v2  # "load5":F
    .end local v3  # "load15":F
    :cond_137
    if-nez p1, :cond_13c

    .line 500
    iput-boolean v9, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcsSorted:Z

    goto :goto_13e

    .line 502
    :cond_13c
    iput-boolean v9, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreadsSorted:Z

    .line 504
    :goto_13e
    iput-boolean v9, v8, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    .line 505
    return v19

    .line 479
    .end local v1  # "loadAverages":[F
    :catchall_141
    move-exception v0

    goto :goto_146

    .end local v17  # "nowWallTime":J
    .restart local v6  # "nowWallTime":J
    :catchall_143
    move-exception v0

    move-wide/from16 v17, v6

    .end local v6  # "nowWallTime":J
    .restart local v17  # "nowWallTime":J
    :goto_146
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 480
    throw v0
.end method
