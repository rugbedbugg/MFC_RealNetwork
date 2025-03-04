.class public final synthetic Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field public final synthetic f$1:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$1:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$1:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->$r8$lambda$dvtPSHyw3lQiIt8wi4k7nBVZ4Gs(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method
