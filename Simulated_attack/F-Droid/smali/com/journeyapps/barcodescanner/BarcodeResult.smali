.class public Lcom/journeyapps/barcodescanner/BarcodeResult;
.super Ljava/lang/Object;
.source "BarcodeResult.java"


# instance fields
.field protected mResult:Lcom/google/zxing/Result;

.field private final mScaleFactor:I

.field protected sourceData:Lcom/journeyapps/barcodescanner/SourceData;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mScaleFactor:I

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    return-void
.end method

.method public static transformResultPoints(Ljava/util/List;Lcom/journeyapps/barcodescanner/SourceData;)Ljava/util/List;
    .locals 2

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 172
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/SourceData;->translateResultPoint(Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 146
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 128
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 156
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 165
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
