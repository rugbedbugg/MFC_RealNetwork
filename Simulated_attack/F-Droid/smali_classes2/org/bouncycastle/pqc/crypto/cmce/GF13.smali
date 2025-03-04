.class Lorg/bouncycastle/pqc/crypto/cmce/GF13;
.super Lorg/bouncycastle/pqc/crypto/cmce/GF;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF;-><init>(I)V

    return-void
.end method

.method private gf_sq2mul(SS)S
    .locals 12

    .line 0
    const/4 v0, 0x6

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    int-to-long v2, p1

    int-to-long p1, p2

    const/16 v4, 0x12

    shl-long v4, p1, v4

    const-wide/16 v6, 0x40

    and-long/2addr v6, v2

    mul-long/2addr v4, v6

    const/16 v6, 0x15

    shl-long v6, v2, v6

    xor-long/2addr v2, v6

    const-wide/32 v6, 0x10000001

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x20000002

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    const/4 v8, 0x3

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x40000004

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    const-wide v6, 0x80000008L

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    const/16 v8, 0x9

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const-wide v6, 0x100000010L

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    const/16 v9, 0xc

    shl-long/2addr v6, v9

    xor-long/2addr v4, v6

    const-wide v6, 0x200000020L

    and-long/2addr v2, v6

    mul-long/2addr p1, v2

    const/16 v2, 0xf

    shl-long/2addr p1, v2

    xor-long/2addr p1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, v1, v2

    and-long/2addr v3, p1

    shr-long v5, v3, v8

    const/16 v7, 0xa

    shr-long v10, v3, v7

    xor-long/2addr v5, v10

    shr-long v10, v3, v9

    xor-long/2addr v5, v10

    const/16 v7, 0xd

    shr-long/2addr v3, v7

    xor-long/2addr v3, v5

    xor-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFMASK:I

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-short p1, p1

    return p1

    :array_0
    .array-data 8
        0x1ff0000000000000L    # 7.458340731200207E-155
        0xff80000000000L
        0x7fc00000000L
        0x3fe000000L
        0x1fe0000
        0x1e000
    .end array-data
.end method

.method private gf_sqmul(SS)S
    .locals 9

    .line 0
    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    int-to-long v2, p1

    int-to-long p1, p2

    const/4 v4, 0x6

    shl-long v4, p1, v4

    const-wide/16 v6, 0x40

    and-long/2addr v6, v2

    mul-long/2addr v4, v6

    const/4 v6, 0x7

    shl-long v6, v2, v6

    xor-long/2addr v2, v6

    const-wide/16 v6, 0x4001

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x8002

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    const/4 v8, 0x1

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x10004

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    const/4 v8, 0x2

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x20008

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x40010

    and-long/2addr v6, v2

    mul-long/2addr v6, p1

    const/4 v8, 0x4

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const-wide/32 v6, 0x80020

    and-long/2addr v2, v6

    mul-long/2addr p1, v2

    const/4 v2, 0x5

    shl-long/2addr p1, v2

    xor-long/2addr p1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, v1, v2

    and-long/2addr v3, p1

    const/16 v5, 0x9

    shr-long v5, v3, v5

    const/16 v7, 0xa

    shr-long v7, v3, v7

    xor-long/2addr v5, v7

    const/16 v7, 0xc

    shr-long v7, v3, v7

    xor-long/2addr v5, v7

    const/16 v7, 0xd

    shr-long/2addr v3, v7

    xor-long/2addr v3, v5

    xor-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFMASK:I

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-short p1, p1

    return p1

    :array_0
    .array-data 8
        0x1ff0000000L
        0xff80000
        0x7e000
    .end array-data
.end method


# virtual methods
.method protected gf_frac(SS)S
    .locals 1

    .line 0
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sqmul(SS)S

    move-result p1

    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2(S)S

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2(S)S

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sqmul(SS)S

    move-result p1

    return p1
.end method

.method protected gf_inv(S)S
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_frac(SS)S

    move-result p1

    return p1
.end method

.method protected gf_mul(SS)S
    .locals 9

    .line 0
    int-to-long v0, p1

    int-to-long p1, p2

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    mul-long/2addr v2, v0

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFBITS:I

    if-ge v5, v6, :cond_0

    shl-int v6, v4, v5

    int-to-long v6, v6

    and-long/2addr v6, p1

    mul-long/2addr v6, v0

    xor-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x1ff0000

    and-long/2addr p1, v2

    const/16 v0, 0x9

    shr-long v4, p1, v0

    const/16 v1, 0xa

    shr-long v6, p1, v1

    xor-long/2addr v4, v6

    const/16 v6, 0xc

    shr-long v7, p1, v6

    xor-long/2addr v4, v7

    const/16 v7, 0xd

    shr-long/2addr p1, v7

    xor-long/2addr p1, v4

    xor-long/2addr p1, v2

    const-wide/32 v2, 0xe000

    and-long/2addr v2, p1

    shr-long v4, v2, v0

    shr-long v0, v2, v1

    xor-long/2addr v0, v4

    shr-long v4, v2, v6

    xor-long/2addr v0, v4

    shr-long/2addr v2, v7

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFMASK:I

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method protected gf_sq2(S)S
    .locals 12

    .line 0
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    new-array v2, v0, [J

    fill-array-data v2, :array_1

    int-to-long v3, p1

    const/16 p1, 0x18

    shl-long v5, v3, p1

    or-long/2addr v3, v5

    const/4 p1, 0x3

    aget-wide v5, v1, p1

    and-long/2addr v3, v5

    const/16 v5, 0xc

    shl-long v6, v3, v5

    or-long/2addr v3, v6

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    and-long/2addr v3, v6

    const/4 v6, 0x6

    shl-long v6, v3, v6

    or-long/2addr v3, v6

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    and-long/2addr v3, v6

    shl-long v6, v3, p1

    or-long/2addr v3, v6

    const/4 p1, 0x0

    aget-wide v6, v1, p1

    and-long/2addr v3, v6

    :goto_0
    if-ge p1, v0, :cond_0

    aget-wide v6, v2, p1

    and-long/2addr v6, v3

    const/16 v1, 0x9

    shr-long v8, v6, v1

    const/16 v1, 0xa

    shr-long v10, v6, v1

    xor-long/2addr v8, v10

    shr-long v10, v6, v5

    xor-long/2addr v8, v10

    const/16 v1, 0xd

    shr-long/2addr v6, v1

    xor-long/2addr v6, v8

    xor-long/2addr v3, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFMASK:I

    int-to-long v0, p1

    and-long/2addr v0, v3

    long-to-int p1, v0

    int-to-short p1, p1

    return p1

    nop

    :array_0
    .array-data 8
        0x1111111111111111L
        0x303030303030303L    # 3.7209743448696E-294
        0xf000f000f000fL
        0xff000000ffL
    .end array-data

    :array_1
    .array-data 8
        0x1ff0000000000L
        0xff80000000L
        0x7fc00000
        0x3fe000
    .end array-data
.end method
