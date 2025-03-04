.class public Lkellinwood/zipio/CentralEnd;
.super Ljava/lang/Object;
.source "CentralEnd.java"


# static fields
.field private static log:Lkellinwood/logging/LoggerInterface;


# instance fields
.field public centralDirectorySize:I

.field public centralStartDisk:S

.field public centralStartOffset:I

.field public fileComment:Ljava/lang/String;

.field public numCentralEntries:S

.field public numberThisDisk:S

.field public signature:I

.field public totalCentralEntries:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6054b50

    iput v0, p0, Lkellinwood/zipio/CentralEnd;->signature:I

    const/4 v0, 0x0

    iput-short v0, p0, Lkellinwood/zipio/CentralEnd;->numberThisDisk:S

    iput-short v0, p0, Lkellinwood/zipio/CentralEnd;->centralStartDisk:S

    return-void
.end method

.method private doRead(Lkellinwood/zipio/ZipInput;)V
    .locals 6

    .line 59
    invoke-static {}, Lkellinwood/zipio/CentralEnd;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    invoke-interface {v0}, Lkellinwood/logging/LoggerInterface;->isDebugEnabled()Z

    move-result v0

    .line 61
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readShort()S

    move-result v1

    iput-short v1, p0, Lkellinwood/zipio/CentralEnd;->numberThisDisk:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object v4, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    new-array v5, v3, [Ljava/lang/Object;

    .line 62
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "This disk number: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readShort()S

    move-result v1

    iput-short v1, p0, Lkellinwood/zipio/CentralEnd;->centralStartDisk:S

    if-eqz v0, :cond_1

    sget-object v4, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    new-array v5, v3, [Ljava/lang/Object;

    .line 66
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Central dir start disk number: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readShort()S

    move-result v1

    iput-short v1, p0, Lkellinwood/zipio/CentralEnd;->numCentralEntries:S

    if-eqz v0, :cond_2

    sget-object v4, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    new-array v5, v3, [Ljava/lang/Object;

    .line 71
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Central entries on this disk: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 74
    :cond_2
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readShort()S

    move-result v1

    iput-short v1, p0, Lkellinwood/zipio/CentralEnd;->totalCentralEntries:S

    if-eqz v0, :cond_3

    sget-object v4, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    new-array v5, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Total number of central entries: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 79
    :cond_3
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readInt()I

    move-result v1

    iput v1, p0, Lkellinwood/zipio/CentralEnd;->centralDirectorySize:I

    if-eqz v0, :cond_4

    sget-object v4, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    new-array v5, v3, [Ljava/lang/Object;

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Central directory size: 0x%08x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 82
    :cond_4
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readInt()I

    move-result v1

    iput v1, p0, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    if-eqz v0, :cond_5

    sget-object v4, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Central directory offset: 0x%08x"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    .line 85
    :cond_5
    invoke-virtual {p1}, Lkellinwood/zipio/ZipInput;->readShort()S

    move-result v1

    .line 86
    invoke-virtual {p1, v1}, Lkellinwood/zipio/ZipInput;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkellinwood/zipio/CentralEnd;->fileComment:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object p1, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".ZIP file comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkellinwood/zipio/CentralEnd;->fileComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static getLogger()Lkellinwood/logging/LoggerInterface;
    .locals 1

    sget-object v0, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    if-nez v0, :cond_0

    const-class v0, Lkellinwood/zipio/CentralEnd;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkellinwood/logging/LoggerManager;->getLogger(Ljava/lang/String;)Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    sput-object v0, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    :cond_0
    sget-object v0, Lkellinwood/zipio/CentralEnd;->log:Lkellinwood/logging/LoggerInterface;

    return-object v0
.end method

.method public static read(Lkellinwood/zipio/ZipInput;)Lkellinwood/zipio/CentralEnd;
    .locals 4

    .line 39
    invoke-virtual {p0}, Lkellinwood/zipio/ZipInput;->readInt()I

    move-result v0

    const v1, 0x6054b50

    if-eq v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lkellinwood/zipio/ZipInput;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lkellinwood/zipio/ZipInput;->seek(J)V

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lkellinwood/zipio/CentralEnd;

    invoke-direct {v0}, Lkellinwood/zipio/CentralEnd;-><init>()V

    .line 48
    invoke-direct {v0, p0}, Lkellinwood/zipio/CentralEnd;->doRead(Lkellinwood/zipio/ZipInput;)V

    return-object v0
.end method


# virtual methods
.method public write(Lkellinwood/zipio/ZipOutput;)V
    .locals 1

    .line 92
    invoke-static {}, Lkellinwood/zipio/CentralEnd;->getLogger()Lkellinwood/logging/LoggerInterface;

    move-result-object v0

    invoke-interface {v0}, Lkellinwood/logging/LoggerInterface;->isDebugEnabled()Z

    iget v0, p0, Lkellinwood/zipio/CentralEnd;->signature:I

    .line 94
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeInt(I)V

    iget-short v0, p0, Lkellinwood/zipio/CentralEnd;->numberThisDisk:S

    .line 95
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeShort(S)V

    iget-short v0, p0, Lkellinwood/zipio/CentralEnd;->centralStartDisk:S

    .line 96
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeShort(S)V

    iget-short v0, p0, Lkellinwood/zipio/CentralEnd;->numCentralEntries:S

    .line 97
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeShort(S)V

    iget-short v0, p0, Lkellinwood/zipio/CentralEnd;->totalCentralEntries:S

    .line 98
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeShort(S)V

    iget v0, p0, Lkellinwood/zipio/CentralEnd;->centralDirectorySize:I

    .line 99
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeInt(I)V

    iget v0, p0, Lkellinwood/zipio/CentralEnd;->centralStartOffset:I

    .line 100
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeInt(I)V

    iget-object v0, p0, Lkellinwood/zipio/CentralEnd;->fileComment:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeShort(S)V

    iget-object v0, p0, Lkellinwood/zipio/CentralEnd;->fileComment:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, v0}, Lkellinwood/zipio/ZipOutput;->writeString(Ljava/lang/String;)V

    return-void
.end method
