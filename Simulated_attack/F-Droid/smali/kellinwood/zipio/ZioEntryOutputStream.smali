.class public Lkellinwood/zipio/ZioEntryOutputStream;
.super Ljava/io/OutputStream;
.source "ZioEntryOutputStream.java"


# instance fields
.field crc:Ljava/util/zip/CRC32;

.field crcValue:I

.field deflater:Ljava/util/zip/Deflater;

.field downstream:Ljava/io/OutputStream;

.field size:I

.field wrapped:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/io/OutputStream;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    .line 27
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    iput v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crcValue:I

    iput-object p2, p0, Lkellinwood/zipio/ZioEntryOutputStream;->wrapped:Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    .line 36
    new-instance p1, Ljava/util/zip/Deflater;

    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 37
    new-instance p1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {p1, p2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 45
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 46
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crcValue:I

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->deflater:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getCRC()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crcValue:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    return v0
.end method

.method public getWrappedStream()Ljava/io/OutputStream;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->wrapped:Ljava/io/OutputStream;

    return-object v0
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 73
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    iget p1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 61
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    iget v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    .line 63
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 68
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    iget p1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lkellinwood/zipio/ZioEntryOutputStream;->size:I

    return-void
.end method
