.class Lorg/bouncycastle/pqc/crypto/cmce/BENES12;
.super Lorg/bouncycastle/pqc/crypto/cmce/BENES;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;-><init>(III)V

    return-void
.end method

.method private apply_benes([B[BI)V
    .locals 11

    .line 0
    const/16 v0, 0x40

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x8

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x100

    if-nez p3, :cond_1

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x28

    goto :goto_1

    :cond_1
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x28

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    mul-int/2addr v5, v4

    add-int/2addr p3, v5

    const/16 v4, -0x100

    :goto_1
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    move v5, v3

    :goto_2
    const/4 v6, 0x5

    if-gt v5, v6, :cond_3

    move v6, v3

    :goto_3
    if-ge v6, v0, :cond_2

    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, p3

    invoke-static {p2, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    invoke-static {v2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    move v5, v3

    :goto_4
    const/16 v7, 0x20

    if-gt v5, v6, :cond_5

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_4

    mul-int/lit8 v9, v8, 0x8

    add-int/2addr v9, p3

    invoke-static {p2, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v9

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    invoke-static {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x4

    :goto_6
    if-ltz v5, :cond_7

    move v8, v3

    :goto_7
    if-ge v8, v7, :cond_6

    mul-int/lit8 v9, v8, 0x8

    add-int/2addr v9, p3

    invoke-static {p2, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v9

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_6
    invoke-static {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p3, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_7
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    :goto_8
    if-ltz v6, :cond_9

    move v5, v3

    :goto_9
    if-ge v5, v0, :cond_8

    mul-int/lit8 v7, v5, 0x4

    add-int/2addr v7, p3

    invoke-static {p2, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_8
    invoke-static {v2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p3, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_9
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    :goto_a
    if-ge v3, v0, :cond_a

    mul-int/lit8 p2, v3, 0x8

    aget-wide v4, v1, v3

    invoke-static {p1, p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    return-void
.end method

.method static layerBenes([J[JI)V
    .locals 11

    .line 0
    const/4 v0, 0x1

    shl-int p2, v0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1

    move v2, v0

    :goto_1
    add-int v3, v0, p2

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    add-int v5, v2, p2

    aget-wide v6, p0, v5

    xor-long/2addr v6, v3

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, p1, v1

    and-long/2addr v6, v9

    xor-long/2addr v3, v6

    aput-wide v3, p0, v2

    aget-wide v3, p0, v5

    xor-long/2addr v3, v6

    aput-wide v3, p0, v5

    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public support_gen([S[B)V
    .locals 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    div-int/lit8 v2, v2, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    shl-int v5, v1, v5

    div-int/lit8 v5, v5, 0x8

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v3

    aput-byte v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    shl-int v5, v1, v4

    if-ge v3, v5, :cond_3

    int-to-short v5, v3

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v4

    move v5, v2

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    if-ge v5, v6, :cond_2

    aget-object v6, v0, v5

    div-int/lit8 v7, v3, 0x8

    aget-byte v8, v6, v7

    shr-int v9, v4, v5

    and-int/2addr v9, v1

    rem-int/lit8 v10, v3, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    if-ge v3, v4, :cond_4

    aget-object v4, v0, v3

    invoke-direct {p0, v4, p2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->apply_benes([B[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move p2, v2

    :goto_5
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_N:I

    if-ge p2, v3, :cond_6

    aput-short v2, p1, p2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    sub-int/2addr v3, v1

    :goto_6
    if-ltz v3, :cond_5

    aget-short v4, p1, p2

    shl-int/2addr v4, v1

    int-to-short v4, v4

    aput-short v4, p1, p2

    aget-object v5, v0, v3

    div-int/lit8 v6, p2, 0x8

    aget-byte v5, v5, v6

    rem-int/lit8 v6, p2, 0x8

    shr-int/2addr v5, v6

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p1, p2

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
