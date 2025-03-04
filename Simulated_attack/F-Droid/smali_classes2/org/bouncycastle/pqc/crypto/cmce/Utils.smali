.class Lorg/bouncycastle/pqc/crypto/cmce/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitrev(SI)S
    .locals 2

    .line 0
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    and-int/lit16 v0, p0, 0xf0f

    shl-int/lit8 v0, v0, 0x4

    const v1, 0xf0f0

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    int-to-short p0, p0

    and-int/lit16 v0, p0, 0x3333

    shl-int/lit8 v0, v0, 0x2

    const v1, 0xcccc

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    int-to-short p0, p0

    and-int/lit16 v0, p0, 0x5555

    shl-int/lit8 v0, v0, 0x1

    const v1, 0xaaaa

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    int-to-short p0, p0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    shr-int/lit8 p0, p0, 0x4

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_0
    shr-int/lit8 p0, p0, 0x3

    goto :goto_0
.end method

.method static load4([BI)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    return p0
.end method

.method static load8([BI)J
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method static load_gf([BII)S
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result p0

    and-int/2addr p0, p2

    int-to-short p0, p0

    return p0
.end method

.method static store8([BIJ)V
    .locals 5

    .line 0
    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x8

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x10

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x3

    const/16 v3, 0x18

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x4

    const/16 v3, 0x20

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x28

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x6

    const/16 v3, 0x30

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 p1, p1, 0x7

    const/16 v2, 0x38

    shr-long/2addr p2, v2

    and-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method static store_gf([BIS)V
    .locals 1

    .line 0
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method
