.class Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
.super Ljava/lang/Object;


# instance fields
.field private COND_BYTES:I

.field private GFBITS:I

.field private GFMASK:I

.field private IRR_BYTES:I

.field private PK_NCOLS:I

.field private PK_NROWS:I

.field private PK_ROW_BYTES:I

.field private SYND_BYTES:I

.field private SYS_N:I

.field private SYS_T:I

.field private benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

.field private countErrorIndices:Z

.field private final defaultKeySize:I

.field private gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

.field private poly:[I

.field private usePadding:Z

.field private usePivots:Z


# direct methods
.method public constructor <init>(III[IZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    mul-int/lit8 p4, p3, 0x2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 p4, p1, -0x4

    const/4 p5, 0x1

    shl-int p4, p5, p4

    mul-int/lit8 p6, p1, 0x2

    sub-int/2addr p6, p5

    mul-int/2addr p4, p6

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    mul-int/2addr p3, p1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    shl-int p2, p5, p1

    sub-int/2addr p2, p5

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/cmce/GF12;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;-><init>(III)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/bouncycastle/pqc/crypto/cmce/GF13;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;-><init>(III)V

    goto :goto_0

    :goto_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    rem-int/lit8 p1, p1, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move p1, p5

    goto :goto_2

    :cond_1
    move p1, p2

    :goto_2
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int p1, p5, p1

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-le p1, p3, :cond_2

    goto :goto_3

    :cond_2
    move p5, p2

    :goto_3
    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    return-void
.end method

.method private GF_mul([S[S[S)V
    .locals 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v6, p2, v3

    aget-short v7, p3, v4

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v5

    add-int v6, v3, v4

    aget-short v7, v0, v6

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v1

    :goto_3
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-lt v4, p2, :cond_5

    move p2, v2

    :goto_4
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    array-length v3, p3

    if-eq p2, v3, :cond_4

    aget p3, p3, p2

    if-nez p3, :cond_3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/16 v5, 0xc

    if-ne v3, v5, :cond_3

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    sub-int p3, v4, p3

    aget-short v3, v0, p3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v6, v0, v4

    invoke-virtual {v5, v6, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v5

    xor-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, v0, p3

    goto :goto_5

    :cond_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    sub-int v3, v4, v3

    add-int/2addr v3, p3

    aget-short p3, v0, v3

    aget-short v5, v0, v4

    xor-int/2addr p3, v5

    int-to-short p3, p3

    aput-short p3, v0, v3

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    invoke-static {v0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, p2, :cond_6

    aget-short p2, v0, v2

    aput-short p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private bm([S[S)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [S

    const/4 v4, 0x1

    add-int/2addr v1, v4

    new-array v1, v1, [S

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_0

    aput-short v5, v1, v6

    aput-short v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    aput-short v4, v3, v5

    aput-short v4, v1, v4

    move v8, v4

    move v6, v5

    move v7, v6

    :goto_1
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_6

    move v9, v5

    move v10, v9

    :goto_2
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->min(SI)I

    move-result v11

    if-gt v9, v11, :cond_1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v3, v9

    sub-int v13, v6, v9

    aget-short v13, p2, v13

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v10, -0x1

    int-to-short v9, v9

    shr-int/lit8 v9, v9, 0xf

    int-to-short v9, v9

    and-int/2addr v9, v4

    int-to-short v9, v9

    sub-int/2addr v9, v4

    int-to-short v9, v9

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v6, v11

    int-to-short v11, v11

    shr-int/lit8 v11, v11, 0xf

    int-to-short v11, v11

    and-int/2addr v11, v4

    int-to-short v11, v11

    sub-int/2addr v11, v4

    int-to-short v11, v11

    and-int/2addr v11, v9

    int-to-short v11, v11

    move v12, v5

    :goto_3
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v12, v13, :cond_2

    aget-short v13, v3, v12

    aput-short v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v12, v8, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_frac(SS)S

    move-result v12

    move v13, v5

    :goto_4
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v13, v14, :cond_3

    aget-short v14, v3, v13

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v5, v1, v13

    invoke-virtual {v15, v12, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v5

    and-int/2addr v5, v9

    xor-int/2addr v5, v14

    int-to-short v5, v5

    aput-short v5, v3, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    not-int v5, v11

    and-int v9, v7, v5

    add-int/lit8 v6, v6, 0x1

    sub-int v7, v6, v7

    and-int/2addr v7, v11

    or-int/2addr v7, v9

    int-to-short v7, v7

    const/4 v9, 0x0

    :goto_5
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v9, v12, :cond_4

    aget-short v12, v1, v9

    and-int/2addr v12, v5

    aget-short v13, v2, v9

    and-int/2addr v13, v11

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    and-int/2addr v5, v8

    and-int v8, v10, v11

    or-int/2addr v5, v8

    int-to-short v8, v5

    :goto_6
    if-lt v12, v4, :cond_5

    add-int/lit8 v5, v12, -0x1

    aget-short v5, v1, v5

    aput-short v5, v1, v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    aput-short v5, v1, v5

    int-to-short v6, v6

    goto/16 :goto_1

    :cond_6
    :goto_7
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v5, v1, :cond_7

    sub-int/2addr v1, v5

    aget-short v1, v3, v1

    aput-short v1, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method static cbrecursion([BJJ[SIJJ[I)V
    .locals 33

    .line 0
    move/from16 v0, p6

    move-wide/from16 v1, p9

    move-object/from16 v12, p11

    const-wide/16 v3, 0x1

    cmp-long v5, p7, v3

    const-wide/16 v6, 0x7

    const/4 v8, 0x3

    if-nez v5, :cond_0

    shr-long v1, p1, v8

    long-to-int v1, v1

    aget-byte v2, p0, v1

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v0

    and-long v3, p1, v6

    long-to-int v3, v3

    shl-int/2addr v0, v3

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void

    :cond_0
    if-eqz p5, :cond_1

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v5, v13, v1

    if-gez v5, :cond_2

    long-to-int v5, v13

    aget-short v11, p5, v5

    xor-int/lit8 v11, v11, 0x1

    shl-int/lit8 v11, v11, 0x10

    xor-long v9, v13, v3

    long-to-int v9, v9

    aget-short v9, p5, v9

    or-int/2addr v9, v11

    aput v9, v12, v5

    add-long/2addr v13, v3

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x0

    :goto_1
    cmp-long v5, v9, v1

    if-gez v5, :cond_2

    long-to-int v5, v9

    int-to-long v13, v0

    add-long v6, v13, v9

    long-to-int v6, v6

    invoke-static {v12, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x10

    xor-long v19, v9, v3

    add-long v13, v13, v19

    long-to-int v7, v13

    invoke-static {v12, v7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v7

    or-int/2addr v6, v7

    aput v6, v12, v5

    add-long/2addr v9, v3

    const-wide/16 v6, 0x7

    goto :goto_1

    :cond_2
    long-to-int v5, v1

    const/4 v6, 0x0

    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v9, 0x0

    :goto_2
    cmp-long v7, v9, v1

    const v11, 0xffff

    if-gez v7, :cond_4

    long-to-int v7, v9

    aget v13, v12, v7

    and-int/2addr v11, v13

    int-to-long v13, v11

    cmp-long v13, v9, v13

    if-gez v13, :cond_3

    goto :goto_3

    :cond_3
    move v7, v11

    :goto_3
    add-long v13, v1, v9

    long-to-int v13, v13

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v7, v11

    aput v7, v12, v13

    add-long/2addr v9, v3

    goto :goto_2

    :cond_4
    const-wide/16 v9, 0x0

    :goto_4
    cmp-long v7, v9, v1

    if-gez v7, :cond_5

    long-to-int v7, v9

    aget v13, v12, v7

    shl-int/lit8 v13, v13, 0x10

    int-to-long v13, v13

    or-long/2addr v13, v9

    long-to-int v13, v13

    aput v13, v12, v7

    add-long/2addr v9, v3

    goto :goto_4

    :cond_5
    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v9, 0x0

    :goto_5
    cmp-long v7, v9, v1

    if-gez v7, :cond_6

    long-to-int v7, v9

    aget v13, v12, v7

    shl-int/lit8 v13, v13, 0x10

    add-long v3, v1, v9

    long-to-int v3, v3

    aget v3, v12, v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v13, v3

    aput v13, v12, v7

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    goto :goto_5

    :cond_6
    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v3, 0xa

    cmp-long v3, p7, v3

    const/high16 v4, -0x10000

    if-gtz v3, :cond_d

    const-wide/16 v9, 0x0

    :goto_6
    cmp-long v3, v9, v1

    if-gez v3, :cond_7

    add-long v13, v1, v9

    long-to-int v3, v13

    long-to-int v7, v9

    aget v7, v12, v7

    and-int/2addr v7, v11

    shl-int/lit8 v7, v7, 0xa

    aget v13, v12, v3

    and-int/lit16 v13, v13, 0x3ff

    or-int/2addr v7, v13

    aput v7, v12, v3

    const-wide/16 v19, 0x1

    add-long v9, v9, v19

    goto :goto_6

    :cond_7
    const-wide/16 v19, 0x1

    move-wide/from16 v9, v19

    :goto_7
    sub-long v13, p7, v19

    cmp-long v3, v9, v13

    if-gez v3, :cond_c

    const-wide/16 v13, 0x0

    :goto_8
    cmp-long v3, v13, v1

    if-gez v3, :cond_8

    long-to-int v3, v13

    move-wide/from16 v21, v9

    add-long v8, v1, v13

    long-to-int v8, v8

    aget v8, v12, v8

    and-int/lit16 v8, v8, -0x400

    shl-int/lit8 v8, v8, 0x6

    int-to-long v8, v8

    or-long/2addr v8, v13

    long-to-int v8, v8

    aput v8, v12, v3

    const-wide/16 v8, 0x1

    add-long/2addr v13, v8

    move-wide/from16 v9, v21

    const/4 v8, 0x3

    goto :goto_8

    :cond_8
    move-wide/from16 v21, v9

    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_9
    cmp-long v3, v8, v1

    if-gez v3, :cond_9

    long-to-int v3, v8

    aget v10, v12, v3

    shl-int/lit8 v10, v10, 0x14

    add-long v13, v1, v8

    long-to-int v13, v13

    aget v13, v12, v13

    or-int/2addr v10, v13

    aput v10, v12, v3

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    goto :goto_9

    :cond_9
    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_a
    cmp-long v3, v8, v1

    if-gez v3, :cond_b

    long-to-int v3, v8

    aget v3, v12, v3

    const v10, 0xfffff

    and-int/2addr v10, v3

    const v13, 0xffc00

    and-int/2addr v3, v13

    add-long v13, v1, v8

    long-to-int v13, v13

    aget v14, v12, v13

    and-int/lit16 v14, v14, 0x3ff

    or-int/2addr v3, v14

    if-ge v10, v3, :cond_a

    goto :goto_b

    :cond_a
    move v10, v3

    :goto_b
    aput v10, v12, v13

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    goto :goto_a

    :cond_b
    const-wide/16 v13, 0x1

    add-long v9, v21, v13

    move-wide/from16 v19, v13

    const/4 v8, 0x3

    goto :goto_7

    :cond_c
    const-wide/16 v13, 0x1

    const-wide/16 v8, 0x0

    :goto_c
    cmp-long v3, v8, v1

    if-gez v3, :cond_16

    add-long v6, v1, v8

    long-to-int v6, v6

    aget v7, v12, v6

    and-int/lit16 v7, v7, 0x3ff

    aput v7, v12, v6

    add-long/2addr v8, v13

    const/4 v6, 0x0

    goto :goto_c

    :cond_d
    const-wide/16 v6, 0x0

    :goto_d
    cmp-long v8, v6, v1

    if-gez v8, :cond_e

    add-long v8, v1, v6

    long-to-int v8, v8

    long-to-int v9, v6

    aget v9, v12, v9

    shl-int/lit8 v9, v9, 0x10

    aget v13, v12, v8

    and-int/2addr v13, v11

    or-int/2addr v9, v13

    aput v9, v12, v8

    const-wide/16 v19, 0x1

    add-long v6, v6, v19

    goto :goto_d

    :cond_e
    const-wide/16 v19, 0x1

    move-wide/from16 v6, v19

    :goto_e
    sub-long v8, p7, v19

    cmp-long v8, v6, v8

    if-gez v8, :cond_15

    const-wide/16 v8, 0x0

    :goto_f
    cmp-long v13, v8, v1

    if-gez v13, :cond_f

    long-to-int v13, v8

    add-long v10, v1, v8

    long-to-int v10, v10

    aget v10, v12, v10

    and-int/2addr v10, v4

    int-to-long v10, v10

    or-long/2addr v10, v8

    long-to-int v10, v10

    aput v10, v12, v13

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const v11, 0xffff

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    invoke-static {v12, v3, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_10
    cmp-long v10, v8, v1

    if-gez v10, :cond_10

    long-to-int v10, v8

    aget v11, v12, v10

    shl-int/lit8 v11, v11, 0x10

    add-long v14, v1, v8

    long-to-int v14, v14

    aget v14, v12, v14

    const v13, 0xffff

    and-int v15, v14, v13

    or-int/2addr v11, v15

    aput v11, v12, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_10

    :cond_10
    const-wide/16 v8, 0x2

    sub-long v10, p7, v8

    cmp-long v8, v6, v10

    if-gez v8, :cond_12

    const-wide/16 v8, 0x0

    :goto_11
    cmp-long v10, v8, v1

    if-gez v10, :cond_11

    add-long v10, v1, v8

    long-to-int v10, v10

    long-to-int v11, v8

    aget v11, v12, v11

    and-int/2addr v11, v4

    aget v13, v12, v10

    shr-int/lit8 v13, v13, 0x10

    or-int/2addr v11, v13

    aput v11, v12, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_11

    :cond_11
    const-wide/16 v8, 0x2

    mul-long v10, v1, v8

    long-to-int v8, v10

    invoke-static {v12, v5, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_12
    cmp-long v10, v8, v1

    if-gez v10, :cond_12

    add-long v10, v1, v8

    long-to-int v10, v10

    aget v11, v12, v10

    shl-int/lit8 v11, v11, 0x10

    long-to-int v13, v8

    aget v13, v12, v13

    const v14, 0xffff

    and-int/2addr v13, v14

    or-int/2addr v11, v13

    aput v11, v12, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    invoke-static {v12, v3, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_13
    cmp-long v10, v8, v1

    if-gez v10, :cond_14

    add-long v10, v1, v8

    long-to-int v10, v10

    aget v11, v12, v10

    and-int v13, v11, v4

    long-to-int v15, v8

    aget v15, v12, v15

    const v14, 0xffff

    and-int/2addr v15, v14

    or-int/2addr v13, v15

    if-ge v13, v11, :cond_13

    aput v13, v12, v10

    :cond_13
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_13

    :cond_14
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    move-wide/from16 v19, v10

    const v11, 0xffff

    goto/16 :goto_e

    :cond_15
    const-wide/16 v10, 0x1

    const-wide/16 v6, 0x0

    :goto_14
    cmp-long v8, v6, v1

    if-gez v8, :cond_16

    add-long v8, v1, v6

    long-to-int v8, v8

    aget v9, v12, v8

    const v13, 0xffff

    and-int/2addr v9, v13

    aput v9, v12, v8

    add-long/2addr v6, v10

    goto :goto_14

    :cond_16
    const-wide/16 v6, 0x0

    if-eqz p5, :cond_18

    :goto_15
    cmp-long v0, v6, v1

    if-gez v0, :cond_17

    long-to-int v0, v6

    aget-short v8, p5, v0

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v8, v6

    long-to-int v8, v8

    aput v8, v12, v0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_15

    :cond_17
    const/4 v0, 0x0

    goto :goto_17

    :cond_18
    :goto_16
    cmp-long v8, v6, v1

    if-gez v8, :cond_17

    long-to-int v8, v6

    int-to-long v9, v0

    add-long/2addr v9, v6

    long-to-int v9, v9

    invoke-static {v12, v9}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    int-to-long v9, v9

    add-long/2addr v9, v6

    long-to-int v9, v9

    aput v9, v12, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_16

    :goto_17
    invoke-static {v12, v0, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    move-wide/from16 v8, p1

    const-wide/16 v6, 0x2

    const-wide/16 v10, 0x0

    :goto_18
    div-long v15, v1, v6

    cmp-long v0, v10, v15

    if-gez v0, :cond_19

    mul-long v14, v10, v6

    add-long v6, v1, v14

    long-to-int v0, v6

    aget v16, v12, v0

    and-int/lit8 v3, v16, 0x1

    move/from16 v24, v5

    int-to-long v4, v3

    add-long/2addr v4, v14

    long-to-int v4, v4

    xor-int/lit8 v5, v4, 0x1

    move-wide/from16 v25, v14

    const/16 v16, 0x3

    shr-long v13, v8, v16

    move-wide v15, v6

    long-to-int v6, v13

    aget-byte v13, p0, v6

    const-wide/16 v17, 0x7

    and-long v1, v8, v17

    long-to-int v1, v1

    shl-int v1, v3, v1

    xor-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p0, v6

    add-long v8, v8, p3

    move-wide/from16 v13, v25

    long-to-int v1, v13

    aget v1, v12, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    aput v1, v12, v0

    const-wide/16 v0, 0x1

    add-long v2, v15, v0

    long-to-int v2, v2

    add-long v14, v13, v0

    long-to-int v3, v14

    aget v3, v12, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    aput v3, v12, v2

    add-long/2addr v10, v0

    move-wide/from16 v1, p9

    move/from16 v5, v24

    const/high16 v4, -0x10000

    const-wide/16 v6, 0x2

    goto :goto_18

    :cond_19
    move/from16 v24, v5

    move-wide v0, v6

    mul-long v2, p9, v0

    long-to-int v4, v2

    invoke-static {v12, v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    mul-long v10, p7, v0

    const-wide/16 v13, 0x3

    sub-long v13, v10, v13

    mul-long v13, v13, p3

    mul-long/2addr v13, v15

    add-long/2addr v8, v13

    const-wide/16 v25, 0x0

    :goto_19
    cmp-long v4, v25, v15

    if-gez v4, :cond_1a

    mul-long v13, v25, v0

    add-long v0, p9, v13

    long-to-int v4, v0

    aget v4, v12, v4

    and-int/lit8 v6, v4, 0x1

    move-wide/from16 v27, v8

    int-to-long v7, v6

    add-long/2addr v7, v13

    long-to-int v7, v7

    xor-int/lit8 v8, v7, 0x1

    move-wide/from16 v29, v2

    const/4 v9, 0x3

    shr-long v2, v27, v9

    long-to-int v2, v2

    aget-byte v3, p0, v2

    move-wide/from16 v31, v10

    const-wide/16 v17, 0x7

    and-long v9, v27, v17

    long-to-int v9, v9

    shl-int/2addr v6, v9

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-long v2, v27, p3

    long-to-int v6, v13

    shl-int/lit8 v7, v7, 0x10

    const v9, 0xffff

    and-int/2addr v4, v9

    or-int/2addr v4, v7

    aput v4, v12, v6

    const-wide/16 v6, 0x1

    add-long/2addr v13, v6

    long-to-int v4, v13

    shl-int/lit8 v8, v8, 0x10

    add-long/2addr v0, v6

    long-to-int v0, v0

    aget v0, v12, v0

    and-int/2addr v0, v9

    or-int/2addr v0, v8

    aput v0, v12, v4

    add-long v25, v25, v6

    move-wide v8, v2

    move-wide/from16 v2, v29

    move-wide/from16 v10, v31

    const-wide/16 v0, 0x2

    goto :goto_19

    :cond_1a
    move-wide/from16 v29, v2

    move-wide/from16 v27, v8

    move-wide/from16 v31, v10

    const/4 v0, 0x0

    invoke-static {v12, v0, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v0, 0x2

    sub-long v10, v31, v0

    mul-long v10, v10, p3

    mul-long/2addr v10, v15

    sub-long v17, v27, v10

    mul-int/lit8 v5, v5, 0x4

    new-array v2, v5, [S

    const-wide/16 v3, 0x0

    :goto_1a
    cmp-long v5, v3, v29

    if-gez v5, :cond_1b

    mul-long v5, v3, v0

    long-to-int v0, v5

    long-to-int v1, v3

    aget v1, v12, v1

    int-to-short v7, v1

    aput-short v7, v2, v0

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    long-to-int v0, v5

    const/high16 v5, -0x10000

    and-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    aput-short v1, v2, v0

    add-long/2addr v3, v7

    const-wide/16 v0, 0x2

    goto :goto_1a

    :cond_1b
    const-wide/16 v0, 0x0

    :goto_1b
    cmp-long v3, v0, v15

    if-gez v3, :cond_1c

    long-to-int v3, v0

    const-wide/16 v4, 0x2

    mul-long v6, v0, v4

    long-to-int v4, v6

    aget v4, v12, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-long v3, v0, v15

    long-to-int v3, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-int v4, v6

    aget v4, v12, v4

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-long/2addr v0, v8

    goto :goto_1b

    :cond_1c
    const-wide/16 v8, 0x1

    const-wide/16 v22, 0x0

    :goto_1c
    cmp-long v0, v22, v15

    const-wide/16 v3, 0x4

    if-gez v0, :cond_1d

    div-long v0, p9, v3

    add-long v0, p9, v0

    add-long v0, v0, v22

    long-to-int v0, v0

    const-wide/16 v5, 0x2

    mul-long v13, v22, v5

    add-long v3, v13, v8

    long-to-int v1, v3

    aget-short v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    long-to-int v3, v13

    aget-short v3, v2, v3

    or-int/2addr v1, v3

    aput v1, v12, v0

    add-long v22, v22, v8

    goto :goto_1c

    :cond_1d
    const-wide/16 v5, 0x2

    mul-long v13, p3, v5

    const/4 v5, 0x0

    div-long v0, p9, v3

    add-long v10, p9, v0

    long-to-int v0, v10

    mul-int/lit8 v6, v0, 0x2

    sub-long v19, p7, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide v3, v13

    move-wide/from16 v7, v19

    move-wide/from16 v21, v10

    move-wide v9, v15

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    add-long v1, v17, p3

    const-wide/16 v3, 0x2

    mul-long v10, v21, v3

    add-long/2addr v10, v15

    long-to-int v6, v10

    move-wide v3, v13

    move-wide v9, v15

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    return-void
.end method

.method private static controlbitsfrompermutation([B[SJJ)V
    .locals 19

    .line 0
    move-object/from16 v12, p0

    move-wide/from16 v13, p4

    const-wide/16 v15, 0x2

    mul-long v0, v13, v15

    long-to-int v0, v0

    new-array v11, v0, [I

    long-to-int v9, v13

    new-array v10, v9, [S

    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    :goto_1
    int-to-long v1, v0

    mul-long v3, p2, v15

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    mul-long/2addr v3, v13

    div-long/2addr v3, v15

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    aput-byte v17, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    move v15, v9

    move-object/from16 v18, v10

    move-wide/from16 v9, p4

    move-object/from16 v16, v11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    move/from16 v0, v17

    :goto_2
    int-to-long v1, v0

    cmp-long v1, v1, v13

    if-gez v1, :cond_1

    int-to-short v1, v0

    move-object/from16 v2, v18

    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v2, v18

    move/from16 v0, v17

    move v1, v0

    :goto_3
    int-to-long v3, v0

    cmp-long v3, v3, p2

    const/4 v4, 0x4

    if-gez v3, :cond_2

    invoke-static {v2, v12, v1, v0, v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v5, v1

    shr-long v3, v13, v4

    add-long/2addr v5, v3

    long-to-int v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const-wide/16 v5, 0x2

    sub-long v7, p2, v5

    long-to-int v0, v7

    :goto_4
    if-ltz v0, :cond_3

    invoke-static {v2, v12, v1, v0, v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v7, v1

    shr-long v9, v13, v4

    add-long/2addr v7, v9

    long-to-int v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v17

    :goto_5
    int-to-long v3, v0

    cmp-long v1, v3, v13

    if-gez v1, :cond_4

    aget-short v1, p1, v0

    aget-short v3, v2, v0

    xor-int/2addr v1, v3

    or-int v1, v17, v1

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_5

    :cond_4
    if-nez v17, :cond_5

    return-void

    :cond_5
    move-object v10, v2

    move v9, v15

    move-object/from16 v11, v16

    move-wide v15, v5

    goto/16 :goto_0
.end method

.method private static ctz(J)I
    .locals 7

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_0

    shr-long v3, p0, v0

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    long-to-int v3, v3

    or-int/2addr v2, v3

    xor-int/lit8 v4, v2, 0x1

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private decrypt([B[B[B)I
    .locals 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [S

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v3, v2, [S

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [S

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [S

    const/4 v6, 0x1

    add-int/2addr v0, v6

    new-array v0, v0, [S

    new-array v7, v2, [S

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v9, v10, :cond_0

    aget-byte v10, p3, v9

    aput-byte v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p3, p3, 0x8

    if-ge v10, p3, :cond_1

    aput-byte v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move p3, v8

    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge p3, v9, :cond_2

    mul-int/lit8 v9, p3, 0x2

    add-int/lit8 v9, v9, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {p2, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v9

    aput-short v9, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    aput-short v6, v1, v9

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    invoke-virtual {p3, v3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->support_gen([S[B)V

    invoke-direct {p0, v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->bm([S[S)V

    invoke-direct {p0, v7, v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    move p2, v8

    :goto_3
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p3, p3, 0x8

    if-ge p2, p3, :cond_3

    aput-byte v8, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    move p2, v8

    move p3, p2

    :goto_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v2, v7, p2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v0

    and-int/2addr v0, v6

    int-to-short v0, v0

    div-int/lit8 v2, p2, 0x8

    aget-byte v9, p1, v2

    rem-int/lit8 v10, p2, 0x8

    shl-int v10, v0, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v2

    add-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    invoke-direct {p0, v5, v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    xor-int/2addr p1, p3

    :goto_5
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 p2, p2, 0x2

    if-ge v8, p2, :cond_5

    aget-short p2, v4, v8

    aget-short p3, v5, v8

    xor-int/2addr p2, p3

    or-int/2addr p1, p2

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0xf

    and-int/2addr p1, v6

    xor-int/2addr p1, v6

    return p1
.end method

.method private encrypt([B[B[BLjava/security/SecureRandom;)V
    .locals 0

    .line 0
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_error_vector([BLjava/security/SecureRandom;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->syndrome([B[B[B)V

    return-void
.end method

.method private eval([SS)S
    .locals 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-short v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v3, p1, v0

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_add(SS)S

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private generate_error_vector([BLjava/security/SecureRandom;)V
    .locals 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    new-array v2, v0, [S

    new-array v0, v0, [B

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v5, v4

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_1

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    move v5, v3

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v7, v6, 0x2

    if-ge v3, v7, :cond_3

    if-ge v5, v6, :cond_3

    aget-short v6, v1, v3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    aput-short v6, v2, v5

    move v5, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-ge v5, v6, :cond_5

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v5, v4

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_5

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    move v5, v3

    move v6, v4

    :goto_4
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v7, :cond_8

    if-eq v6, v3, :cond_8

    move v7, v4

    :goto_5
    if-ge v7, v5, :cond_7

    aget-short v8, v2, v5

    aget-short v9, v2, v7

    if-ne v8, v9, :cond_6

    move v6, v3

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    if-nez v6, :cond_0

    move p2, v4

    :goto_7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge p2, v1, :cond_9

    aget-short v1, v2, p2

    and-int/lit8 v1, v1, 0x7

    shl-int v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    move p2, v4

    :goto_8
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge p2, v1, :cond_b

    aput-byte v4, p1, p2

    move v1, v4

    :goto_9
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v1, v3, :cond_a

    aget-short v3, v2, v1

    shr-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask32(SS)B

    move-result v3

    int-to-short v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aget-byte v5, p1, p2

    aget-byte v6, v0, v1

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    goto :goto_8

    :cond_b
    return-void
.end method

.method private generate_irr_poly([S)I
    .locals 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v0, 0x1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aput-short v3, v2, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v1

    aput-short v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v3

    aget-short v5, p1, v2

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v2, v4, :cond_2

    aget-object v4, v0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v0, v5

    invoke-direct {p0, v4, v5, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GF_mul([S[S[S)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v4, :cond_9

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_4
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v7, v0, v2

    aget-short v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v6

    move v7, v2

    :goto_5
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v8, v3

    if-ge v7, v8, :cond_3

    aget-object v8, v0, v7

    aget-short v9, v8, v2

    aget-short v10, v8, v5

    and-int/2addr v10, v6

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    aget-object v5, v0, v2

    aget-short v5, v5, v2

    if-nez v5, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v5

    move v6, v2

    :goto_6
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v3

    if-ge v6, v7, :cond_6

    aget-object v7, v0, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v9, v7, v2

    invoke-virtual {v8, v9, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v8

    aput-short v8, v7, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    move v5, v1

    :goto_7
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_8

    if-eq v5, v2, :cond_7

    aget-object v6, v0, v2

    aget-short v6, v6, v5

    move v7, v2

    :goto_8
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v8, v3

    if-ge v7, v8, :cond_7

    aget-object v8, v0, v7

    aget-short v9, v8, v5

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v11, v8, v2

    invoke-virtual {v10, v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    move v2, v4

    goto :goto_3

    :cond_9
    move v2, v1

    :goto_9
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_a

    aget-object v3, v0, v3

    aget-short v3, v3, v2

    aput-short v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    return v1
.end method

.method static get_q_short([II)S
    .locals 1

    .line 0
    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    aget p0, p0, v0

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_0
    aget p0, p0, v0

    const/high16 p1, -0x10000

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x10

    goto :goto_0
.end method

.method private static layer([S[BIII)V
    .locals 11

    .line 0
    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p4, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, p3, :cond_0

    add-int v5, v2, v4

    aget-short v6, p0, v5

    add-int v7, v5, p3

    aget-short v8, p0, v7

    xor-int/2addr v8, v6

    shr-int/lit8 v9, v3, 0x3

    add-int/2addr v9, p2

    aget-byte v9, p1, v9

    and-int/lit8 v10, v3, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v0

    neg-int v9, v9

    and-int/2addr v8, v9

    xor-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, p0, v5

    aget-short v5, p0, v7

    xor-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p0, v7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static min(SI)I
    .locals 0

    .line 0
    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private mov_columns([[B[S[J)I
    .locals 26

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x40

    new-array v2, v1, [J

    const/16 v3, 0x20

    new-array v4, v3, [J

    const/16 v5, 0x9

    new-array v6, v5, [B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v7, v3

    div-int/lit8 v8, v7, 0x8

    rem-int/lit8 v9, v7, 0x8

    iget-boolean v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-eqz v10, :cond_2

    move v10, v11

    :goto_0
    if-ge v10, v3, :cond_3

    move v13, v11

    :goto_1
    if-ge v13, v5, :cond_0

    add-int v14, v7, v10

    aget-object v14, p1, v14

    add-int v15, v8, v13

    aget-byte v14, v14, v15

    aput-byte v14, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v11

    :goto_2
    if-ge v13, v12, :cond_1

    aget-byte v14, v6, v13

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v9

    add-int/lit8 v15, v13, 0x1

    aget-byte v16, v6, v15

    rsub-int/lit8 v17, v9, 0x8

    shl-int v16, v16, v17

    or-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    move v13, v15

    goto :goto_2

    :cond_1
    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v11

    :goto_3
    if-ge v10, v3, :cond_3

    add-int v13, v7, v10

    aget-object v13, p1, v13

    invoke-static {v13, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v13, 0x0

    aput-wide v13, p3, v11

    move v10, v11

    :goto_4
    const-wide/16 v15, 0x1

    if-ge v10, v3, :cond_8

    aget-wide v17, v2, v10

    add-int/lit8 v19, v10, 0x1

    move/from16 v12, v19

    :goto_5
    if-ge v12, v3, :cond_4

    aget-wide v20, v2, v12

    or-long v17, v17, v20

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    cmp-long v12, v17, v13

    if-nez v12, :cond_5

    const/4 v1, -0x1

    return v1

    :cond_5
    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->ctz(J)I

    move-result v12

    int-to-long v13, v12

    aput-wide v13, v4, v10

    aget-wide v20, p3, v11

    long-to-int v13, v13

    shl-long v13, v15, v13

    or-long v13, v20, v13

    aput-wide v13, p3, v11

    move/from16 v13, v19

    :goto_6
    if-ge v13, v3, :cond_6

    aget-wide v20, v2, v10

    shr-long v22, v20, v12

    and-long v22, v22, v15

    sub-long v22, v22, v15

    aget-wide v24, v2, v13

    and-long v22, v24, v22

    xor-long v20, v20, v22

    aput-wide v20, v2, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_6
    move/from16 v13, v19

    :goto_7
    if-ge v13, v3, :cond_7

    aget-wide v20, v2, v13

    shr-long v22, v20, v12

    move/from16 v24, v12

    and-long v11, v22, v15

    neg-long v11, v11

    aget-wide v22, v2, v10

    and-long v11, v22, v11

    xor-long v11, v20, v11

    aput-wide v11, v2, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v24

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, v19

    const/16 v12, 0x8

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_a

    add-int/lit8 v10, v2, 0x1

    move v11, v10

    :goto_9
    if-ge v11, v1, :cond_9

    add-int v12, v7, v2

    aget-short v13, p2, v12

    add-int v17, v7, v11

    aget-short v18, p2, v17

    xor-int v13, v13, v18

    int-to-long v14, v13

    int-to-short v13, v11

    move-object/from16 v21, v6

    aget-wide v5, v4, v2

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-static {v13, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask64(SS)J

    move-result-wide v5

    and-long/2addr v5, v14

    aget-short v13, p2, v12

    int-to-long v13, v13

    xor-long/2addr v13, v5

    long-to-int v13, v13

    int-to-short v13, v13

    aput-short v13, p2, v12

    aget-short v12, p2, v17

    int-to-long v12, v12

    xor-long/2addr v5, v12

    long-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, p2, v17

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v21

    const/16 v5, 0x9

    const-wide/16 v15, 0x1

    goto :goto_9

    :cond_9
    move v2, v10

    goto :goto_8

    :cond_a
    move-object/from16 v21, v6

    const/4 v1, 0x0

    :goto_a
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v2, :cond_11

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x9

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v2, :cond_b

    aget-object v5, p1, v1

    add-int v6, v8, v14

    aget-byte v5, v5, v6

    aput-byte v5, v21, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_b
    const/16 v5, 0x8

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v5, :cond_c

    aget-byte v6, v21, v14

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v9

    add-int/lit8 v7, v14, 0x1

    aget-byte v10, v21, v7

    rsub-int/lit8 v11, v9, 0x8

    shl-int/2addr v10, v11

    or-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v21, v14

    move v14, v7

    goto :goto_c

    :cond_c
    move-object/from16 v6, v21

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    goto :goto_d

    :cond_d
    move-object/from16 v6, v21

    const/16 v2, 0x9

    const/16 v5, 0x8

    aget-object v7, p1, v1

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    :goto_d
    const/4 v7, 0x0

    :goto_e
    if-ge v7, v3, :cond_e

    shr-long v12, v10, v7

    aget-wide v2, v4, v7

    long-to-int v5, v2

    shr-long v16, v10, v5

    xor-long v12, v12, v16

    const-wide/16 v16, 0x1

    and-long v12, v12, v16

    long-to-int v2, v2

    shl-long v2, v12, v2

    xor-long/2addr v2, v10

    shl-long v10, v12, v7

    xor-long/2addr v10, v2

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v5, 0x8

    goto :goto_e

    :cond_e
    const-wide/16 v16, 0x1

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    invoke-static {v6, v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    aget-object v2, p1, v1

    add-int/lit8 v3, v8, 0x8

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v9

    shl-int/2addr v5, v9

    const/4 v7, 0x7

    aget-byte v10, v6, v7

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v9, 0x8

    ushr-int/2addr v10, v11

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    const/4 v3, 0x0

    aget-byte v5, v6, v3

    and-int/lit16 v3, v5, 0xff

    shl-int/2addr v3, v9

    aget-byte v5, v2, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    ushr-int/2addr v5, v11

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    :goto_f
    const/4 v2, 0x1

    if-lt v7, v2, :cond_10

    aget-object v2, p1, v1

    add-int v3, v8, v7

    aget-byte v5, v6, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v9

    add-int/lit8 v10, v7, -0x1

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v11

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    :cond_f
    aget-object v2, p1, v1

    invoke-static {v2, v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v6

    const/16 v3, 0x20

    goto/16 :goto_a

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private pk_gen([B[B[I[S[J)I
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    const/4 v4, 0x1

    aput-short v4, v3, v2

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_0

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x28

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    move-object/from16 v8, p2

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v5, v4, v5

    new-array v6, v5, [J

    move v7, v2

    :goto_1
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v8, v4, v8

    const/16 v9, 0x1f

    if-ge v7, v8, :cond_1

    aget v8, p3, v7

    int-to-long v10, v8

    aput-wide v10, v6, v7

    shl-long v8, v10, v9

    aput-wide v8, v6, v7

    int-to-long v10, v7

    or-long/2addr v8, v10

    aput-wide v8, v6, v7

    const-wide v10, 0x7fffffffffffffffL

    and-long/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    move v5, v4

    :goto_2
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v7, v4, v7

    const/4 v8, -0x1

    if-ge v5, v7, :cond_3

    add-int/lit8 v7, v5, -0x1

    aget-wide v10, v6, v7

    shr-long/2addr v10, v9

    aget-wide v12, v6, v5

    shr-long/2addr v12, v9

    cmp-long v7, v10, v12

    if-nez v7, :cond_2

    return v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v5, v5, [S

    move v7, v2

    :goto_3
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v4, v9

    if-ge v7, v9, :cond_4

    aget-wide v9, v6, v7

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v11, v11

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-short v9, v9

    aput-short v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_4
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v6, v7, :cond_5

    aget-short v7, v1, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-static {v7, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v7

    aput-short v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    new-array v6, v7, [S

    invoke-direct {v0, v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    move v3, v2

    :goto_5
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v3, v7, :cond_6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v9, v6, v3

    invoke-virtual {v7, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v7

    aput-short v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    const/16 v9, 0x8

    div-int/2addr v7, v9

    filled-new-array {v3, v7}, [I

    move-result-object v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    move v7, v2

    :goto_6
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v7, v10, :cond_8

    move v10, v2

    :goto_7
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/2addr v11, v9

    if-ge v10, v11, :cond_7

    aget-object v11, v3, v7

    aput-byte v2, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    move v7, v2

    :goto_8
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v7, v10, :cond_c

    move v10, v2

    :goto_9
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v10, v11, :cond_a

    move v11, v2

    :goto_a
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    if-ge v11, v12, :cond_9

    add-int/lit8 v13, v10, 0x7

    aget-short v13, v6, v13

    ushr-int/2addr v13, v11

    and-int/2addr v13, v4

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x6

    aget-short v14, v6, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x5

    aget-short v14, v6, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x4

    aget-short v14, v6, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x3

    aget-short v14, v6, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x2

    aget-short v14, v6, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x1

    aget-short v14, v6, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v4

    int-to-byte v13, v13

    aget-short v14, v6, v10

    ushr-int/2addr v14, v11

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    aget-object v12, v3, v12

    div-int/lit8 v14, v10, 0x8

    aput-byte v13, v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v10, v10, 0x8

    goto :goto_9

    :cond_a
    move v10, v2

    :goto_b
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v10, v11, :cond_b

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v6, v10

    aget-short v13, v5, v10

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v11

    aput-short v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    move v5, v2

    :goto_c
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v7, v6, 0x7

    div-int/2addr v7, v9

    if-ge v5, v7, :cond_16

    move v6, v2

    :goto_d
    if-ge v6, v9, :cond_d

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v6

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-lt v7, v10, :cond_e

    :cond_d
    move-object/from16 v10, p5

    goto/16 :goto_12

    :cond_e
    iget-boolean v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v11, :cond_f

    add-int/lit8 v10, v10, -0x20

    if-ne v7, v10, :cond_f

    move-object/from16 v10, p5

    invoke-direct {v0, v3, v1, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->mov_columns([[B[S[J)I

    move-result v11

    if-eqz v11, :cond_10

    return v8

    :cond_f
    move-object/from16 v10, p5

    :cond_10
    add-int/lit8 v11, v7, 0x1

    :goto_e
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v11, v12, :cond_12

    aget-object v12, v3, v7

    aget-byte v12, v12, v5

    aget-object v13, v3, v11

    aget-byte v13, v13, v5

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    shr-int/2addr v12, v6

    int-to-byte v12, v12

    and-int/2addr v12, v4

    int-to-byte v12, v12

    neg-int v12, v12

    int-to-byte v12, v12

    move v13, v2

    :goto_f
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/2addr v14, v9

    if-ge v13, v14, :cond_11

    aget-object v14, v3, v7

    aget-byte v15, v14, v13

    aget-object v16, v3, v11

    aget-byte v16, v16, v13

    and-int v16, v16, v12

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_12
    aget-object v11, v3, v7

    aget-byte v11, v11, v5

    shr-int/2addr v11, v6

    and-int/2addr v11, v4

    if-nez v11, :cond_13

    return v8

    :cond_13
    move v11, v2

    :goto_10
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v11, v12, :cond_15

    if-eq v11, v7, :cond_14

    aget-object v12, v3, v11

    aget-byte v12, v12, v5

    shr-int/2addr v12, v6

    int-to-byte v12, v12

    and-int/2addr v12, v4

    int-to-byte v12, v12

    neg-int v12, v12

    int-to-byte v12, v12

    move v13, v2

    :goto_11
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/2addr v14, v9

    if-ge v13, v14, :cond_14

    aget-object v14, v3, v11

    aget-byte v15, v14, v13

    aget-object v16, v3, v7

    aget-byte v16, v16, v13

    and-int v16, v16, v12

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    :cond_16
    if-eqz p1, :cond_1a

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v1, :cond_18

    rem-int/2addr v6, v9

    move v1, v2

    move v5, v1

    :goto_13
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v7, :cond_1a

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v9

    :goto_14
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/2addr v8, v9

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_17

    add-int/lit8 v8, v5, 0x1

    aget-object v10, v3, v1

    aget-byte v11, v10, v7

    and-int/lit16 v11, v11, 0xff

    ushr-int/2addr v11, v6

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    rsub-int/lit8 v12, v6, 0x8

    shl-int/2addr v10, v12

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p1, v5

    move v5, v8

    goto :goto_14

    :cond_17
    add-int/lit8 v8, v5, 0x1

    aget-object v10, v3, v1

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v6

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v8

    goto :goto_13

    :cond_18
    move v1, v2

    :goto_15
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v5, :cond_1a

    move v5, v2

    move v6, v5

    :goto_16
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int v10, v7, v8

    add-int/lit8 v10, v10, 0x7

    div-int/2addr v10, v9

    if-ge v5, v10, :cond_19

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x7

    div-int/2addr v7, v9

    mul-int/2addr v7, v1

    add-int/2addr v7, v6

    aget-object v10, v3, v1

    div-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v5

    aget-byte v8, v10, v8

    aput-byte v8, p1, v7

    add-int/2addr v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1a
    return v2
.end method

.method private root([S[S[S)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v1, :cond_0

    aget-short v1, p3, v0

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static same_mask32(SS)B
    .locals 0

    .line 0
    xor-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1f

    neg-int p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static same_mask64(SS)J
    .locals 2

    .line 0
    xor-int/2addr p0, p1

    int-to-long p0, p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const/16 v0, 0x3f

    ushr-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0
.end method

.method private static sort32([III)V
    .locals 13

    .line 0
    sub-int/2addr p2, p1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sub-int v1, p2, v0

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-lez v1, :cond_8

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    sub-int v4, p2, v1

    if-ge v3, v4, :cond_3

    and-int v4, v3, v1

    if-nez v4, :cond_2

    add-int v4, p1, v3

    add-int v5, v4, v1

    aget v6, p0, v5

    aget v7, p0, v4

    xor-int v8, v6, v7

    sub-int v9, v6, v7

    xor-int/2addr v6, v9

    and-int/2addr v6, v8

    xor-int/2addr v6, v9

    shr-int/lit8 v6, v6, 0x1f

    and-int/2addr v6, v8

    xor-int/2addr v7, v6

    aput v7, p0, v4

    aget v4, p0, v5

    xor-int/2addr v4, v6

    aput v4, p0, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_3
    if-le v3, v1, :cond_7

    :goto_4
    sub-int v4, p2, v3

    if-ge v2, v4, :cond_6

    and-int v4, v2, v1

    if-nez v4, :cond_5

    add-int v4, p1, v2

    add-int v5, v4, v1

    aget v6, p0, v5

    move v7, v3

    :goto_5
    if-le v7, v1, :cond_4

    add-int v8, v4, v7

    aget v9, p0, v8

    xor-int v10, v9, v6

    sub-int v11, v9, v6

    xor-int v12, v11, v9

    and-int/2addr v12, v10

    xor-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x1f

    and-int/2addr v10, v11

    xor-int/2addr v6, v10

    xor-int/2addr v9, v10

    aput v9, p0, v8

    ushr-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    aput v6, p0, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static sort64([JII)V
    .locals 18

    .line 0
    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int v2, v0, v1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-lez v2, :cond_8

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    sub-int v5, v0, v2

    const/16 v6, 0x3f

    if-ge v4, v5, :cond_3

    and-int v5, v4, v2

    if-nez v5, :cond_2

    add-int v5, p1, v4

    add-int v7, v5, v2

    aget-wide v8, p0, v7

    aget-wide v10, p0, v5

    sub-long v12, v8, v10

    ushr-long/2addr v12, v6

    neg-long v12, v12

    xor-long/2addr v8, v10

    and-long/2addr v8, v12

    xor-long/2addr v10, v8

    aput-wide v10, p0, v5

    aget-wide v5, p0, v7

    xor-long/2addr v5, v8

    aput-wide v5, p0, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-le v4, v2, :cond_7

    :goto_4
    sub-int v5, v0, v4

    if-ge v3, v5, :cond_6

    and-int v5, v3, v2

    if-nez v5, :cond_5

    add-int v5, p1, v3

    add-int v7, v5, v2

    aget-wide v8, p0, v7

    move v10, v4

    :goto_5
    if-le v10, v2, :cond_4

    add-int v11, v5, v10

    aget-wide v12, p0, v11

    sub-long v14, v12, v8

    ushr-long/2addr v14, v6

    neg-long v14, v14

    xor-long v16, v8, v12

    and-long v14, v14, v16

    xor-long/2addr v8, v14

    xor-long/2addr v12, v14

    aput-wide v12, p0, v11

    ushr-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    aput-wide v8, p0, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private synd([S[S[S[B)V
    .locals 8

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    aput-short v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v1, v2, :cond_2

    div-int/lit8 v2, v1, 0x8

    aget-byte v2, p4, v2

    rem-int/lit8 v3, v1, 0x8

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aget-short v3, p3, v1

    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v4, v3, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v3

    move v4, v0

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v6, p1, v4

    invoke-virtual {v5, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_add(SS)S

    move-result v5

    aput-short v5, p1, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v6, p3, v1

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private syndrome([B[B[B)V
    .locals 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v3, v4, :cond_0

    aput-byte v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v5, :cond_5

    move v5, v2

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    if-ge v5, v6, :cond_1

    aput-short v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    if-ge v5, v6, :cond_2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    sub-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int v6, v4, v5

    aget-byte v6, p2, v6

    int-to-short v6, v6

    aput-short v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v6

    :goto_4
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v7, v8

    if-lt v5, v7, :cond_3

    aget-short v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v1

    add-int/lit8 v8, v5, -0x1

    aget-short v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v1, 0x8

    ushr-int/2addr v8, v9

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v0, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_3
    div-int/lit8 v5, v3, 0x8

    aget-short v7, v0, v5

    rem-int/lit8 v8, v3, 0x8

    shl-int v9, v6, v8

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v0, v5

    move v7, v2

    move v9, v7

    :goto_5
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v10, v10, 0x8

    if-ge v7, v10, :cond_4

    aget-short v10, v0, v7

    aget-byte v11, p3, v7

    and-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    ushr-int/lit8 v7, v9, 0x4

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    ushr-int/lit8 v9, v7, 0x2

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    ushr-int/lit8 v9, v7, 0x1

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v7, p1, v5

    shl-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method check_c_padding([B)I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/lit8 v0, v0, -0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v0, v0, 0x8

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    ushr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method check_pk_padding([B)I
    .locals 4

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    mul-int v3, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, p1, v3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, 0xff

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    rem-int/lit8 v0, v0, 0x8

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    ushr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public decompress_private_key([B)[B
    .locals 18

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    new-array v7, v1, [B

    array-length v1, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v9, 0x1

    shl-int v2, v9, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x20

    new-array v10, v2, [B

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v4, 0x40

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/16 v4, 0x20

    invoke-interface {v3, v0, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v10, v8, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v2, v0

    const/16 v11, 0x28

    if-gt v2, v11, :cond_2

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v2, v2, [S

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    new-array v4, v3, [B

    sub-int v3, v1, v3

    move v5, v8

    :goto_0
    iget v12, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v12, :cond_0

    mul-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v3

    iget v13, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v10, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v12

    aput-short v12, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v6, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move v3, v8

    :goto_1
    iget v5, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v3, v5, :cond_1

    mul-int/lit8 v5, v3, 0x2

    aget-short v12, v2, v3

    invoke-static {v4, v5, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    invoke-static {v4, v8, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length v0, v0

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v3, v2, 0x28

    if-gt v0, v3, :cond_7

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v9, v0

    new-array v3, v3, [I

    shl-int v4, v9, v0

    new-array v13, v4, [S

    sub-int/2addr v1, v2

    shl-int v0, v9, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    move v0, v8

    :goto_2
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v9, v2

    if-ge v0, v4, :cond_3

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    invoke-static {v10, v2}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v0, :cond_4

    new-array v5, v9, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v5, v8

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v7

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    goto :goto_5

    :cond_4
    shl-int v0, v9, v2

    new-array v1, v0, [J

    move v2, v8

    :goto_3
    iget v4, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v9, v4

    if-ge v2, v4, :cond_5

    aget v4, v3, v2

    int-to-long v4, v4

    aput-wide v4, v1, v2

    const/16 v12, 0x1f

    shl-long/2addr v4, v12

    aput-wide v4, v1, v2

    int-to-long v14, v2

    or-long/2addr v4, v14

    aput-wide v4, v1, v2

    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v4, v14

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v1, v8, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    move v0, v8

    :goto_4
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v2

    if-ge v0, v2, :cond_6

    aget-wide v2, v1, v0

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v1, v0, [B

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v14, v2

    shl-int v2, v9, v2

    int-to-long v2, v2

    move-object v12, v1

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v2, v11

    invoke-static {v1, v8, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v0

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v1, 0x8

    sub-int/2addr v0, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v10, v8, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v7
.end method

.method public generate_public_key_from_private_key([B)[B
    .locals 11

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v0

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    new-array v5, v3, [S

    new-array v6, v2, [J

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    aput-wide v3, v6, v7

    shl-int v3, v2, v1

    new-array v4, v3, [I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    shl-int v8, v2, v1

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v8

    new-array v8, v3, [B

    add-int/lit8 v9, v3, -0x20

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v9, v10

    shl-int v1, v2, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v9, v1

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v10, 0x100

    invoke-direct {v1, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v10, 0x40

    invoke-interface {v1, v10}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/16 v10, 0x20

    invoke-interface {v1, p1, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v8, v7, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v1, v2, v1

    if-ge v7, v1, :cond_0

    mul-int/lit8 v1, v7, 0x4

    add-int/2addr v1, v9

    invoke-static {v8, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v1

    aput v1, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    return-object v0
.end method

.method public getCipherTextSize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public getCondBytes()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    return v0
.end method

.method public getDefaultSessionKeySize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    return v0
.end method

.method public getIrrBytes()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public getPublicKeySize()I
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public kem_dec([B[B[B)I
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x20

    new-array v5, v4, [B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    new-array v7, v6, [B

    iget-boolean v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_c_padding([B)I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    invoke-direct {v0, v7, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decrypt([B[B[B)I

    move-result v10

    int-to-byte v10, v10

    new-instance v11, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v12, 0x100

    invoke-direct {v11, v12}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v13, 0x2

    invoke-interface {v11, v13}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-interface {v11, v7, v9, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v11, v5, v9, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v6, v9

    move v11, v6

    :goto_1
    if-ge v6, v4, :cond_1

    aget-byte v13, v5, v6

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v14, v6

    aget-byte v14, v2, v14

    xor-int/2addr v13, v14

    or-int/2addr v11, v13

    int-to-byte v11, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    or-int v5, v10, v11

    int-to-short v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    shr-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v10, v4

    add-int/2addr v6, v10

    new-array v10, v6, [B

    and-int/lit8 v11, v5, 0x1

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    move v11, v9

    :goto_2
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v13, v13, 0x8

    if-ge v11, v13, :cond_2

    add-int/lit8 v13, v11, 0x1

    not-int v14, v5

    add-int/lit8 v15, v11, 0x28

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v15, v9

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    add-int/2addr v15, v9

    aget-byte v9, v3, v15

    and-int/2addr v9, v14

    aget-byte v11, v7, v11

    and-int/2addr v11, v5

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v10, v13

    move v11, v13

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_3

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v3

    aget-byte v7, v2, v3

    aput-byte v7, v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v2, v12}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v2, v10, v3, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_5

    int-to-byte v2, v8

    const/4 v9, 0x0

    :goto_4
    array-length v3, v1

    if-ge v9, v3, :cond_4

    aget-byte v3, v1, v9

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    return v8

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_pk_padding([B)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, p1, p3, v1, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->encrypt([B[B[BLjava/security/SecureRandom;)V

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p4, 0x100

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 p4, 0x2

    invoke-interface {p3, p4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-interface {p3, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    const/16 v4, 0x20

    invoke-interface {p3, p1, p4, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-interface {p3, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p4, p1

    invoke-interface {p3, p1, v3, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p4, p2

    invoke-interface {p3, p2, v3, p4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz p3, :cond_3

    int-to-byte p3, v2

    xor-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    move p4, v3

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v0, v4

    if-ge p4, v0, :cond_1

    aget-byte v0, p1, p4

    and-int/2addr v0, p3

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v4, :cond_2

    aget-byte p1, p2, v3

    and-int/2addr p1, p3

    int-to-byte p1, p1

    aput-byte p1, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 24

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const/4 v8, 0x1

    new-array v9, v8, [B

    const/16 v10, 0x20

    new-array v0, v10, [B

    const/16 v1, 0x40

    const/4 v11, 0x0

    aput-byte v1, v9, v11

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v8, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    add-int/lit8 v13, v12, 0x20

    new-array v14, v13, [B

    new-array v15, v8, [J

    const-wide/16 v1, 0x0

    aput-wide v1, v15, v11

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v5, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move-object v1, v0

    :goto_0
    invoke-interface {v5, v9, v11, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v2, v0

    invoke-interface {v5, v0, v11, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v5, v14, v11, v13}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    add-int/lit8 v0, v12, 0x20

    invoke-static {v14, v12, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v1, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v11, v10}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v1, v0, [S

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    move v2, v11

    :goto_1
    iget v3, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v14, v3, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x20

    goto :goto_1

    :cond_0
    invoke-direct {v6, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_1

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    goto :goto_4

    :cond_1
    move v2, v11

    :goto_2
    iget v3, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/16 v17, 0x28

    if-ge v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x2

    add-int v3, v17, v3

    aget-short v11, v1, v2

    invoke-static {v7, v3, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v8, v1

    new-array v3, v2, [I

    shl-int v1, v8, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int v11, v0, v1

    const/4 v0, 0x0

    :goto_3
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v8, v1

    if-ge v0, v2, :cond_3

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v11

    invoke-static {v14, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    shl-int v0, v8, v1

    new-array v2, v0, [S

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    move-object/from16 v18, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    move-result v0

    if-ne v0, v10, :cond_4

    :goto_4
    move-object/from16 v1, v16

    move-object/from16 v0, v18

    move-object/from16 v5, v20

    const/16 v10, 0x20

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v1, v0, [B

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v3, v2

    shl-int v2, v8, v2

    int-to-long v8, v2

    move-object/from16 v18, v1

    move-wide/from16 v20, v3

    move-wide/from16 v22, v8

    invoke-static/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v2, v2, 0x28

    const/4 v3, 0x0

    invoke-static {v1, v3, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v0, 0x8

    sub-int/2addr v11, v1

    array-length v1, v7

    div-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x8

    invoke-static {v14, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-nez v0, :cond_5

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    :goto_5
    invoke-static {v7, v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    const/16 v2, 0x20

    aget-wide v0, v15, v0

    goto :goto_5

    :goto_6
    return-void
.end method
