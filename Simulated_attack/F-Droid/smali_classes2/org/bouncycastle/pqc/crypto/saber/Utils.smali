.class Lorg/bouncycastle/pqc/crypto/saber/Utils;
.super Ljava/lang/Object;


# instance fields
.field private final SABER_EP:I

.field private final SABER_ET:I

.field private final SABER_KEYBYTES:I

.field private final SABER_L:I

.field private final SABER_N:I

.field private final SABER_POLYBYTES:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_N()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_L()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_ET()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYBYTES()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_POLYBYTES:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_EP()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_EP:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_KEYBYTES()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_KEYBYTES:I

    return-void
.end method

.method private BS2POLq([BI[S)V
    .locals 7

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0xd

    int-to-short v1, v1

    mul-int/lit8 v2, v0, 0x8

    int-to-short v2, v2

    add-int/2addr v1, p2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v5, v4, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, p3, v2

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0x3

    shl-int/lit8 v6, v6, 0xb

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v4, v5, 0x2

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v5, v1, 0x4

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0x7f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, v2, 0x3

    shr-int/lit8 v4, v5, 0x7

    and-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v1, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x6

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0xf

    shl-int/lit8 v6, v6, 0x9

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, v2, 0x4

    shr-int/lit8 v4, v5, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v1, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x8

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, v2, 0x5

    shr-int/lit8 v4, v5, 0x1

    and-int/lit8 v4, v4, 0x7f

    add-int/lit8 v5, v1, 0x9

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0x3f

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, v2, 0x6

    shr-int/lit8 v4, v5, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v1, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0xb

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0x7

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v3, v5, 0x3

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v1, v1, 0xc

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private POLp2BS([BI[S)V
    .locals 7

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x5

    int-to-short v1, v1

    mul-int/lit8 v2, v0, 0x4

    int-to-short v2, v2

    add-int/2addr v1, p2

    aget-short v3, p3, v2

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v5, v2, 0x1

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0x3f

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v5, 0x6

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x2

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0xf

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v4, v5, 0x4

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v2, v2, 0x3

    aget-short v2, p3, v2

    and-int/lit8 v5, v2, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x4

    shr-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private POLq2BS([BI[S)V
    .locals 7

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0xd

    int-to-short v1, v1

    mul-int/lit8 v2, v0, 0x8

    int-to-short v2, v2

    add-int/2addr v1, p2

    aget-short v3, p3, v2

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v5, v2, 0x1

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0x7

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v5, 0x3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v4, v5, 0xb

    and-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v2, 0x2

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0x3f

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x4

    shr-int/lit8 v4, v5, 0x6

    and-int/lit8 v4, v4, 0x7f

    add-int/lit8 v5, v2, 0x3

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x5

    shr-int/lit8 v4, v5, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x6

    shr-int/lit8 v4, v5, 0x9

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x4

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0xf

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x7

    shr-int/lit8 v4, v5, 0x4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x8

    shr-int/lit8 v4, v5, 0xc

    and-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0x5

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0x7f

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x9

    shr-int/lit8 v4, v5, 0x7

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v5, v2, 0x6

    aget-short v5, p3, v5

    and-int/lit8 v6, v5, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0xa

    shr-int/lit8 v4, v5, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0xb

    shr-int/lit8 v4, v5, 0xa

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v2, v2, 0x7

    aget-short v2, p3, v2

    and-int/lit8 v5, v2, 0x1f

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0xc

    shr-int/lit8 v2, v2, 0x5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto/16 :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public BS2POLT([BI[S)V
    .locals 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v0, v0, 0x8

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x3

    int-to-short v0, v0

    mul-int/lit8 v4, v1, 0x8

    int-to-short v4, v4

    add-int/2addr v0, p2

    aget-byte v5, p1, v0

    and-int/lit8 v6, v5, 0x7

    int-to-short v6, v6

    aput-short v6, p3, v4

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x3

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    add-int/lit8 v6, v4, 0x2

    shr-int/2addr v5, v2

    and-int/2addr v5, v3

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v8, v7, 0x1

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p3, v6

    add-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v7, 0x1

    and-int/lit8 v6, v6, 0x7

    int-to-short v6, v6

    aput-short v6, p3, v5

    add-int/lit8 v5, v4, 0x4

    shr-int/lit8 v6, v7, 0x4

    and-int/lit8 v6, v6, 0x7

    int-to-short v6, v6

    aput-short v6, p3, v5

    add-int/lit8 v5, v4, 0x5

    shr-int/lit8 v6, v7, 0x7

    and-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v7, v0, 0x3

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p3, v5

    add-int/lit8 v5, v4, 0x6

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x7

    int-to-short v6, v6

    aput-short v6, p3, v5

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    int-to-short v0, v0

    aput-short v0, p3, v4

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x2

    int-to-short v0, v0

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    and-int/lit8 v3, v2, 0xf

    int-to-short v3, v3

    aput-short v3, p3, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    int-to-short v2, v2

    aput-short v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/2addr v0, v4

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x3

    int-to-short v0, v0

    mul-int/lit8 v5, v1, 0x4

    int-to-short v5, v5

    add-int/2addr v0, p2

    aget-byte v6, p1, v0

    and-int/lit8 v7, v6, 0x3f

    int-to-short v7, v7

    aput-short v7, p3, v5

    add-int/lit8 v7, v5, 0x1

    shr-int/2addr v6, v2

    and-int/2addr v6, v3

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p1, v8

    and-int/lit8 v9, v8, 0xf

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v6, v9

    int-to-short v6, v6

    aput-short v6, p3, v7

    add-int/lit8 v6, v5, 0x2

    and-int/lit16 v7, v8, 0xff

    shr-int/2addr v7, v4

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v8, v0, 0x3

    shl-int/2addr v8, v4

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, p3, v6

    add-int/2addr v5, v3

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    aput-short v0, p3, v5

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public BS2POLVECp([B[[S)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_EP:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLp([BI[S)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public BS2POLVECq([BI[[S)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_POLYBYTES:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p2

    aget-object v2, p3, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLq([BI[S)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public BS2POLmsg([B[S)V
    .locals 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_KEYBYTES:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    aget-byte v4, p1, v1

    shr-int/2addr v4, v2

    and-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public BS2POLp([BI[S)V
    .locals 7

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x5

    int-to-short v1, v1

    mul-int/lit8 v2, v0, 0x4

    int-to-short v2, v2

    add-int/2addr v1, p2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v5, v4, 0x3

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, p3, v2

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0xf

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v4, v5, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v6, v5, 0x3f

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v3

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v3, v5, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public POLT2BS([BI[S)V
    .locals 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v0, v0, 0x8

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x3

    int-to-short v0, v0

    mul-int/lit8 v5, v1, 0x8

    int-to-short v5, v5

    add-int/2addr v0, p2

    aget-short v6, p3, v5

    and-int/lit8 v6, v6, 0x7

    add-int/lit8 v7, v5, 0x1

    aget-short v7, p3, v7

    and-int/lit8 v7, v7, 0x7

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x2

    aget-short v7, p3, v7

    and-int/lit8 v8, v7, 0x3

    shl-int/2addr v8, v2

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v5, 0x3

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x4

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/2addr v8, v3

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x5

    aget-short v8, p3, v8

    and-int/lit8 v9, v8, 0x1

    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    add-int/lit8 v0, v0, 0x2

    shr-int/lit8 v6, v8, 0x1

    and-int/2addr v6, v4

    add-int/lit8 v7, v5, 0x6

    aget-short v7, p3, v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x7

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x2

    int-to-short v0, v0

    add-int v2, p2, v1

    aget-short v4, p3, v0

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v0, v0, 0x1

    aget-short v0, p3, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v3

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/2addr v0, v3

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x3

    int-to-short v0, v0

    mul-int/lit8 v5, v1, 0x4

    int-to-short v5, v5

    add-int/2addr v0, p2

    aget-short v6, p3, v5

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v7, v5, 0x1

    aget-short v7, p3, v7

    and-int/lit8 v8, v7, 0x3

    shl-int/2addr v8, v2

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    add-int/lit8 v8, v5, 0x2

    aget-short v8, p3, v8

    and-int/lit8 v9, v8, 0xf

    shl-int/2addr v9, v3

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    add-int/lit8 v0, v0, 0x2

    shr-int/lit8 v6, v8, 0x4

    and-int/2addr v6, v4

    add-int/2addr v5, v4

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public POLVECp2BS([B[[S)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_EP:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLp2BS([BI[S)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public POLVECq2BS([B[[S)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_POLYBYTES:I

    mul-int/2addr v1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLq2BS([BI[S)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public POLmsg2BS([B[S)V
    .locals 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_KEYBYTES:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    aget-byte v3, p1, v1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v2

    aget-short v4, p2, v4

    and-int/lit8 v4, v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    return-void
.end method
