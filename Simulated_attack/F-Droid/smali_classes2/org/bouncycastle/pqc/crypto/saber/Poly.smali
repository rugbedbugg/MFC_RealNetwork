.class Lorg/bouncycastle/pqc/crypto/saber/Poly;
.super Ljava/lang/Object;


# static fields
.field private static final KARATSUBA_N:I = 0x40

.field private static SCHB_N:I = 0x10


# instance fields
.field private final N_RES:I

.field private final N_SB:I

.field private final N_SB_RES:I

.field private final SABER_L:I

.field private final SABER_N:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_L()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_N()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    shl-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_RES:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    return-void
.end method

.method private OVERFLOWING_MUL(II)S
    .locals 0

    .line 0
    mul-int/2addr p1, p2

    int-to-short p1, p1

    return p1
.end method

.method private cbd([S[BI)V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x4

    new-array v3, v2, [I

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v4, v5, :cond_1

    move v4, v8

    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    mul-int/lit8 v5, v4, 0x3

    add-int v5, p3, v5

    invoke-direct {v0, v1, v5, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v10

    long-to-int v5, v10

    move v10, v8

    move v11, v10

    :goto_1
    if-ge v10, v7, :cond_0

    shr-int v12, v5, v10

    const v13, 0x249249

    and-int/2addr v12, v13

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v11, 0x7

    aput v5, v3, v8

    ushr-int/lit8 v5, v11, 0x3

    and-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v10, v11, 0x6

    and-int/lit8 v10, v10, 0x7

    aput v10, v3, v9

    ushr-int/lit8 v10, v11, 0x9

    and-int/lit8 v10, v10, 0x7

    ushr-int/lit8 v12, v11, 0xc

    and-int/lit8 v12, v12, 0x7

    aput v12, v3, v6

    ushr-int/lit8 v12, v11, 0xf

    and-int/lit8 v12, v12, 0x7

    ushr-int/lit8 v13, v11, 0x12

    and-int/lit8 v13, v13, 0x7

    aput v13, v3, v7

    ushr-int/lit8 v11, v11, 0x15

    mul-int/lit8 v13, v4, 0x4

    aget v14, v3, v8

    sub-int/2addr v14, v5

    int-to-short v5, v14

    aput-short v5, p1, v13

    add-int/lit8 v5, v13, 0x1

    aget v14, v3, v9

    sub-int/2addr v14, v10

    int-to-short v10, v14

    aput-short v10, p1, v5

    add-int/lit8 v5, v13, 0x2

    aget v10, v3, v6

    sub-int/2addr v10, v12

    int-to-short v10, v10

    aput-short v10, p1, v5

    add-int/2addr v13, v7

    aget v5, v3, v7

    sub-int/2addr v5, v11

    int-to-short v5, v5

    aput-short v5, p1, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v4

    const/16 v5, 0x8

    const/16 v10, 0xf

    if-ne v4, v5, :cond_3

    move v4, v8

    :goto_2
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    mul-int/lit8 v5, v4, 0x4

    add-int v11, p3, v5

    invoke-direct {v0, v1, v11, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v11

    long-to-int v11, v11

    move v12, v8

    move v13, v12

    :goto_3
    if-ge v12, v2, :cond_2

    ushr-int v14, v11, v12

    const v15, 0x11111111

    and-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    and-int/lit8 v11, v13, 0xf

    aput v11, v3, v8

    ushr-int/lit8 v11, v13, 0x4

    and-int/2addr v11, v10

    ushr-int/lit8 v12, v13, 0x8

    and-int/2addr v12, v10

    aput v12, v3, v9

    ushr-int/lit8 v12, v13, 0xc

    and-int/2addr v12, v10

    ushr-int/lit8 v14, v13, 0x10

    and-int/2addr v14, v10

    aput v14, v3, v6

    ushr-int/lit8 v14, v13, 0x14

    and-int/2addr v14, v10

    ushr-int/lit8 v15, v13, 0x18

    and-int/2addr v15, v10

    aput v15, v3, v7

    ushr-int/lit8 v13, v13, 0x1c

    aget v15, v3, v8

    sub-int/2addr v15, v11

    int-to-short v11, v15

    aput-short v11, p1, v5

    add-int/lit8 v11, v5, 0x1

    aget v15, v3, v9

    sub-int/2addr v15, v12

    int-to-short v12, v15

    aput-short v12, p1, v11

    add-int/lit8 v11, v5, 0x2

    aget v12, v3, v6

    sub-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, p1, v11

    add-int/lit8 v5, v5, 0x3

    aget v11, v3, v7

    sub-int/2addr v11, v13

    int-to-short v11, v11

    aput-short v11, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    move v4, v8

    :goto_4
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/2addr v11, v2

    if-ge v4, v11, :cond_5

    mul-int/lit8 v11, v4, 0x5

    add-int v11, p3, v11

    const/4 v12, 0x5

    invoke-direct {v0, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    move v11, v8

    :goto_5
    if-ge v11, v12, :cond_4

    ushr-long v17, v13, v11

    const-wide v19, 0x842108421L

    and-long v17, v17, v19

    add-long v15, v15, v17

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    const-wide/16 v13, 0x1f

    and-long v6, v15, v13

    long-to-int v6, v6

    aput v6, v3, v8

    ushr-long v6, v15, v12

    and-long/2addr v6, v13

    long-to-int v6, v6

    ushr-long v18, v15, v5

    and-long v11, v18, v13

    long-to-int v11, v11

    aput v11, v3, v9

    ushr-long v11, v15, v10

    and-long/2addr v11, v13

    long-to-int v12, v11

    const/16 v11, 0x14

    ushr-long v18, v15, v11

    and-long v10, v18, v13

    long-to-int v10, v10

    const/4 v7, 0x2

    aput v10, v3, v7

    const/16 v7, 0x19

    ushr-long v18, v15, v7

    move v7, v12

    and-long v11, v18, v13

    long-to-int v11, v11

    const/16 v12, 0x1e

    ushr-long v18, v15, v12

    and-long v12, v18, v13

    long-to-int v12, v12

    const/4 v13, 0x3

    aput v12, v3, v13

    const/16 v12, 0x23

    ushr-long v12, v15, v12

    long-to-int v12, v12

    mul-int/lit8 v13, v4, 0x4

    aget v14, v3, v8

    sub-int/2addr v14, v6

    int-to-short v6, v14

    aput-short v6, p1, v13

    add-int/lit8 v6, v13, 0x1

    aget v14, v3, v9

    sub-int/2addr v14, v7

    int-to-short v7, v14

    aput-short v7, p1, v6

    add-int/lit8 v6, v13, 0x2

    const/4 v7, 0x2

    aget v10, v3, v7

    sub-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, p1, v6

    const/4 v6, 0x3

    add-int/2addr v13, v6

    aget v10, v3, v6

    sub-int/2addr v10, v12

    int-to-short v10, v10

    aput-short v10, p1, v13

    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0xf

    move/from16 v21, v7

    move v7, v6

    move/from16 v6, v21

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method private karatsuba_simple([I[I[I)V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x1f

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v4, v1, [I

    const/16 v5, 0x3f

    new-array v6, v5, [I

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    aget v10, p1, v8

    add-int/lit8 v11, v8, 0x10

    aget v11, p1, v11

    add-int/lit8 v12, v8, 0x20

    aget v12, p1, v12

    add-int/lit8 v13, v8, 0x30

    aget v13, p1, v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_0

    aget v15, p2, v14

    add-int/lit8 v16, v14, 0x10

    aget v7, p2, v16

    add-int v16, v8, v14

    aget v17, p3, v16

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v17, v17, v18

    aput v17, p3, v16

    add-int/lit8 v17, v16, 0x20

    aget v18, p3, v17

    invoke-direct {v0, v11, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v19

    add-int v18, v18, v19

    aput v18, p3, v17

    add-int v9, v15, v7

    add-int v5, v10, v11

    aget v1, v2, v16

    move/from16 v21, v7

    move/from16 v20, v8

    int-to-long v7, v1

    move v1, v10

    int-to-long v9, v9

    move-object/from16 v22, v6

    int-to-long v5, v5

    mul-long/2addr v9, v5

    add-long/2addr v7, v9

    long-to-int v5, v7

    aput v5, v2, v16

    add-int/lit8 v5, v14, 0x20

    aget v5, p2, v5

    add-int/lit8 v6, v14, 0x30

    aget v6, p2, v6

    add-int/lit8 v7, v16, 0x40

    aget v8, p3, v7

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v9

    add-int/2addr v8, v9

    aput v8, p3, v7

    add-int/lit8 v7, v16, 0x60

    aget v8, p3, v7

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v9

    add-int/2addr v8, v9

    aput v8, p3, v7

    add-int v7, v12, v13

    add-int v8, v5, v6

    aget v9, v4, v16

    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v7

    add-int/2addr v9, v7

    aput v9, v4, v16

    add-int/2addr v15, v5

    add-int v10, v1, v12

    aget v5, v22, v16

    invoke-direct {v0, v15, v10}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v7

    add-int/2addr v5, v7

    aput v5, v22, v16

    add-int v7, v21, v6

    add-int v5, v11, v13

    aget v6, v22, v17

    invoke-direct {v0, v7, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v8

    add-int/2addr v6, v8

    aput v6, v22, v17

    add-int/2addr v15, v7

    add-int/2addr v10, v5

    aget v5, v3, v16

    invoke-direct {v0, v15, v10}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v6

    add-int/2addr v5, v6

    aput v5, v3, v16

    add-int/lit8 v14, v14, 0x1

    move v10, v1

    move/from16 v8, v20

    move-object/from16 v6, v22

    const/16 v1, 0x1f

    const/16 v5, 0x3f

    const/16 v9, 0x10

    goto/16 :goto_1

    :cond_0
    move-object/from16 v22, v6

    move/from16 v20, v8

    add-int/lit8 v8, v20, 0x1

    const/16 v1, 0x1f

    const/16 v5, 0x3f

    goto/16 :goto_0

    :cond_1
    move-object/from16 v22, v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    aget v1, v3, v5

    aget v6, v22, v5

    sub-int/2addr v1, v6

    add-int/lit8 v6, v5, 0x20

    aget v7, v22, v6

    sub-int/2addr v1, v7

    aput v1, v3, v5

    aget v1, v2, v5

    aget v7, p3, v5

    sub-int/2addr v1, v7

    aget v6, p3, v6

    sub-int/2addr v1, v6

    aput v1, v2, v5

    aget v1, v4, v5

    add-int/lit8 v6, v5, 0x40

    aget v6, p3, v6

    sub-int/2addr v1, v6

    add-int/lit8 v6, v5, 0x60

    aget v6, p3, v6

    sub-int/2addr v1, v6

    aput v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x1f

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_3

    add-int/lit8 v6, v5, 0x10

    aget v7, v22, v6

    aget v8, v3, v5

    add-int/2addr v7, v8

    aput v7, v22, v6

    aget v7, p3, v6

    aget v8, v2, v5

    add-int/2addr v7, v8

    aput v7, p3, v6

    add-int/lit8 v6, v5, 0x50

    aget v7, p3, v6

    aget v8, v4, v5

    add-int/2addr v7, v8

    aput v7, p3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, 0x3f

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_4

    aget v1, v22, v2

    aget v3, p3, v2

    sub-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x40

    aget v3, p3, v3

    sub-int/2addr v1, v3

    aput v1, v22, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v1, 0x3f

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_5

    add-int/lit8 v2, v7, 0x20

    aget v3, p3, v2

    aget v4, v22, v7

    add-int/2addr v3, v4

    aput v3, p3, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private load_littleendian([BII)J
    .locals 6

    .line 0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private poly_mul_acc([S[S[S)V
    .locals 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->toom_cook_4way([S[S[S)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    :goto_0
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    mul-int/lit8 v1, p2, 0x2

    if-ge p1, v1, :cond_0

    sub-int v1, p1, p2

    aget-short v2, p3, v1

    sub-int p2, p1, p2

    aget-short p2, v0, p2

    aget-short v3, v0, p1

    sub-int/2addr p2, v3

    add-int/2addr v2, p2

    int-to-short p2, v2

    aput-short p2, p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toom_cook_4way([S[S[S)V
    .locals 31

    .line 0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [I

    new-array v7, v1, [I

    new-array v8, v1, [I

    new-array v9, v1, [I

    new-array v10, v1, [I

    new-array v11, v1, [I

    new-array v12, v1, [I

    new-array v13, v1, [I

    new-array v14, v1, [I

    new-array v1, v1, [I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    move-object/from16 v16, v9

    new-array v9, v15, [I

    move-object/from16 v17, v9

    new-array v9, v15, [I

    move-object/from16 v18, v9

    new-array v9, v15, [I

    move-object/from16 v19, v9

    new-array v9, v15, [I

    move-object/from16 v20, v9

    new-array v9, v15, [I

    move-object/from16 v21, v9

    new-array v9, v15, [I

    new-array v15, v15, [I

    const/16 v22, 0x0

    move-object/from16 v24, v9

    move-object/from16 v23, v15

    move/from16 v15, v22

    :goto_0
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    if-ge v15, v9, :cond_0

    aget-short v25, p1, v15

    add-int v26, v15, v9

    aget-short v26, p1, v26

    mul-int/lit8 v27, v9, 0x2

    add-int v27, v15, v27

    aget-short v27, p1, v27

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v15

    aget-short v9, p1, v9

    move-object/from16 v28, v1

    add-int v1, v25, v27

    int-to-short v1, v1

    move-object/from16 v29, v10

    add-int v10, v26, v9

    int-to-short v10, v10

    move-object/from16 v30, v14

    add-int v14, v1, v10

    int-to-short v14, v14

    sub-int/2addr v1, v10

    int-to-short v1, v1

    aput v14, v4, v15

    aput v1, v5, v15

    shl-int/lit8 v1, v25, 0x2

    add-int v1, v1, v27

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    shl-int/lit8 v10, v26, 0x2

    add-int/2addr v10, v9

    int-to-short v10, v10

    add-int v14, v1, v10

    int-to-short v14, v14

    sub-int/2addr v1, v10

    int-to-short v1, v1

    aput v14, v6, v15

    aput v1, v7, v15

    shl-int/lit8 v1, v9, 0x3

    shl-int/lit8 v10, v27, 0x2

    add-int/2addr v1, v10

    shl-int/lit8 v10, v26, 0x1

    add-int/2addr v1, v10

    add-int v1, v1, v25

    int-to-short v1, v1

    aput v1, v3, v15

    aput v25, v8, v15

    aput v9, v2, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    goto :goto_0

    :cond_0
    move-object/from16 v28, v1

    move-object/from16 v29, v10

    move-object/from16 v30, v14

    move/from16 v1, v22

    :goto_1
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    if-ge v1, v9, :cond_1

    aget-short v10, p2, v1

    add-int v14, v1, v9

    aget-short v14, p2, v14

    mul-int/lit8 v15, v9, 0x2

    add-int/2addr v15, v1

    aget-short v15, p2, v15

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v1

    aget-short v9, p2, v9

    add-int v25, v10, v15

    add-int v26, v14, v9

    add-int v27, v25, v26

    sub-int v25, v25, v26

    aput v27, v11, v1

    aput v25, v12, v1

    shl-int/lit8 v25, v10, 0x2

    add-int v25, v25, v15

    shl-int/lit8 v25, v25, 0x1

    shl-int/lit8 v26, v14, 0x2

    add-int v26, v26, v9

    add-int v27, v25, v26

    sub-int v25, v25, v26

    aput v27, v13, v1

    aput v25, v30, v1

    shl-int/lit8 v25, v9, 0x3

    shl-int/lit8 v15, v15, 0x2

    add-int v25, v25, v15

    shl-int/lit8 v14, v14, 0x1

    add-int v25, v25, v14

    add-int v25, v25, v10

    aput v25, v29, v1

    aput v10, v28, v1

    aput v9, v16, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v1, v16

    move-object/from16 v9, v17

    invoke-direct {v0, v2, v1, v9}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v2, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v11, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v3, v20

    invoke-direct {v0, v5, v12, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v4, v21

    invoke-direct {v0, v6, v13, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v6, v24

    move-object/from16 v5, v30

    invoke-direct {v0, v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v7, v23

    move-object/from16 v5, v28

    invoke-direct {v0, v8, v5, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move/from16 v5, v22

    :goto_2
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    if-ge v5, v8, :cond_2

    aget v8, v9, v5

    aget v10, v2, v5

    aget v11, v1, v5

    aget v12, v3, v5

    aget v13, v4, v5

    aget v14, v6, v5

    aget v15, v7, v5

    add-int/2addr v10, v13

    sub-int/2addr v14, v13

    const v16, 0xffff

    and-int v12, v12, v16

    and-int v17, v11, v16

    sub-int v12, v12, v17

    ushr-int/lit8 v12, v12, 0x1

    sub-int/2addr v13, v8

    shl-int/lit8 v17, v15, 0x6

    sub-int v13, v13, v17

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v14

    add-int/2addr v11, v12

    shl-int/lit8 v17, v11, 0x6

    sub-int v10, v10, v17

    sub-int/2addr v10, v11

    sub-int/2addr v11, v15

    sub-int/2addr v11, v8

    mul-int/lit8 v17, v11, 0x2d

    add-int v10, v10, v17

    and-int v13, v13, v16

    shl-int/lit8 v17, v11, 0x3

    sub-int v13, v13, v17

    const v17, 0xaaab

    mul-int v13, v13, v17

    shr-int/lit8 v13, v13, 0x3

    add-int/2addr v14, v10

    and-int v10, v10, v16

    and-int v17, v12, v16

    shl-int/lit8 v17, v17, 0x4

    add-int v10, v10, v17

    const v17, 0x8e39

    mul-int v10, v10, v17

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v12, v10

    neg-int v12, v12

    and-int v17, v10, v16

    mul-int/lit8 v17, v17, 0x1e

    and-int v14, v14, v16

    sub-int v17, v17, v14

    const v14, 0xeeef

    mul-int v17, v17, v14

    shr-int/lit8 v14, v17, 0x2

    sub-int/2addr v11, v13

    sub-int/2addr v10, v14

    aget-short v17, p3, v5

    and-int v15, v15, v16

    add-int v15, v17, v15

    int-to-short v15, v15

    aput-short v15, p3, v5

    add-int/lit8 v15, v5, 0x40

    aget-short v17, p3, v15

    and-int v14, v14, v16

    add-int v14, v17, v14

    int-to-short v14, v14

    aput-short v14, p3, v15

    add-int/lit16 v14, v5, 0x80

    aget-short v15, p3, v14

    and-int v13, v13, v16

    add-int/2addr v15, v13

    int-to-short v13, v15

    aput-short v13, p3, v14

    add-int/lit16 v13, v5, 0xc0

    aget-short v14, p3, v13

    and-int v12, v12, v16

    add-int/2addr v14, v12

    int-to-short v12, v14

    aput-short v12, p3, v13

    add-int/lit16 v12, v5, 0x100

    aget-short v13, p3, v12

    and-int v11, v11, v16

    add-int/2addr v13, v11

    int-to-short v11, v13

    aput-short v11, p3, v12

    add-int/lit16 v11, v5, 0x140

    aget-short v12, p3, v11

    and-int v10, v10, v16

    add-int/2addr v12, v10

    int-to-short v10, v12

    aput-short v10, p3, v11

    add-int/lit16 v10, v5, 0x180

    aget-short v11, p3, v10

    and-int v8, v8, v16

    add-int/2addr v11, v8

    int-to-short v8, v11

    aput-short v8, p3, v10

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public GenMatrix([[[S[B)V
    .locals 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYVECBYTES()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_SEEDBYTES()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v2, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v4, p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYVECBYTES()I

    move-result v0

    mul-int/2addr v0, v4

    aget-object v2, p1, v4

    invoke-virtual {p2, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GenSecret([[S[B)V
    .locals 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_NOISE_SEEDBYTES()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v2, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v4, p2, :cond_0

    aget-object p2, p1, v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v0

    mul-int/2addr v0, v4

    invoke-direct {p0, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->cbd([S[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public InnerProd([[S[[S[S)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public MatrixVectorMul([[[S[[S[[SI)V
    .locals 6

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    if-ne p4, v3, :cond_0

    aget-object v3, p1, v2

    aget-object v3, v3, v1

    aget-object v4, p2, v2

    aget-object v5, p3, v1

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    goto :goto_2

    :cond_0
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    aget-object v4, p2, v2

    aget-object v5, p3, v1

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
