.class public Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;
.super Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker;
.source "CameraCharacteristicsMinApiLevel21.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraCharMinApiLevel21"


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker;-><init>()V

    const-class v0, Landroid/hardware/camera2/CameraManager;

    .line 18
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method private getAvailableAFModes(Ljava/lang/String;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method private getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 69
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "CameraCharMinApiLevel21"

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    new-instance v1, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception accessing the camera id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 53
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CameraCharMinApiLevel21"

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    new-instance v1, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;

    const-string v2, "Exception accessing the camera list"

    invoke-direct {v1, v2, v0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private hasDeviceAutofocus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 38
    invoke-direct {p0, v4}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->isLensFacingBack(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-direct {p0, v4}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->testAutofocusModeForCamera(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :goto_2
    const-string v1, "CameraCharMinApiLevel21"

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    new-instance v1, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;

    const-string v2, "Exception accessing the camera list"

    invoke-direct {v1, v2, v0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isAutofocus(I)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLensFacingBack(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private testAutofocusModeForCamera(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->getAvailableAFModes(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->testAvailableMode([I)Z

    move-result p1
    :try_end_0
    .catch Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :goto_1
    const-string v1, "CameraCharMinApiLevel21"

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    new-instance v1, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception accessing the camera id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private testAvailableMode([I)Z
    .locals 4

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    .line 99
    invoke-direct {p0, v3}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->isAutofocus(I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public hasAutofocus()Z
    .locals 3

    .line 25
    :try_start_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsMinApiLevel21;->hasDeviceAutofocus()Z

    move-result v0
    :try_end_0
    .catch Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker$FDroidDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraCharMinApiLevel21"

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
