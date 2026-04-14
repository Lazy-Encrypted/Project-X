.class public final Lcom/android/server/ssrm/PreMonitor;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PreMonitor$BrightnessController;
    }
.end annotation


# static fields
.field static AP_TEMP_1ST_STEP:I = 0x0

.field static AP_TEMP_2ND_STEP:I = 0x0

.field static AP_TEMP_3RD_STEP:I = 0x0

.field static AP_TEMP_4TH_STEP:I = 0x0

.field static AP_TEMP_5TH_STEP:I = 0x0

.field static BRIGHTNESS_LIMIT:I = 0x0

.field static BRIGHTNESS_PATH:Ljava/lang/String; = null

.field static CPU_LITTLE_MAXLIMIT:I = 0x0

.field static CPU_MAXLIMIT_1ST:I = 0x0

.field static CPU_MAXLIMIT_2ND:I = 0x0

.field static CPU_MAXLIMIT_3RD:I = 0x0

.field static CPU_MAXLIMIT_4TH:I = 0x0

.field static CPU_MAXLIMIT_5TH:I = 0x0

.field static CPU_OVERHEAT_LIMIT:I = 0x0

.field private static LOCAL_TEST:Z = false

.field static final PROPERTY_PDA:Ljava/lang/String; = "ro.build.PDA"

.field private static PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUT_DATABASE_PATH:Ljava/lang/String; = "/data/system/rut.db"

.field private static final SYSFS_CHARGING_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static final TAG:Ljava/lang/String;

.field static db:Lcom/android/server/ssrm/BinaryVersionDatabase;

.field static final mDisableCoolDownFile:Ljava/io/File;

.field static mIsPreMonitoringEnabled:Z

.field static mLastCpuMaxLimit:I

.field static mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static mSysfs:Lcom/samsung/android/os/SemDvfsManager;

.field static sApTemperature:I

.field static sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sBatteryTemperature:I

.field static sBootComplete:Z

.field static sContext:Landroid/content/Context;

.field static sSiopEnabled:Z

.field static sSkinTemperature:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smSetPreMonitorLog()V
    .registers 0

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->SetPreMonitorLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 33
    const-class v0, Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 39
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    .line 41
    const/4 v1, -0x1

    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 43
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 45
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 47
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 49
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 51
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 53
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    .line 55
    const/16 v2, 0x1ae

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 57
    const/16 v2, 0x1c2

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 59
    const/16 v2, 0x1d6

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 61
    const/16 v2, 0x1ea

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 63
    const/16 v2, 0x1fe

    sput v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 65
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 67
    new-instance v2, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    .line 71
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ssrm_v2.cooldown_disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mDisableCoolDownFile:Ljava/io/File;

    .line 255
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    .line 277
    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    .line 291
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBrightnessPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    .line 326
    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 328
    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 330
    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 332
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 334
    sput v1, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    .line 410
    sput v0, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    .line 419
    sput v0, Lcom/android/server/ssrm/PreMonitor;->sSkinTemperature:I

    .line 451
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SetPreMonitorLog()V
    .registers 13

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "time":J
    const-string v2, "yyyy-MM-dd kk:mm:ss "

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "strTime":Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v4, "/sys/class/power_supply/battery/siop_level"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "strCharging":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    .line 84
    .local v4, "strBat":I
    sget v5, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    div-int/lit8 v5, v5, 0xa

    .line 85
    .local v5, "strAP":I
    sget v6, Lcom/android/server/ssrm/PreMonitor;->sSkinTemperature:I

    div-int/lit8 v6, v6, 0xa

    .line 86
    .local v6, "strSkin":I
    sget-object v7, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v7, :cond_32

    .line 87
    sget-object v7, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v8, "SSRM_SYSFS_CHECK"

    const/16 v9, -0x3e7

    invoke-static {v7, v8, v9}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v7

    sput-object v7, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    .line 90
    :cond_32
    sget-object v7, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    const v8, 0x12001002

    invoke-virtual {v7, v8}, Lcom/samsung/android/os/SemDvfsManager;->sysfsRead(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "strCpuMax":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBrightness()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "strBrightness":Ljava/lang/String;
    sget-object v9, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[PRE] [AP :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%4d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][BAT :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][CHG : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v11

    .line 95
    const-string v12, "%4s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][SKIN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][CF :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    .line 97
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][LB :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    .line 98
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method static bootComplete()V
    .registers 2

    .line 454
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    .line 456
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    if-eqz v0, :cond_31

    .line 457
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$2;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 498
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    .line 499
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 502
    .local v0, "brightness":I
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 506
    .end local v0  # "brightness":I
    :cond_31
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    if-nez v0, :cond_36

    .line 507
    return-void

    .line 510
    :cond_36
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    .line 511
    return-void
.end method

.method private static getApThermistorPath()Ljava/lang/String;
    .registers 6

    .line 431
    const-string v0, "/dev/null"

    const-string v1, "/dev/null"

    const-string v2, "/dev/null"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "candidates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 438
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 440
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 437
    .end local v3  # "path":Ljava/lang/String;
    .end local v4  # "f":Ljava/io/File;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 444
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method static getBatteryTemperature()I
    .registers 1

    .line 448
    sget v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    return v0
.end method

.method static getBrightness()Ljava/lang/String;
    .registers 3

    .line 294
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "raw":Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 296
    const-string v1, "4"

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_25

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_25
    return-object v0
.end method

.method static getBrightnessPath()Ljava/lang/String;
    .registers 6

    .line 306
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 307
    return-object v0

    .line 309
    :cond_5
    const-string v0, "/sys/class/backlight/panel0-backlight/brightness"

    const-string v1, "/sys/class/backlight/panel/brightness"

    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "candidates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 316
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 318
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    .line 319
    return-object v1

    .line 315
    .end local v3  # "path":Ljava/lang/String;
    .end local v4  # "f":Ljava/io/File;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 323
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getLastBatteryTemperature()I
    .registers 1

    .line 110
    sget v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    return v0
.end method

.method public static getPreMonitorLog()Lcom/android/server/ssrm/CircularBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    return-object v0
.end method

.method static improveOverheatingInFota()V
    .registers 2

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 338
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 339
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 341
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$1;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 407
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 408
    return-void
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 17
    .param p0, "context"  # Landroid/content/Context;

    .line 114
    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    .line 115
    invoke-static/range {p0 .. p0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/BinaryVersionDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    .line 117
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAQ:Z

    const/16 v1, 0x208

    const v2, 0x1a1300

    const/16 v3, 0x1f4

    const/16 v4, 0x1e0

    if-eqz v0, :cond_2e

    .line 118
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 119
    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 120
    sput v1, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 121
    const v0, 0x1d9700

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 122
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 123
    const v0, 0x168f00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 124
    const v0, 0x245400

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 125
    :cond_2e
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAS:Z

    const v5, 0x15f900

    const v6, 0x18e700

    if-eqz v0, :cond_4e

    .line 126
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 127
    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 128
    sput v1, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 129
    const v0, 0x1a5e00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 130
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 131
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 132
    const v0, 0x232800

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 133
    :cond_4e
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B5Q:Z

    const/16 v1, 0x7e

    if-eqz v0, :cond_69

    .line 134
    const v0, 0x114900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 135
    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 136
    const v0, 0xf3c00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 137
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 138
    const v0, 0x1fef00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 139
    :cond_69
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    if-eqz v0, :cond_87

    .line 140
    const v0, 0x148200

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 141
    const v2, 0x119400

    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 142
    const v2, 0xea600

    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 143
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 144
    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 145
    const v0, 0x203a00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 146
    :cond_87
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    const v7, 0x101d00

    if-eqz v0, :cond_a3

    .line 147
    sput v7, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 148
    const v0, 0xe5b00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 149
    const v0, 0xd9f80

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 150
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 151
    const v0, 0x211b00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 152
    :cond_a3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    const/16 v1, 0xa9

    const v8, 0x130b00

    if-eqz v0, :cond_c1

    .line 153
    sput v8, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 154
    const v0, 0x1174c0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 155
    const v0, 0xfde80

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 156
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 157
    const v0, 0x215340

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 158
    :cond_c1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    const v9, 0x106800

    const v10, 0x122a00

    const/16 v11, 0x1c2

    const/16 v12, 0x1ae

    const/16 v13, 0x19a

    if-eqz v0, :cond_10e

    .line 159
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    const v2, 0x20d000

    const v3, 0x189c00

    if-nez v0, :cond_f5

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    if-nez v0, :cond_f5

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    if-eqz v0, :cond_e4

    goto :goto_f5

    .line 170
    :cond_e4
    const v0, 0x13ec00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 171
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 172
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 173
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 174
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 175
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 160
    :cond_f5
    :goto_f5
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 161
    sput v12, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 162
    sput v11, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 163
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 164
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 165
    const v0, 0xd0980

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 166
    const/16 v0, 0x6d

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 167
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 168
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_252

    .line 177
    :cond_10e
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    if-nez v0, :cond_243

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    if-nez v0, :cond_243

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    if-nez v0, :cond_243

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    if-nez v0, :cond_243

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    if-eqz v0, :cond_124

    goto/16 :goto_243

    .line 182
    :cond_124
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    const v1, 0x156300

    if-nez v0, :cond_23c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    if-nez v0, :cond_23c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    if-nez v0, :cond_23c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    if-nez v0, :cond_23c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    if-nez v0, :cond_23c

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    if-eqz v0, :cond_141

    goto/16 :goto_23c

    .line 187
    :cond_141
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z

    if-eqz v0, :cond_15d

    .line 188
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 189
    sput v12, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 190
    sput v11, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 191
    const v0, 0x163780

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 192
    const v0, 0x1506d0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 193
    sput v8, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 194
    const/16 v0, 0x8e

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_252

    .line 195
    :cond_15d
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    const v14, 0x1d4c00

    if-nez v0, :cond_232

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    if-eqz v0, :cond_16a

    goto/16 :goto_232

    .line 199
    :cond_16a
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    const/16 v15, 0x8a

    if-eqz v0, :cond_18e

    .line 200
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 201
    sput v12, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 202
    sput v11, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 203
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 204
    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 205
    sput v14, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 206
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 207
    const v0, 0x16da00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 208
    const v0, 0x13a100

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 209
    sput v7, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 210
    sput v15, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_252

    .line 211
    :cond_18e
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    if-nez v0, :cond_215

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    if-eqz v0, :cond_198

    goto/16 :goto_215

    .line 223
    :cond_198
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    if-eqz v0, :cond_1ab

    .line 224
    const v0, 0x17bb00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 225
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 226
    sput v8, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 227
    const/16 v0, 0x95

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_252

    .line 228
    :cond_1ab
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A55x:Z

    if-eqz v0, :cond_1c6

    .line 229
    const/16 v0, 0x1a4

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 230
    const/16 v0, 0x1b8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 231
    const/16 v0, 0x1cc

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 232
    const v0, 0x1bd500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 233
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 234
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_252

    .line 235
    :cond_1c6
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    if-eqz v0, :cond_1d5

    .line 236
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 237
    const v0, 0x177000

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 238
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_252

    .line 239
    :cond_1d5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    if-eqz v0, :cond_1ed

    .line 240
    const v0, 0x176830

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 241
    const v0, 0x15a310

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 242
    const v0, 0x137090

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 243
    const/16 v0, 0x95

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto :goto_252

    .line 244
    :cond_1ed
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    if-eqz v0, :cond_201

    .line 245
    const v0, 0x176060

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 246
    const v0, 0x1604b8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 247
    const v0, 0x13c298

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_252

    .line 248
    :cond_201
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    if-eqz v0, :cond_252

    .line 249
    const v0, 0x16d252

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 250
    const v0, 0x158512

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 251
    const v0, 0x142d67

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_252

    .line 212
    :cond_215
    :goto_215
    sput v13, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 213
    sput v12, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 214
    sput v11, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 215
    sput v4, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 216
    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 217
    const v0, 0x1e2d00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 218
    const v0, 0x1aa900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 219
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 220
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 221
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 222
    sput v15, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto :goto_252

    .line 196
    :cond_232
    :goto_232
    const v0, 0x208500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 197
    sput v14, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 198
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_252

    .line 184
    :cond_23c
    :goto_23c
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 185
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 186
    sput v9, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_252

    .line 179
    :cond_243
    :goto_243
    const v0, 0x1acee8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 180
    const v0, 0x186879

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 181
    const v0, 0x1693d6

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 253
    :cond_252
    :goto_252
    return-void
.end method

.method public static isSiopEnabled()Z
    .registers 1

    .line 106
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    return v0
.end method

.method public static run()V
    .registers 7

    .line 262
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/rut.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "rutFile":Ljava/io/File;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 264
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v1

    .line 265
    .local v1, "batTemp":I
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    if-eqz v2, :cond_45

    if-lez v1, :cond_45

    .line 266
    invoke-virtual {v2}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "version":Ljava/lang/String;
    const-string v3, "ro.build.PDA"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 269
    :cond_31
    sget-object v4, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v5, "/dev/null"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->improveOverheatingInFota()V

    .line 272
    :cond_3c
    sget-object v4, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/BinaryVersionDatabase;->setVersion(Ljava/lang/String;)V

    .line 275
    .end local v2  # "version":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method static updateApTemperature()V
    .registers 2

    .line 413
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getApThermistorPath()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 415
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    .line 417
    :cond_12
    return-void
.end method

.method static updateBatteryTemperature()V
    .registers 2

    .line 280
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    if-eqz v0, :cond_9

    .line 281
    const/16 v0, -0xc8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    goto :goto_19

    .line 284
    :cond_9
    :try_start_9
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v1, "/dev/null"

    .line 285
    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_17} :catch_18

    .line 287
    goto :goto_19

    .line 286
    :catch_18
    move-exception v0

    .line 289
    :goto_19
    return-void
.end method

.method static updateSkinTemperature()V
    .registers 2

    .line 422
    nop

    .line 423
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 424
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_f

    .line 425
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    .line 426
    .local v1, "temp":I
    sput v1, Lcom/android/server/ssrm/PreMonitor;->sSkinTemperature:I

    .line 428
    .end local v1  # "temp":I
    :cond_f
    return-void
.end method
