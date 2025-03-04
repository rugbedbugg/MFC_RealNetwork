.class public abstract Lkellinwood/zipio/ZipListingHelper;
.super Ljava/lang/Object;
.source "ZipListingHelper.java"


# static fields
.field static dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yy HH:mm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lkellinwood/zipio/ZipListingHelper;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public static listEntry(Lkellinwood/logging/LoggerInterface;Lkellinwood/zipio/ZioEntry;)V
    .locals 6

    .line 40
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getCompressedSize()I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getSize()I

    move-result v2

    div-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 43
    :goto_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 45
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getCompression()S

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Stored"

    goto :goto_1

    :cond_1
    const-string v1, "Defl:N"

    :goto_1
    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 46
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getCompressedSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    sget-object v0, Lkellinwood/zipio/ZipListingHelper;->dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    .line 48
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    .line 49
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getCrc32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const/4 v0, 0x6

    .line 50
    invoke-virtual {p1}, Lkellinwood/zipio/ZioEntry;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%8d  %6s %8d %4d%% %s  %08x  %s"

    .line 43
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static listHeader(Lkellinwood/logging/LoggerInterface;)V
    .locals 1

    const-string v0, " Length   Method    Size  Ratio   Date   Time   CRC-32    Name"

    .line 34
    invoke-interface {p0, v0}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    const-string v0, "--------  ------  ------- -----   ----   ----   ------    ----"

    .line 35
    invoke-interface {p0, v0}, Lkellinwood/logging/LoggerInterface;->debug(Ljava/lang/String;)V

    return-void
.end method
