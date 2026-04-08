# classes.dex

.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JILjava/util/ArrayList;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$2:I

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$2:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->$r8$lambda$4QLKKKC_Fdr8pfjkklI2sM1ZwSE(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JILjava/util/ArrayList;)V

    return-void
.end method
