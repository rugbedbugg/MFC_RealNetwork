.class public Lkellinwood/zipio/ZipOutput;
.super Ljava/lang/Object;
.source "ZipOutput.java"


# static fields
.field static log:Lkellinwood/logging/LoggerInterface;


# instance fields
.field entriesWritten:Ljava/util/List;

.field filePointer:I

.field namesWritten:Ljava/util/Set;

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkellinwood/zipio/ZipOutput;->entriesWritten:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lkellinwood/zipio/ZipOutput;->namesWritten:Ljava/util/Set;

    iput-object p1, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private static getLogger()Lkellinwood/logging/LoggerInterface;
    .locals 1

    sget-object v0, Lkellinwood/zipio/ZipOutput;->log:Lkellinwood/logging/LoggerInterface;

    if-nez v0, :cond_0

    const-class v0, Lkellinwood/zipio/ZipOutput;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkellinwood/logging/LoggerManager;->getLogger(Ljava/lang/String;)Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    sput-object v0, Lkellinwood/zipio/ZipOutput;->log:Lkellinwood/logging/LoggerInterface;

    :cond_0
    sget-object v0, Lkellinwood/zipio/ZipOutput;->log:Lkellinwood/logging/LoggerInterface;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 82
    new-instance v0, Lkellinwood/zipio/CentralEnd;

    invoke-direct {v0}, Lkellinwood/zipio/CentralEnd;-><init>()V

    .line 84
    invoke-virtual {p0}, Lkellinwood/zipio/ZipOutput;->getFilePointer()I

    move-result v1

    iput v1, v0, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    iget-object v1, p0, Lkellinwood/zipio/ZipOutput;->entriesWritten:Ljava/util/List;

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lkellinwood/zipio/CentralEnd;->totalCentralEntries:S

    iput-short v1, v0, Lkellinwood/zipio/CentralEnd;->numCentralEntries:S

    iget-object v1, p0, Lkellinwood/zipio/ZipOutput;->entriesWritten:Ljava/util/List;

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkellinwood/zipio/ZioEntry;

    .line 88
    invoke-virtual {v2, p0}, Lkellinwood/zipio/ZioEntry;->write(Lkellinwood/zipio/ZipOutput;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lkellinwood/zipio/ZipOutput;->getFilePointer()I

    move-result v1

    iget v2, v0, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkellinwood/zipio/CentralEnd;->centralDirectorySize:I

    const-string v1, ""

    iput-object v1, v0, Lkellinwood/zipio/CentralEnd;->fileComment:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, p0}, Lkellinwood/zipio/CentralEnd;->write(Lkellinwood/zipio/ZipOutput;)V

    iget-object v0, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public getFilePointer()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    return v0
.end method

.method public write(Lkellinwood/zipio/ZioEntry;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkellinwood/zipio/ZipOutput;->namesWritten:Ljava/util/Set;

    .line 71
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lkellinwood/zipio/ZipOutput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping duplicate file in output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkellinwood/logging/LoggerInterface;->warning(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1, p0}, Lkellinwood/zipio/ZioEntry;->writeLocalEntry(Lkellinwood/zipio/ZipOutput;)V

    iget-object v1, p0, Lkellinwood/zipio/ZipOutput;->entriesWritten:Ljava/util/List;

    .line 76
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lkellinwood/zipio/ZipOutput;->namesWritten:Ljava/util/Set;

    .line 77
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {}, Lkellinwood/zipio/ZipOutput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    invoke-interface {v0}, Lkellinwood/logging/LoggerInterface;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkellinwood/zipio/ZipOutput;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    invoke-static {v0, p1}, Lkellinwood/zipio/ZipListingHelper;->listEntry(Lkellinwood/logging/LoggerInterface;Lkellinwood/zipio/ZioEntry;)V

    :cond_1
    return-void
.end method

.method public writeBytes([B)V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    .line 135
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    .line 136
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    return-void
.end method

.method public writeBytes([BII)V
    .locals 1

    iget-object v0, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    .line 141
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    add-int/2addr p1, p3

    iput p1, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    return-void
.end method

.method public writeInt(I)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 109
    aput-byte v3, v1, v2

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    .line 112
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    return-void
.end method

.method public writeShort(S)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 119
    aput-byte v3, v1, v2

    shr-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    .line 122
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lkellinwood/zipio/ZipOutput;->out:Ljava/io/OutputStream;

    .line 129
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    .line 130
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lkellinwood/zipio/ZipOutput;->filePointer:I

    return-void
.end method
