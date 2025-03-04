.class public Lcom/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    }
.end annotation


# instance fields
.field private autoFocusEnabled:Z

.field private autoTorchEnabled:Z

.field private barcodeSceneModeEnabled:Z

.field private continuousFocusEnabled:Z

.field private exposureEnabled:Z

.field private focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field private meteringEnabled:Z

.field private requestedCameraId:I

.field private scanInverted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    .line 17
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method


# virtual methods
.method public getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object v0
.end method

.method public getRequestedCameraId()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    return v0
.end method

.method public isAutoTorchEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    return v0
.end method

.method public isBarcodeSceneModeEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    return v0
.end method

.method public isExposureEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    return v0
.end method

.method public isMeteringEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    return v0
.end method

.method public isScanInverted()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    return v0
.end method

.method public setRequestedCameraId(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    return-void
.end method
