.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"


# instance fields
.field private addressee:Ljava/lang/String;

.field private checksum:I

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private lastSegment:Z

.field private optionalData:[I

.field private segmentCount:I

.field private segmentIndex:I

.field private sender:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    iput-wide v1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    iput v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return-void
.end method


# virtual methods
.method public isLastSegment()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    return v0
.end method

.method public setAddressee(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->addressee:Ljava/lang/String;

    return-void
.end method

.method public setChecksum(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    return-void
.end method

.method public setLastSegment(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    return-void
.end method

.method public setOptionalData([I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I

    return-void
.end method

.method public setSegmentCount(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    return-void
.end method

.method public setSegmentIndex(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->sender:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    return-void
.end method
