.class public Lkellinwood/zipio/ZipInput;
.super Ljava/lang/Object;
.source "ZipInput.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static log:Lkellinwood/logging/LoggerInterface;


# instance fields
.field centralEnd:Lkellinwood/zipio/CentralEnd;

.field fileLength:J

.field in:Ljava/io/RandomAccessFile;

.field public inputFilename:Ljava/lang/String;

.field scanIterations:I

.field zioEntries:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput v0, p0, Lkellinwood/zipio/ZipInput;->scanIterations:I

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lkellinwood/zipio/ZipInput;->zioEntries:Ljava/util/Map;

    iput-object p1, p0, Lkellinwood/zipio/ZipInput;->inputFilename:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lkellinwood/zipio/ZipInput;->inputFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 54
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lkellinwood/zipio/ZipInput;->fileLength:J

    return-void
.end method

.method private doRead()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 147
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const/16 v2, 0x100

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    long-to-int v2, v0

    .line 151
    :cond_0
    invoke-virtual {p0, v2}, Lkellinwood/zipio/ZipInput;->scanForEOCDR(I)J

    move-result-wide v0

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 152
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 153
    invoke-static {p0}, Lkellinwood/zipio/CentralEnd;->read(Lkellinwood/zipio/ZipInput;)Lkellinwood/zipio/CentralEnd;

    move-result-object v0

    iput-object v0, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    .line 155
    invoke-static {}, Lkellinwood/zipio/ZipInput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    invoke-interface {v0}, Lkellinwood/logging/LoggerInterface;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lkellinwood/zipio/ZipInput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "EOCD found in %d iterations"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, p0, Lkellinwood/zipio/ZipInput;->scanIterations:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lkellinwood/zipio/ZipInput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v2

    const-string v4, "Directory entries=%d, size=%d, offset=%d/0x%08x"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    iget-short v7, v7, Lkellinwood/zipio/CentralEnd;->totalCentralEntries:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    iget v7, v7, Lkellinwood/zipio/CentralEnd;->centralDirectorySize:I

    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    iget v5, v5, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v6, v7

    iget-object v5, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    iget v5, v5, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v6, v7

    .line 158
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lkellinwood/zipio/ZipInput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v2

    invoke-static {v2}, Lkellinwood/zipio/ZipListingHelper;->listHeader(Lkellinwood/logging/LoggerInterface;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    .line 164
    iget v3, v3, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_1
    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->centralEnd:Lkellinwood/zipio/CentralEnd;

    .line 166
    iget-short v2, v2, Lkellinwood/zipio/CentralEnd;->totalCentralEntries:S

    if-ge v1, v2, :cond_3

    .line 167
    invoke-static {p0}, Lkellinwood/zipio/ZioEntry;->read(Lkellinwood/zipio/ZipInput;)Lkellinwood/zipio/ZioEntry;

    move-result-object v2

    iget-object v3, p0, Lkellinwood/zipio/ZipInput;->zioEntries:Ljava/util/Map;

    .line 168
    invoke-virtual {v2}, Lkellinwood/zipio/ZioEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Lkellinwood/zipio/ZipInput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v3

    invoke-static {v3, v2}, Lkellinwood/zipio/ZipListingHelper;->listEntry(Lkellinwood/logging/LoggerInterface;Lkellinwood/zipio/ZioEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private static getLogger()Lkellinwood/logging/LoggerInterface;
    .locals 1

    sget-object v0, Lkellinwood/zipio/ZipInput;->log:Lkellinwood/logging/LoggerInterface;

    if-nez v0, :cond_0

    const-class v0, Lkellinwood/zipio/ZipInput;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkellinwood/logging/LoggerManager;->getLogger(Ljava/lang/String;)Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    sput-object v0, Lkellinwood/zipio/ZipInput;->log:Lkellinwood/logging/LoggerInterface;

    :cond_0
    sget-object v0, Lkellinwood/zipio/ZipInput;->log:Lkellinwood/logging/LoggerInterface;

    return-object v0
.end method

.method public static read(Ljava/lang/String;)Lkellinwood/zipio/ZipInput;
    .locals 1

    .line 71
    new-instance v0, Lkellinwood/zipio/ZipInput;

    invoke-direct {v0, p0}, Lkellinwood/zipio/ZipInput;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-direct {v0}, Lkellinwood/zipio/ZipInput;->doRead()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/zipio/ZipInput;->zioEntries:Ljava/util/Map;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2

    iget-object v0, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 186
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public readBytes(I)[B
    .locals 3

    .line 224
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 226
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readInt()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 200
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public readShort()S
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 208
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3

    .line 215
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 217
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public scanForEOCDR(I)J
    .locals 7

    int-to-long v0, p1

    iget-wide v2, p0, Lkellinwood/zipio/ZipInput;->fileLength:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const/high16 v4, 0x10000

    if-gt p1, v4, :cond_2

    .line 126
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 128
    new-array v1, v0, [B

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Lkellinwood/zipio/ZipInput;->fileLength:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 130
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 132
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v0, v0, -0x16

    :goto_0
    if-ltz v0, :cond_1

    iget v2, p0, Lkellinwood/zipio/ZipInput;->scanIterations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkellinwood/zipio/ZipInput;->scanIterations:I

    .line 136
    aget-byte v2, v1, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-wide v1, p0, Lkellinwood/zipio/ZipInput;->fileLength:J

    sub-long/2addr v1, v5

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 141
    invoke-virtual {p0, p1}, Lkellinwood/zipio/ZipInput;->scanForEOCDR(I)J

    move-result-wide v0

    return-wide v0

    .line 124
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of central directory not found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkellinwood/zipio/ZipInput;->inputFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(J)V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 190
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
