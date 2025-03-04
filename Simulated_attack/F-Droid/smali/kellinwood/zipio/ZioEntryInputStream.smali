.class public Lkellinwood/zipio/ZioEntryInputStream;
.super Ljava/io/InputStream;
.source "ZioEntryInputStream.java"


# instance fields
.field debug:Z

.field log:Lkellinwood/logging/LoggerInterface;

.field monitor:Ljava/io/OutputStream;

.field offset:I

.field raf:Ljava/io/RandomAccessFile;

.field returnDummyByte:Z

.field size:I


# direct methods
.method public constructor <init>(Lkellinwood/zipio/ZioEntry;)V
    .locals 6

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkellinwood/logging/LoggerManager;->getLogger(Ljava/lang/String;)Lkellinwood/logging/LoggerInterface;

    move-result-object v1

    iput-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    .line 44
    invoke-interface {v1}, Lkellinwood/logging/LoggerInterface;->isDebugEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    iput v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    .line 46
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getCompressedSize()I

    move-result v1

    iput v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->size:I

    .line 47
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getZipInput()Lkellinwood/zipio/ZipInput;

    move-result-object v1

    iget-object v1, v1, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 48
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getDataPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-boolean v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    .line 51
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getDataPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "Seeking to %d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 53
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getDataPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->readLocalHeader()V

    :goto_0
    return-void
.end method

.method private readBytes([BII)I
    .locals 6

    iget v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->size:I

    iget v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean p3, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    if-eqz p3, :cond_0

    iput-boolean v2, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    .line 113
    aput-byte v2, p1, p2

    return v1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 117
    :cond_1
    invoke-virtual {p0}, Lkellinwood/zipio/ZioEntryInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lkellinwood/zipio/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 118
    invoke-virtual {v3, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v3, p0, Lkellinwood/zipio/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {v3, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_2
    iget p1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    add-int/2addr p1, v0

    iput p1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    :cond_3
    iget-boolean p1, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    .line 124
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, p2

    const-string p2, "Read %d bytes for read(b,%d,%d)"

    invoke-static {v3, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_4
    return v0
.end method


# virtual methods
.method public available()I
    .locals 7

    iget v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->size:I

    iget v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    .line 82
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Available = %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->size:I

    iget v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 95
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    iget-boolean v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    const-string v2, "Read 1 byte"

    .line 98
    invoke-interface {v1, v2}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->offset:I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    const-string v2, "Read 0 bytes"

    .line 100
    invoke-interface {v1, v2}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lkellinwood/zipio/ZioEntryInputStream;->readBytes([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lkellinwood/zipio/ZioEntryInputStream;->readBytes([BII)I

    move-result p1

    return p1
.end method

.method public setMonitorStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkellinwood/zipio/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    return-void
.end method

.method public setReturnDummyByte(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lkellinwood/zipio/ZioEntryInputStream;->returnDummyByte:Z

    return-void
.end method

.method public skip(J)J
    .locals 5

    .line 136
    invoke-virtual {p0}, Lkellinwood/zipio/ZioEntryInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 137
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-boolean v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkellinwood/zipio/ZioEntryInputStream;->log:Lkellinwood/logging/LoggerInterface;

    .line 138
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Skipped %d bytes"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_0
    return-wide p1
.end method
