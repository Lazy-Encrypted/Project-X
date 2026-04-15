.class public Lcom/android/server/ssrm/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static mSOSUpdated:Z

.field private static sCpuMaxlock:I

.field private static sCpuMinlock:I

.field private static sDayDreamConnected:Z

.field private static sGpuMaxlock:I

.field private static sGpuMinlock:I

.field private static sIsBoostingDisabled:Z

.field private static sIsGameMode:Z

.field private static sIsGameSiopControlMode:Z

.field private static sIsHeavyDetectDisabled:Z

.field private static sIsSPAMode:Z

.field private static sIsSetupWizardFinished:Z

.field private static sIsSustainedPerformance:Z

.field private static sScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsBoostingDisabled:Z

    .line 31
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsHeavyDetectDisabled:Z

    .line 111
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/DeviceStatus;->sScreenOn:Z

    .line 131
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsSPAMode:Z

    .line 141
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsGameSiopControlMode:Z

    .line 151
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->mSOSUpdated:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableBoosting(Z)V
    .registers 1
    .param p0, "on"  # Z

    const/4 p0, 0x0

    .line 24
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sIsBoostingDisabled:Z

    .line 25
    return-void
.end method

.method public static disableHeavyDetect(Z)V
    .registers 1
    .param p0, "on"  # Z

    .line 34
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sIsHeavyDetectDisabled:Z

    .line 35
    return-void
.end method

.method public static getCpuMaxlock()I
    .registers 1

    .line 58
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sCpuMaxlock:I

    return v0
.end method

.method public static getCpuMinlock()I
    .registers 1

    .line 48
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sCpuMinlock:I

    return v0
.end method

.method public static getGpuMaxlock()I
    .registers 1

    .line 78
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sGpuMaxlock:I

    return v0
.end method

.method public static getGpuMinlock()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sGpuMinlock:I

    return v0
.end method

.method public static isBoostingDisabled()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsBoostingDisabled:Z

    return v0
.end method

.method public static isDayDreamConnected()Z
    .registers 1

    .line 88
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sDayDreamConnected:Z

    return v0
.end method

.method public static isGameMode()Z
    .registers 1

    .line 128
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsGameMode:Z

    return v0
.end method

.method public static isGameSiopControlMode()Z
    .registers 1

    .line 148
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsGameSiopControlMode:Z

    return v0
.end method

.method public static isHeavyDetectDisabled()Z
    .registers 1

    .line 38
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsHeavyDetectDisabled:Z

    return v0
.end method

.method public static isSOSUpdated()Z
    .registers 1

    .line 154
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->mSOSUpdated:Z

    return v0
.end method

.method public static isSPAMode()Z
    .registers 1

    .line 138
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsSPAMode:Z

    return v0
.end method

.method public static isScreenOn()Z
    .registers 1

    .line 118
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sScreenOn:Z

    return v0
.end method

.method public static isSetupWizardFinished()Z
    .registers 1

    .line 108
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsSetupWizardFinished:Z

    return v0
.end method

.method public static isSustainedPerformance()Z
    .registers 1

    .line 98
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sIsSustainedPerformance:Z

    return v0
.end method

.method public static setCpuMaxlock(I)V
    .registers 1
    .param p0, "clock"  # I

    .line 54
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sCpuMaxlock:I

    .line 55
    return-void
.end method

.method public static setCpuMinlock(I)V
    .registers 1
    .param p0, "clock"  # I

    .line 44
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sCpuMinlock:I

    .line 45
    return-void
.end method

.method public static setDayDreamConnected(Z)V
    .registers 1
    .param p0, "on"  # Z

    .line 84
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sDayDreamConnected:Z

    .line 85
    return-void
.end method

.method public static setGameMode(Z)V
    .registers 1
    .param p0, "isGame"  # Z

    .line 124
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sIsGameMode:Z

    .line 125
    return-void
.end method

.method public static setGameSiopControlMode(Z)V
    .registers 1
    .param p0, "isGameSiop"  # Z

    .line 144
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sIsGameSiopControlMode:Z

    .line 145
    return-void
.end method

.method public static setGpuMaxlock(I)V
    .registers 1
    .param p0, "clock"  # I

    .line 74
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sGpuMaxlock:I

    .line 75
    return-void
.end method

.method public static setGpuMinlock(I)V
    .registers 1
    .param p0, "clock"  # I

    .line 64
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sGpuMinlock:I

    .line 65
    return-void
.end method

.method public static setSOSUpdated(Z)V
    .registers 1
    .param p0, "update"  # Z

    .line 158
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->mSOSUpdated:Z

    .line 159
    return-void
.end method

.method public static setSPAMode(Z)V
    .registers 1
    .param p0, "isIpm"  # Z

    .line 134
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sIsSPAMode:Z

    .line 135
    return-void
.end method

.method public static setScreenOn(Z)V
    .registers 1
    .param p0, "on"  # Z

    .line 114
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sScreenOn:Z

    .line 115
    return-void
.end method

.method public static setSetupWizardStatus(Z)V
    .registers 1
    .param p0, "isFinish"  # Z

    .line 104
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sIsSetupWizardFinished:Z

    .line 105
    return-void
.end method

.method public static setSustainedPerformance(Z)V
    .registers 1
    .param p0, "on"  # Z

    .line 94
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sDayDreamConnected:Z

    .line 95
    return-void
.end method
