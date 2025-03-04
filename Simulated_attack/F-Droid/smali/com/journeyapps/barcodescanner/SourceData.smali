.class public Lcom/journeyapps/barcodescanner/SourceData;
.super Ljava/lang/Object;
.source "SourceData.java"


# instance fields
.field private cropRect:Landroid/graphics/Rect;

.field private data:Lcom/journeyapps/barcodescanner/RawImageData;

.field private imageFormat:I

.field private previewMirrored:Z

.field private rotation:I

.field private scalingFactor:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->scalingFactor:I

    .line 45
    new-instance v0, Lcom/journeyapps/barcodescanner/RawImageData;

    invoke-direct {v0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/RawImageData;-><init>([BII)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    iput p5, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    iput p4, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    mul-int p4, p2, p3

    .line 48
    array-length p5, p1

    if-gt p4, p5, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image data does not match the resolution. "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method


# virtual methods
.method public createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 11

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    iget v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    .line 124
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/RawImageData;->rotateCameraPreview(I)Lcom/journeyapps/barcodescanner/RawImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->scalingFactor:I

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/journeyapps/barcodescanner/RawImageData;->cropAndScale(Landroid/graphics/Rect;I)Lcom/journeyapps/barcodescanner/RawImageData;

    move-result-object v0

    .line 128
    new-instance v10, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/RawImageData;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/RawImageData;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/RawImageData;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/RawImageData;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/RawImageData;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v10
.end method

.method public getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 152
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/RawImageData;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/RawImageData;->getHeight()I

    move-result v2

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/SourceData;->isRotated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    .line 159
    :cond_1
    :goto_0
    new-instance v7, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/RawImageData;->getData()[B

    move-result-object v2

    iget v3, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/RawImageData;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/RawImageData;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 160
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x5a

    .line 161
    invoke-virtual {v7, p1, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 162
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 164
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 166
    array-length p2, p1

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    if-eqz p1, :cond_2

    .line 170
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    int-to-float p1, p1

    .line 171
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public isRotated()Z
    .locals 1

    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    .line 116
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setPreviewMirrored(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->previewMirrored:Z

    return-void
.end method

.method public translateResultPoint(Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->scalingFactor:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 104
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    iget v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->scalingFactor:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->previewMirrored:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:Lcom/journeyapps/barcodescanner/RawImageData;

    .line 106
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/RawImageData;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 108
    :cond_0
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-direct {v1, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v1
.end method
