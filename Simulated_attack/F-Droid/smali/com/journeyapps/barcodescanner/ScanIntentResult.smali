.class public final Lcom/journeyapps/barcodescanner/ScanIntentResult;
.super Ljava/lang/Object;
.source "ScanIntentResult.java"


# instance fields
.field private final barcodeImagePath:Ljava/lang/String;

.field private final contents:Ljava/lang/String;

.field private final errorCorrectionLevel:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final orientation:Ljava/lang/Integer;

.field private final originalIntent:Landroid/content/Intent;

.field private final rawBytes:[B


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->contents:Ljava/lang/String;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->formatName:Ljava/lang/String;

    iput-object p3, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->rawBytes:[B

    iput-object p4, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->orientation:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->errorCorrectionLevel:Ljava/lang/String;

    iput-object p6, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->barcodeImagePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->originalIntent:Landroid/content/Intent;

    return-void
.end method

.method public static parseActivityResult(ILandroid/content/Intent;)Lcom/journeyapps/barcodescanner/ScanIntentResult;
    .locals 8

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const-string p0, "SCAN_RESULT"

    .line 138
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "SCAN_RESULT_FORMAT"

    .line 139
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "SCAN_RESULT_BYTES"

    .line 140
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    const-string p0, "SCAN_RESULT_ORIENTATION"

    const/high16 v0, -0x80000000

    .line 141
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    move-object v4, p0

    goto :goto_1

    .line 142
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :goto_1
    const-string p0, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 143
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "SCAN_RESULT_IMAGE_PATH"

    .line 144
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    new-instance p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-object p0

    .line 153
    :cond_1
    new-instance p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Landroid/content/Intent;)V

    return-object p0
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->rawBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_0
    array-length v0, v0

    .line 118
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->formatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Contents: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->contents:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Raw bytes: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\nOrientation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->orientation:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "EC level: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->errorCorrectionLevel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Barcode image: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->barcodeImagePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Original intent: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->originalIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
