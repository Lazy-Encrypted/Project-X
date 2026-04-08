# classes.dex

.class public final Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;
.super Ljava/lang/Object;
.source "Face10.java"


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mBacklight:I

.field public mBrightnessUp:I

.field public mContext:Landroid/content/Context;

.field public mDaemonIsCancelling:Z

.field public mEnrollStartTime:J

.field public mFABK:I

.field public mFALI:I

.field public mFALQ:I

.field public mFAMO:I

.field public mFANM:I

.field public mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field public mHalDeviceId:J

.field public mHandlerMain:Landroid/os/Handler;

.field public mInsufficient:I

.field public mIsAuthenticateResult:Z

.field public mIsAuthenticationExtOperation:Z

.field public mIsCheckedTooDark:Z

.field public mIsEnrollPausing:Z

.field public mIsOperationStarted:Z

.field public mLastRotation:I

.field public mMemoryFile:Landroid/os/MemoryFile;

.field public mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

.field public mMotion:I

.field public mOperationType:I

.field public mOrientationEventListener:Landroid/view/OrientationEventListener;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPrevAcquiredInfo:I

.field public mPrevAcquiredVendorInfo:I

.field public mPreviewImage:[B

.field public mPreviewSurface:Landroid/view/Surface;

.field public mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

.field public mSecurityLevel:I

.field public mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public mShouldRemoveRegisteredFaceOnCancelling:Z

.field public mSkipAcquiredEventCount:I

.field public mStartOperationTime:J

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public static synthetic $r8$lambda$5o3Y_KlZ0UUThHYyXVGBwhf3Diw(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$sendImageProcessed$6(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZLomap57OkhMM2G0WgCX5yaNM4(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$stopOperation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GHsxReUh6UbbmRFPiV9xvtx0PmE(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$startOperation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$LUXJin_lq97DJY19UTfZLrqSK6c(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/hardware/face/Face;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$doTemplateSyncForUser$4(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iibrSaW1X58sUO_5FIj-TroFVqI(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$doTemplateSyncForUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pv4qP54n4DUeF2zk3xRebYGB1-4(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;ILandroid/hardware/face/Face;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$doTemplateSyncForUser$5(ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDaemonIsCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mLastRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMemoryFileForAuthPreviewResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/os/MemoryFile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEnrollStartTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAuthenticateResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mLastRotation:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMemoryFileForAuthPreviewResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/MemoryFile;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonAuthenticate(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonAuthenticate(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonCancel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonCancel()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonEnroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonIsSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonIsSessionClose()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonPauseAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonPauseAuth()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonPauseEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonPauseEnroll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonRemove(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonRemove(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonResumeAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonResumeAuth()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonResumeEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonResumeEnroll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSessionClose()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSessionOpen(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSessionOpen()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSetActiveUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetActiveUser(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonSetRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetRotation(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoTemplateSyncForUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;JLjava/util/ArrayList;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->doTemplateSyncForUser(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRemainingLockoutTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getSecurityLevel(Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAcquired(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAuthenticatedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAuthenticatedExt(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAuthenticatedTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAuthenticatedTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monEnrollResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onEnrollResult(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monEnrollResultExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onEnrollResultExt(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onError(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monErrorExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onErrorExt(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPreAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onPreAcquired(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monPreError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onPreError(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monRemovedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onRemovedExt(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetFailedAttempts(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->resetFailedAttempts(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetOperationTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->resetOperationTimeout(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendAcquired(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendError(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendFailed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendFailed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendImageProcessed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendImageProcessed(IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSucceeded(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendSucceeded(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setSecurityLevel(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;)V
    .registers 8

    .line 1777
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1707
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    .line 1709
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    const/4 v1, 0x0

    .line 1718
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    .line 1720
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    const-wide/16 v2, -0x1

    .line 1721
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    const/4 v4, -0x1

    .line 1722
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    .line 1723
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z

    .line 1724
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    .line 1725
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    .line 1726
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 1728
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    .line 1729
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 1730
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    .line 1732
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    .line 1733
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    .line 1734
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    .line 1751
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    .line 1754
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 1755
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticationExtOperation:Z

    .line 1757
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    .line 1778
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 1779
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 1780
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1781
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x1000000a

    const-string v2, "Face10"

    invoke-virtual {p2, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1783
    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {p2, p0, v0, v2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 1799
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 1800
    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    goto :goto_7e

    .line 1817
    :cond_7c
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    .line 1819
    :goto_7e
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->registerBroadcastEvents()V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$3(I)V
    .registers 4

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    const/4 v1, -0x1

    .line 2458
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$4(Landroid/hardware/face/Face;I)V
    .registers 4

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    .line 2483
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$5(ILandroid/hardware/face/Face;)V
    .registers 5

    .line 2494
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    .line 2495
    invoke-virtual {p2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_22

    :cond_1c
    const-string p2, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    const/4 v0, -0x1

    .line 2497
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    :goto_22
    return-void
.end method

.method private synthetic lambda$sendImageProcessed$6(IIII)V
    .registers 16

    .line 2784
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    const-string v1, "Face10"

    if-nez v0, :cond_15

    const-string/jumbo p0, "sendImageProcessed: client is null"

    .line 2786
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2789
    :cond_15
    instance-of v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    const/4 v3, 0x0

    if-nez v2, :cond_54

    instance-of v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticationExtOperation:Z

    if-nez v2, :cond_54

    .line 2790
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendImageProcessed : Wrong Client : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Proto="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ext="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticationExtOperation:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2790
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    return-void

    .line 2795
    :cond_54
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2797
    :try_start_59
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_69

    .line 2798
    new-instance v2, Landroid/os/MemoryFile;

    const-string v4, "face_preview"

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    array-length v5, v5

    invoke-direct {v2, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    .line 2800
    :cond_69
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v6, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 2802
    const-class v2, Landroid/os/MemoryFile;

    const-string v4, "getFileDescriptor"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2803
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    .line 2804
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const-string/jumbo v4, "memoryfile_descriptor"

    .line 2806
    invoke-virtual {v10, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v2, 0x1

    new-array v2, v2, [B

    .line 2807
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_95} :catch_96

    goto :goto_9d

    :catch_96
    move-exception v2

    const-string/jumbo v4, "sendImageProcessed MemoryFile: "

    .line 2809
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2812
    :goto_9d
    :try_start_9d
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticationExtOperation:Z

    if-eqz v2, :cond_ae

    .line 2813
    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onImageProcessed([BIIIILandroid/os/Bundle;)V

    goto :goto_c2

    .line 2815
    :cond_ae
    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onImageProcessed([BIIIILandroid/os/Bundle;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ba} :catch_bb

    goto :goto_c2

    :catch_bb
    move-exception p1

    const-string/jumbo p2, "sendImageProcessed onImageProcessed: "

    .line 2818
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2820
    :goto_c2
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    return-void
.end method

.method private synthetic lambda$startOperation$0()V
    .registers 2

    .line 1971
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1972
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1974
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    if-eqz p0, :cond_14

    .line 1975
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->registerListener()Z

    :cond_14
    const-string/jumbo p0, "service.bioface.authenticating"

    const-string v0, "1"

    .line 1977
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$stopOperation$1()V
    .registers 2

    .line 2018
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2019
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    if-eqz p0, :cond_c

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->unregisterListener()V

    :cond_c
    const-string/jumbo p0, "service.bioface.authenticating"

    const-string v0, "0"

    .line 2022
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final acquireDVFS(II)V
    .registers 11

    const-string v0, "Face10"

    const-string v1, "acquireDVFS"

    .line 2111
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 p0, 0x1

    if-ne p2, p0, :cond_15

    const/16 p0, 0xdb7

    goto :goto_17

    :cond_15
    const/16 p0, 0xdb8

    :goto_17
    move v4, p0

    const/16 v5, 0x8

    const-string v6, "GFACE_SERVICE"

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method

.method public final daemonAuthenticate(J)V
    .registers 11

    .line 2525
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    const-string v1, "Face10"

    if-nez v0, :cond_10

    const-string p0, "authenticate(): no face HAL!"

    .line 2527
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v2, 0x2

    .line 2530
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startOperation(I)V

    .line 2532
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    const-string/jumbo v3, "ms) RESULT: "

    if-eqz v2, :cond_43

    .line 2533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2534
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result p0

    .line 2535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "authenticate FINISH ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 2537
    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoRequestDataAsArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, p1, p2, p0, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(JILjava/util/ArrayList;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sehAuthenticate FINISH ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-void
.end method

.method public final declared-synchronized daemonCancel()I
    .registers 8

    monitor-enter p0

    .line 2027
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_13

    const-string v0, "Face10"

    const-string v2, "daemonCancel(): no face HAL!"

    .line 2029
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_50

    .line 2030
    monitor-exit p0

    return v1

    :cond_13
    const/4 v2, 0x1

    .line 2033
    :try_start_14
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_50

    .line 2035
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2036
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result v1

    const-string v0, "Face10"

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "daemonCancel FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_42} :catch_43
    .catchall {:try_start_16 .. :try_end_42} :catchall_50

    goto :goto_4b

    :catch_43
    move-exception v0

    :try_start_44
    const-string v2, "Face10"

    const-string v3, "Failed to get biometric interface"

    .line 2039
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    const/4 v0, 0x0

    .line 2041
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_50

    .line 2042
    monitor-exit p0

    return v1

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final daemonEnroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 9

    .line 2549
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "Face10"

    if-nez v0, :cond_11

    const-string p0, "daemonEnroll: no face HAL!"

    .line 2551
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    if-eqz p1, :cond_61

    .line 2554
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_61

    :cond_1a
    const/4 v1, 0x1

    .line 2558
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startOperation(I)V

    .line 2559
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_36

    .line 2560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hardwareAuthToken  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2563
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p0

    .line 2564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enroll FINISH ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v3

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms) RESULT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_61
    :goto_61
    const-string p0, "daemonEnroll: hardwareAuthToken is null or 0"

    .line 2555
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final daemonEnumerateUser()I
    .registers 7

    const-string v0, "Face10"

    .line 2715
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3d

    .line 2718
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2719
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result p0

    .line 2720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemonEnumerateUser FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_37

    return p0

    :catch_37
    move-exception p0

    const-string v1, "daemonEnumerateUser: "

    .line 2723
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    const/4 p0, -0x1

    return p0
.end method

.method public daemonGetTrustAppVersion()Ljava/lang/String;
    .registers 7

    .line 1844
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const-string v0, "Face10"

    const-string v1, ""

    if-nez p0, :cond_14

    const-string p0, "daemonGetTrustAppVersion(): no face HAL!"

    .line 1846
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1850
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1851
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    move-result-object v1

    .line 1852
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehGetTaInfo FINISH ("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_56

    :catch_3d
    move-exception p0

    .line 1854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrustAppVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :goto_56
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_6e

    .line 1857
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrustAppVersion: returned: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-object v1
.end method

.method public final daemonIsSessionClose()Z
    .registers 7

    const-string v0, "Face10"

    .line 2700
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3e

    .line 2703
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2704
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    move-result p0

    .line 2705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehIsTaSessionClosed FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    return p0

    :catch_38
    move-exception p0

    const-string v1, "daemonIsSessionClose: "

    .line 2708
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public final daemonPauseAuth()V
    .registers 7

    .line 2638
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 2639
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    const-string v1, "Face10"

    if-eqz v0, :cond_4d

    .line 2640
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_52

    .line 2643
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2644
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result p0

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehPauseEnrollment(auth) FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    move-exception p0

    const-string v0, "daemonPauseEnrollment(auth): "

    .line 2647
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :cond_4d
    const-string p0, "daemonPauseAuth skipped"

    .line 2651
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method public final daemonPauseEnroll()V
    .registers 8

    const-string v0, "Face10"

    .line 2606
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz v1, :cond_3e

    .line 2609
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2610
    invoke-interface {v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result v1

    .line 2611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehPauseEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v1

    const-string v2, "daemonPauseEnroll: "

    .line 2613
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    .line 2616
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    return-void
.end method

.method public final daemonRemove(I)I
    .registers 8

    .line 2588
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "Face10"

    if-nez p0, :cond_11

    const-string p0, "daemonRemove: no face HAL!"

    .line 2590
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2596
    :cond_11
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_1c

    .line 2597
    :try_start_15
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_33

    :catch_1a
    move-exception p0

    goto :goto_1f

    :catch_1c
    move-exception p0

    const-wide/16 v2, 0x0

    .line 2599
    :goto_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemonRemove : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :goto_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "daemonRemove FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms) RESULT: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final daemonResumeAuth()V
    .registers 7

    .line 2656
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 2657
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    const-string v1, "Face10"

    if-eqz v0, :cond_4d

    .line 2658
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_52

    .line 2661
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2662
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result p0

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehResumeEnrollment(auth) FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    move-exception p0

    const-string v0, "daemonResumeAuth(auth): "

    .line 2665
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :cond_4d
    const-string p0, "daemonResumeAuth skipped"

    .line 2669
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method public final daemonResumeEnroll()V
    .registers 8

    const-string v0, "Face10"

    .line 2620
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz v1, :cond_3e

    .line 2623
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2624
    invoke-interface {v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result v1

    .line 2625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehResumeEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v1

    const-string v2, "daemonResumeEnroll: "

    .line 2627
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2630
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    .line 2631
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    const v0, 0xea60

    goto :goto_53

    :cond_51
    const/16 v0, 0x7530

    .line 2633
    :goto_53
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startOperationTimeout(I)V

    .line 2634
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    return-void
.end method

.method public final daemonSessionClose()V
    .registers 7

    const-string v0, "Face10"

    .line 2687
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3e

    .line 2690
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2691
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    move-result p0

    .line 2692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehCloseTaSession FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string v1, "daemonSessionClose: "

    .line 2694
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final daemonSessionOpen()V
    .registers 7

    const-string v0, "Face10"

    .line 2674
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3e

    .line 2677
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2678
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    move-result p0

    .line 2679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehOpenTaSession FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string v1, "daemonSessionOpen: "

    .line 2681
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final daemonSetActiveUser(I)I
    .registers 9

    .line 2569
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "Face10"

    if-nez p0, :cond_11

    const-string p0, "daemonSetActiveUser: no face HAL!"

    .line 2571
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    const-wide/16 v2, 0x0

    .line 2577
    :try_start_13
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v5

    const-string v6, "facedata"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2579
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, p1, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p0

    .line 2581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemonSetActiveUser : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "daemonSetActiveUser FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms) RESULT: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final daemonSetRotation(I)V
    .registers 8

    .line 2046
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const-string v1, "Face10"

    if-nez v0, :cond_12

    const-string p0, "daemonSetRotation(): no face HAL!"

    .line 2048
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2052
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2053
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getRotationValue(I)I

    move-result p0

    invoke-interface {v0, p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    move-result p0

    .line 2054
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetRotation FINISH ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) RESULT: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_40} :catch_41

    goto :goto_5a

    :catch_41
    move-exception p0

    .line 2056
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonSetRotation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method public final doTemplateSyncForUser(JLjava/util/ArrayList;I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p4

    const-string v2, "Face10"

    .line 2422
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v3, :cond_b

    return-void

    :cond_b
    if-nez p3, :cond_13

    .line 2427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15

    :cond_13
    move-object/from16 v3, p3

    .line 2430
    :goto_15
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 2431
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2434
    :try_start_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doTemplateSyncForUser: FW="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", HAL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-lez v5, :cond_5d

    const/4 v7, 0x1

    move v8, v6

    move v9, v7

    :goto_4b
    if-ge v8, v5, :cond_5e

    .line 2439
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v7, :cond_5a

    move v9, v6

    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    :cond_5d
    move v9, v6

    :cond_5e
    if-eqz v9, :cond_6b

    const-string v7, "Main face ID(1) was removed!!!"

    .line 2447
    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetActiveUser(I)I

    .line 2449
    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonRemove(I)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6b} :catch_19d

    :cond_6b
    const-string/jumbo v7, "removing unknown template from fw, "

    const-string v8, "doTemplateSyncForUser"

    const/4 v10, -0x1

    if-eqz v5, :cond_14f

    if-eqz v9, :cond_77

    goto/16 :goto_14f

    :cond_77
    if-lez v5, :cond_1b6

    move v9, v6

    :goto_7a
    if-ge v9, v5, :cond_108

    .line 2464
    :try_start_7c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 2466
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enumerate: HAL ID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v6

    :goto_99
    if-ge v12, v11, :cond_b5

    .line 2469
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/face/Face;

    invoke-virtual {v13}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_b2

    goto :goto_b6

    :cond_b2
    add-int/lit8 v12, v12, 0x1

    goto :goto_99

    :cond_b5
    move v12, v10

    :goto_b6
    if-ltz v12, :cond_be

    .line 2475
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-wide/from16 v14, p1

    goto :goto_104

    .line 2477
    :cond_be
    new-instance v11, Landroid/hardware/face/Face;

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 2478
    invoke-virtual {v12, v13, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2479
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-wide/from16 v14, p1

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 2480
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13, v1, v11}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    .line 2481
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enumerate: adding unknown template, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v12}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0, v11, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/hardware/face/Face;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_104
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7a

    .line 2488
    :cond_108
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 2489
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v9

    invoke-virtual {v5, v6, v1, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 2490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    .line 2493
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;ILandroid/hardware/face/Face;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10c

    .line 2453
    :cond_14f
    :goto_14f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b6

    .line 2454
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_159
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_187

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 2455
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v9

    invoke-virtual {v5, v6, v1, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 2456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 2458
    :cond_187
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2459
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_19c} :catch_19d

    goto :goto_1b6

    :catch_19d
    move-exception v0

    .line 2503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enumerate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    :goto_1b6
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2202
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current User : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v1, :cond_30

    const-string v1, " , J"

    goto :goto_32

    :cond_30
    const-string v1, " , S"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FALI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FABK : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFABK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FAMO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFAMO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FALQ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FANM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFANM:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceDump(Ljava/io/PrintWriter;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_9d

    :catch_82
    move-exception p0

    .line 2207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dump: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9d
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1825
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentClientHashID()I
    .registers 2

    .line 2757
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Face10"

    const-string v0, "getCurrentClientHashID : client is null"

    .line 2759
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2762
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result p0

    return p0
.end method

.method public final getCurrentClientOwnerString()Ljava/lang/String;
    .registers 2

    .line 2516
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Face10"

    const-string v0, "getCurrentClientOwnerString : client is null"

    .line 2518
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2521
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentClientUserID()I
    .registers 2

    .line 2766
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Face10"

    const-string v0, "getCurrentClientHashID : client is null"

    .line 2768
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2771
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    return p0
.end method

.method public getHalDeviceId()J
    .registers 3

    .line 2779
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getRemainingLockoutTime(I)I
    .registers 2

    .line 2153
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public final getRotationValue(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/16 p0, 0x10e

    return p0

    :cond_c
    const/16 p0, 0xb4

    return p0

    :cond_f
    const/16 p0, 0x5a

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final getSecurityLevel(Z)I
    .registers 4

    .line 2191
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    if-nez p1, :cond_8

    const/4 p1, 0x1

    if-ne v0, p1, :cond_8

    const/4 v0, 0x2

    .line 2196
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSL : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isBrightnessEnable()Z
    .registers 5

    .line 2123
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    .line 2126
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    .line 2129
    :cond_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p0

    const-string v1, "face_brighten_screen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_2b

    move v2, v3

    :cond_2b
    return v2
.end method

.method public final isCurrentClientKeyguard()Z
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2509
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final onAcquired(II)V
    .registers 3

    .line 2348
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p0, :cond_7

    .line 2349
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceCountHelpEvent(II)V

    :cond_7
    return-void
.end method

.method public final onAuthenticatedExt(I)V
    .registers 14

    .line 2212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    sub-long v9, v2, v4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_99

    const/4 v3, 0x2

    if-eq p1, v3, :cond_32

    const/4 v2, 0x3

    if-eq p1, v2, :cond_13

    goto/16 :goto_b6

    .line 2242
    :cond_13
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_1e

    .line 2243
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnTimeout(Ljava/lang/String;)V

    .line 2245
    :cond_1e
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v7

    const-string v8, "T"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto/16 :goto_b6

    .line 2221
    :cond_32
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_86

    .line 2222
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v3, :cond_42

    .line 2223
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    goto :goto_86

    .line 2225
    :cond_42
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4d

    .line 2226
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALI:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALI:I

    goto :goto_71

    .line 2227
    :cond_4d
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBacklight:I

    if-lt v3, v4, :cond_57

    .line 2228
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFABK:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFABK:I

    goto :goto_71

    .line 2229
    :cond_57
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMotion:I

    if-lt v3, v4, :cond_61

    .line 2230
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFAMO:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFAMO:I

    goto :goto_71

    .line 2231
    :cond_61
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_6c

    .line 2232
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALQ:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALQ:I

    goto :goto_71

    .line 2234
    :cond_6c
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFANM:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFANM:I

    .line 2236
    :goto_71
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBacklight:I

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMotion:I

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailureForHIDL(Ljava/lang/String;IIII)V

    .line 2239
    :cond_86
    :goto_86
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v7

    const-string v8, "N"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto :goto_b6

    .line 2215
    :cond_99
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_a4

    .line 2216
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedSuccess(Ljava/lang/String;)V

    .line 2218
    :cond_a4
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v7

    const-string v8, "M"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    :goto_b6
    return-void
.end method

.method public final onAuthenticatedTimeout()V
    .registers 9

    .line 2251
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    if-eqz v0, :cond_23

    .line 2252
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientUserID()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->-$$Nest$monAuthenticatedInternal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIILjava/util/ArrayList;Z)V

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    .line 2254
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonCancel()I

    goto :goto_47

    .line 2256
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    .line 2257
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonCancel()I

    const/4 v0, 0x3

    .line 2258
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAuthenticatedExt(I)V

    .line 2259
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    if-eqz v1, :cond_43

    const/16 v0, 0x8

    const v1, 0x186a2

    .line 2260
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendError(II)V

    goto :goto_47

    :cond_43
    const/4 v1, 0x0

    .line 2262
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendError(II)V

    :goto_47
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_a

    .line 1838
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    :cond_a
    return-void
.end method

.method public final onEnrollResult(Ljava/lang/String;II)V
    .registers 4

    .line 2384
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x1e

    if-ne p3, p1, :cond_b

    .line 2386
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperationTimeout()V

    :cond_b
    if-nez p3, :cond_14

    .line 2390
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    :cond_14
    return-void
.end method

.method public final onEnrollResultExt(Ljava/lang/String;II)V
    .registers 10

    if-nez p3, :cond_32

    .line 2374
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p1

    const-string p3, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 2375
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p1, :cond_18

    .line 2376
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnEnrollmentSuccess(Ljava/lang/String;)V

    .line 2378
    :cond_18
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v1

    const-string v2, "S"

    .line 2379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    sub-long v3, p1, v3

    const/4 v5, 0x0

    .line 2378
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    :cond_32
    return-void
.end method

.method public final onError(II)V
    .registers 4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1a

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_1a

    const-string p1, "Face10"

    const-string/jumbo p2, "onError : TEMPLATE_CORRUPTED"

    .line 2292
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetActiveUser(I)I

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonEnumerateUser()I

    :cond_1a
    return-void
.end method

.method public final onErrorExt(II)V
    .registers 11

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 2281
    :cond_6
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v2

    const-string v3, "E"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    sub-long/2addr v4, v6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_21

    move v6, p2

    goto :goto_22

    :cond_21
    move v6, p1

    :goto_22
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 2284
    :cond_25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v0, :cond_30

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnError(Ljava/lang/String;II)V

    :cond_30
    return-void
.end method

.method public final onPreAcquired(II)I
    .registers 16

    .line 2299
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x3f7

    const/16 v2, 0x16

    const/4 v3, 0x1

    if-ne p1, v3, :cond_17

    .line 2303
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    goto :goto_38

    :cond_17
    if-ne p1, v2, :cond_21

    if-ne p2, v0, :cond_21

    .line 2305
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    goto :goto_38

    :cond_21
    if-ne p1, v2, :cond_2d

    const/16 v4, 0x3fe

    if-ne p2, v4, :cond_2d

    .line 2307
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBacklight:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBacklight:I

    goto :goto_38

    :cond_2d
    if-ne p1, v2, :cond_38

    const/16 v4, 0x3ff

    if-ne p2, v4, :cond_38

    .line 2309
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMotion:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMotion:I

    .line 2311
    :cond_38
    :goto_38
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const-string v5, ", "

    const-string v8, "Face10"

    if-eqz v4, :cond_86

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isNoFaceGuideEvents(II)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 2312
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    iget-wide v9, v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    const-wide/16 v11, 0xbb8

    add-long/2addr v9, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-lez v4, :cond_80

    .line 2313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreAcquired: no face event skip ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2316
    :cond_80
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    iput-wide v6, v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    :cond_86
    if-eq p1, v2, :cond_8c

    .line 2319
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    if-eq p1, v4, :cond_92

    :cond_8c
    if-ne p1, v2, :cond_9c

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    if-ne p2, v4, :cond_9c

    .line 2321
    :cond_92
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    const/16 v6, 0x1e

    if-ge v4, v6, :cond_9c

    return v3

    .line 2325
    :cond_9c
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    .line 2326
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    .line 2327
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 2329
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    if-nez v4, :cond_c7

    .line 2330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreAcquired: skip ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2334
    :cond_c7
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d8

    if-ne p1, v2, :cond_d8

    if-ne p2, v0, :cond_d8

    .line 2337
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->upBrightnessMax()V

    return v3

    :cond_d8
    if-ne v4, v3, :cond_e3

    if-ne p1, v2, :cond_de

    if-eq p2, v0, :cond_e1

    :cond_de
    const/4 p2, 0x3

    if-ne p1, p2, :cond_e3

    .line 2342
    :cond_e1
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    :cond_e3
    return v1
.end method

.method public final onPreError(II)I
    .registers 5

    const/4 p0, 0x5

    const/4 p2, 0x1

    const-string v0, "Face10"

    if-ne p1, p0, :cond_d

    const-string/jumbo p0, "onError: skip error (5:cancel) from daemon"

    .line 2269
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 2272
    :cond_d
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    if-nez p0, :cond_30

    .line 2273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: skip ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public final onRemovedExt(Ljava/lang/String;I)V
    .registers 6

    .line 2395
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_25

    .line 2396
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_30

    .line 2398
    :cond_25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 2400
    :goto_30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p0, :cond_3b

    .line 2401
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnRemoved(Ljava/lang/String;)V

    .line 2403
    :cond_3b
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public final registerBroadcastEvents()V
    .registers 4

    .line 2892
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 2893
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2894
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseDVFS()V
    .registers 3

    const-string v0, "Face10"

    const-string/jumbo v1, "releaseDVFS"

    .line 2118
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

.method public final declared-synchronized releaseWakeLock(Z)V
    .registers 5

    monitor-enter p0

    .line 2174
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "Face10"

    .line 2175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_27

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->userActivity()V

    .line 2179
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 2181
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final resetFailedAttempts(Z)V
    .registers 2

    .line 2149
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->resetFailedAttempts(Z)V

    return-void
.end method

.method public final resetOperationTimeout(I)Z
    .registers 4

    const-string v0, "Face10"

    const-string/jumbo v1, "resetOperationTimeout"

    .line 1909
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1913
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startInactivityTimer(I)V

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseDVFS()V

    const/4 v0, 0x2

    .line 1915
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->acquireDVFS(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final restoreBrightness()V
    .registers 2

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isBrightnessEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2140
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->restoreBrightness()V

    :cond_f
    return-void
.end method

.method public final sendAcquired(II)V
    .registers 4

    .line 2730
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2731
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_2a

    .line 2732
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendAcquired - not AcquisitionClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2735
    :cond_2a
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public final sendBroadcast(Ljava/lang/String;II)V
    .registers 8

    const-string v0, "Face10"

    .line 2354
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_16

    const-string v2, "faceIndex"

    .line 2356
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    .line 2357
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    const/high16 v2, 0x1000000

    .line 2360
    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2361
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2362
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_5e

    const-string p3, "["

    if-eqz p0, :cond_46

    .line 2363
    :try_start_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is sent with faceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 2365
    :cond_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is sent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_5e

    goto :goto_74

    :catch_5e
    move-exception p0

    .line 2368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendBroadcast failed :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-void
.end method

.method public final sendError(II)V
    .registers 4

    .line 2739
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2740
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_2a

    .line 2741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendError - not AcquisitionClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2744
    :cond_2a
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    return-void
.end method

.method public final sendFailed()V
    .registers 4

    .line 2939
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2940
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    const-string v1, "Face10"

    if-nez v0, :cond_2a

    .line 2941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendFailed - not AcquisitionClient: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2944
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 2947
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onSemAuthenticationFailed()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception p0

    const-string/jumbo v0, "sendFailed : Unable to notify listener, finishing"

    .line 2950
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final sendImageProcessed(IIII)V
    .registers 13

    .line 2783
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendSucceeded(Landroid/os/Bundle;)V
    .registers 4

    .line 2923
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2924
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    const-string v1, "Face10"

    if-nez v0, :cond_2a

    .line 2925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendSuccess - not AcquisitionClient: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2928
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2931
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onSemAuthenticationSucceededWithBundle(ILandroid/os/Bundle;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_3f

    :catch_38
    move-exception p0

    const-string/jumbo p1, "sendSucceeded : Unable to notify listener, finishing"

    .line 2934
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final setCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V
    .registers 6

    .line 2912
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 2913
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2919
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->setCancellationSignal(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public final setFaceTag(I[B)I
    .registers 9

    .line 2061
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const/4 v0, 0x0

    const-string v1, "Face10"

    if-nez p0, :cond_14

    const-string/jumbo p0, "setFaceTag(): no face HAL!"

    .line 2063
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2067
    :cond_14
    :try_start_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2e

    .line 2068
    array-length v3, p2

    if-lez v3, :cond_2e

    .line 2069
    array-length v3, p2

    move v4, v0

    :goto_20
    if-ge v4, v3, :cond_2e

    aget-byte v5, p2, v4

    .line 2070
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 2073
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2074
    invoke-interface {p0, p1, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(ILjava/util/ArrayList;)I

    .line 2075
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sehSetFaceTag FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_55} :catch_57

    const/4 p0, 0x1

    return p0

    :catch_57
    move-exception p0

    .line 2078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setFaceTag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setHalDeviceId(J)V
    .registers 3

    .line 2775
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHalDeviceId:J

    return-void
.end method

.method public final setSecurityLevel(I)V
    .registers 2

    .line 2186
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    .line 2187
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->oemStrengthToPropertyStrength(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    return-void
.end method

.method public final declared-synchronized setWakeLock(ZI)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 2163
    :try_start_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "Face10"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1c

    .line 2165
    :cond_f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "Face10"

    const v1, 0x1000000a

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2167
    :goto_1c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "Face10"

    const-string/jumbo v0, "setWakeLock"

    .line 2168
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    .line 2171
    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startBrightness()V
    .registers 2

    .line 2133
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isBrightnessEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2134
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->startBrightness(I)V

    :cond_15
    return-void
.end method

.method public final startInactivityTimer(I)V
    .registers 6

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInactivityTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1892
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final declared-synchronized startOperation(I)V
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "Face10"

    const-string/jumbo v1, "startOperation S"

    .line 1920
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1923
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    .line 1924
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    .line 1925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    const v1, 0xea60

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5e

    .line 1928
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    .line 1929
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/16 v1, 0x7530

    :goto_2f
    const-string v0, "Face10"

    .line 1930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll timeout set as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startInactivityTimer(I)V

    .line 1932
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x1a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 1933
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "Biometrics_FaceService"

    const/4 v10, 0x0

    .line 1932
    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_5e
    const/4 v3, 0x2

    if-ne p1, v3, :cond_b0

    .line 1935
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isNeededSetBrightness()Z

    move-result v3

    if-eqz v3, :cond_70

    const/16 v3, 0x1388

    goto :goto_72

    :cond_70
    const/16 v3, 0xfa0

    .line 1937
    :goto_72
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->needToAuthenticateExt()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1939
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 1940
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->resetSurface()V

    .line 1941
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticationExtOperation:Z

    const v3, 0x927c0

    .line 1943
    :cond_86
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Z

    move-result v4

    if-eqz v4, :cond_8f

    goto :goto_90

    :cond_8f
    move v1, v3

    :goto_90
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startInactivityTimer(I)V

    .line 1944
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startBrightness()V

    new-array v1, v0, [B

    .line 1947
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isBrightnessEnable()Z

    move-result v4

    if-eqz v4, :cond_a8

    move v4, v0

    goto :goto_a9

    :cond_a8
    move v4, v2

    :goto_a9
    aput-byte v4, v1, v2

    .line 1948
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setFaceTag(I[B)I

    move v1, v3

    goto :goto_b2

    :cond_b0
    const/16 v1, 0x1770

    .line 1950
    :goto_b2
    invoke-virtual {p0, v1, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->acquireDVFS(II)V

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isCurrentClientKeyguard()Z

    move-result p1

    add-int/lit16 v1, v1, 0xbb8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setWakeLock(ZI)V

    .line 1953
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mLastRotation:I

    .line 1954
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetRotation(I)V

    const/4 p1, -0x1

    .line 1956
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    .line 1957
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 1958
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    .line 1959
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    .line 1960
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    .line 1961
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    const/4 p1, 0x0

    .line 1962
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    .line 1963
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    .line 1964
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBacklight:I

    .line 1965
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMotion:I

    .line 1966
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    const-string p1, "Face10"

    const-string/jumbo v0, "startOperation E"

    .line 1968
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_fb
    .catchall {:try_start_1 .. :try_end_fb} :catchall_fd

    .line 1979
    monitor-exit p0

    return-void

    :catchall_fd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startOperationTimeout(I)V
    .registers 6

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startOperationTimeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1898
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1899
    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->acquireDVFS(II)V

    return-void
.end method

.method public final declared-synchronized stopOperation()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperation S"

    .line 1982
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_17

    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperation E : skip"

    .line 1985
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_83

    .line 1986
    monitor-exit p0

    return-void

    .line 1989
    :cond_17
    :try_start_17
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_34

    .line 1990
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 1991
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Biometrics_FaceService"

    const/16 v6, 0x1a

    .line 1990
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseWakeLock(Z)V

    goto :goto_41

    :cond_34
    const/4 v3, 0x2

    if-ne v0, v3, :cond_41

    .line 1994
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseWakeLock(Z)V

    .line 1995
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->restoreBrightness()V

    .line 1997
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseDVFS()V

    .line 1998
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    .line 2000
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    .line 2001
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    .line 2002
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    const-wide/16 v0, -0x1

    .line 2003
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    .line 2004
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 2005
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 2006
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    .line 2008
    :cond_5e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    if-eqz v0, :cond_67

    .line 2009
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 2010
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 2012
    :cond_67
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticationExtOperation:Z

    .line 2013
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewSurface:Landroid/view/Surface;

    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperation E"

    .line 2015
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_81
    .catchall {:try_start_17 .. :try_end_81} :catchall_83

    .line 2024
    monitor-exit p0

    return-void

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stopOperationTimeout()V
    .registers 3

    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperationTimeout"

    .line 1903
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseDVFS()V

    return-void
.end method

.method public final upBrightnessMax()V
    .registers 1

    .line 2145
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightnessMax()V

    return-void
.end method

.method public final userActivity()V
    .registers 5

    .line 2157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2158
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method
