.class Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
.super Ljava/lang/Object;


# static fields
.field public static final SABER_EP:I = 0xa

.field public static final SABER_EQ:I = 0xd

.field private static final SABER_HASHBYTES:I = 0x20

.field private static final SABER_KEYBYTES:I = 0x20

.field public static final SABER_N:I = 0x100

.field private static final SABER_NOISE_SEEDBYTES:I = 0x20

.field private static final SABER_SEEDBYTES:I = 0x20


# instance fields
.field private final SABER_BYTES_CCA_DEC:I

.field private final SABER_ET:I

.field private final SABER_INDCPA_PUBLICKEYBYTES:I

.field private final SABER_INDCPA_SECRETKEYBYTES:I

.field private final SABER_L:I

.field private final SABER_MU:I

.field private final SABER_POLYBYTES:I

.field private final SABER_POLYCOINBYTES:I

.field private final SABER_POLYCOMPRESSEDBYTES:I

.field private final SABER_POLYVECBYTES:I

.field private final SABER_POLYVECCOMPRESSEDBYTES:I

.field private final SABER_PUBLICKEYBYTES:I

.field private final SABER_SCALEBYTES_KEM:I

.field private final SABER_SECRETKEYBYTES:I

.field private final defaultKeySize:I

.field private final h1:I

.field private final h2:I

.field private final poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 p2, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-ne p1, p2, :cond_0

    const/16 p2, 0xa

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    :goto_0
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    mul-int/lit16 p2, p2, 0x100

    div-int/2addr p2, v2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    const/16 p2, 0x1a0

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    mul-int/lit16 p2, p1, 0x1a0

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    const/16 v1, 0x140

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOMPRESSEDBYTES:I

    mul-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    mul-int/lit16 v3, v1, 0x100

    div-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SCALEBYTES_KEM:I

    add-int/lit8 v2, p1, 0x20

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x40

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    rsub-int/lit8 p1, v1, 0x9

    const/4 p2, 0x1

    shl-int p1, p2, p1

    rsub-int p1, p1, 0x104

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    return-void
.end method

.method static cmov([B[BIIB)V
    .locals 3

    .line 0
    neg-int p4, p4

    int-to-byte p4, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v2, v1

    and-int/2addr v2, p4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indcpa_kem_dec([B[B[B)V
    .locals 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v3, v1}, [I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    new-array v3, v1, [S

    new-array v4, v1, [S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, v0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p1, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {p1, p2, v0, v4}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLT([BI[S)V

    :goto_0
    if-ge v6, v1, :cond_0

    aget-short p1, v3, v6

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    add-int/2addr p1, p2

    aget-short p2, v4, v6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v0, v0, 0xa

    shl-int/2addr p2, v0

    sub-int/2addr p1, p2

    const p2, 0xffff

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x9

    int-to-short p1, p1

    aput-short p1, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p1, p3, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLmsg2BS([B[S)V

    return-void
.end method

.method private indcpa_kem_enc([B[B[B[B)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v4, 0x100

    filled-new-array {v3, v3, v4}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v6, v4}, [I

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v7, v4}, [I

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v8, v4}, [I

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    new-array v8, v4, [S

    new-array v9, v4, [S

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    array-length v11, v1

    invoke-static {v1, v10, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v11, v3, v10}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    move-object/from16 v11, p2

    invoke-virtual {v10, v6, v11}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v6, v7, v11}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    move v3, v11

    :goto_0
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const v12, 0xffff

    if-ge v3, v10, :cond_1

    move v10, v11

    :goto_1
    if-ge v10, v4, :cond_0

    aget-object v13, v7, v3

    aget-short v14, v13, v10

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v14, v15

    and-int/2addr v14, v12

    ushr-int/lit8 v14, v14, 0x3

    int-to-short v14, v14

    aput-short v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v3, v2, v7}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v3, v1, v5}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v1, v5, v6, v9}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v8}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLmsg([B[S)V

    :goto_2
    if-ge v11, v4, :cond_2

    aget-short v1, v9, v11

    aget-short v3, v8, v11

    shl-int/lit8 v3, v3, 0x9

    sub-int/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v1, v3

    and-int/2addr v1, v12

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v3, v3, 0xa

    ushr-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {v1, v2, v3, v9}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLT2BS([BI[S)V

    return-void
.end method

.method private indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v1, 0x100

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v3, v1}, [I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v4, v1}, [I

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    const/16 v4, 0x20

    new-array v5, v4, [B

    new-array v6, v4, [B

    invoke-virtual {p3, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v7, v5, v8, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-virtual {p3, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p3, v0, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p3, v3, v6}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    const/4 v6, 0x1

    invoke-virtual {p3, v0, v3, v2, v6}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    move p3, v8

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    if-ge p3, v0, :cond_1

    move v0, v8

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v6, v2, p3

    aget-short v7, v6, v0

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v7, v9

    const v9, 0xffff

    and-int/2addr v7, v9

    ushr-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    aput-short v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p3, p2, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECq2BS([B[[S)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-static {v5, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static verify([B[BI)I
    .locals 5

    .line 0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    neg-long p0, v0

    const/16 p2, 0x3f

    ushr-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public crypto_kem_dec([B[B[B)I
    .locals 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    new-array v0, v0, [B

    const/16 v1, 0x40

    new-array v2, v1, [B

    new-array v3, v1, [B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    array-length v5, p3

    invoke-static {p3, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {p0, p3, p2, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_dec([B[B[B)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    if-ge v6, v7, :cond_0

    add-int/lit8 v7, v6, 0x20

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr v8, v1

    add-int/2addr v8, v6

    aget-byte v8, p3, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v8, 0x100

    invoke-direct {v6, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-virtual {v8, v2, v5, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v8, v3, v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-static {v3, v7, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-direct {p0, v2, v8, v4, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    invoke-static {p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->verify([B[BI)I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    invoke-virtual {v6, p2, v5, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v6, v3, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr p2, v7

    int-to-byte v0, v0

    invoke-static {v3, p3, p2, v7, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->cmov([B[BIIB)V

    new-array p2, v7, [B

    invoke-virtual {v6, v3, v5, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v6, p2, v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 p3, p3, 0x8

    invoke-static {p2, v5, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5
.end method

.method public crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 7

    .line 0
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p4, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v5, 0x100

    invoke-direct {p4, v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v6, 0x200

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {p4, v4, v6, v3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p4, v4, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-static {v4, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    invoke-virtual {p4, p3, v6, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p4, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-virtual {v5, v2, v6, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v5, v1, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {p0, v2, v4, p3, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    invoke-virtual {p4, p1, v6, p3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p4, v1, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    new-array p1, v3, [B

    invoke-virtual {p4, v1, v6, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p4, p1, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 p3, p3, 0x8

    invoke-static {p1, v6, p2, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v6
.end method

.method public crypto_kem_keypair([B[BLjava/security/SecureRandom;)I
    .locals 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    invoke-virtual {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 p1, p1, -0x40

    invoke-virtual {v1, p2, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    const/16 p1, 0x20

    new-array v1, p1, [B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr p3, p1

    invoke-static {v1, v0, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public getCipherTextSize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    return v0
.end method

.method public getSABER_EP()I
    .locals 1

    .line 0
    const/16 v0, 0xa

    return v0
.end method

.method public getSABER_ET()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    return v0
.end method

.method public getSABER_KEYBYTES()I
    .locals 1

    .line 0
    const/16 v0, 0x20

    return v0
.end method

.method public getSABER_L()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    return v0
.end method

.method public getSABER_MU()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    return v0
.end method

.method public getSABER_N()I
    .locals 1

    .line 0
    const/16 v0, 0x100

    return v0
.end method

.method public getSABER_NOISE_SEEDBYTES()I
    .locals 1

    .line 0
    const/16 v0, 0x20

    return v0
.end method

.method public getSABER_POLYBYTES()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    return v0
.end method

.method public getSABER_POLYCOINBYTES()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    return v0
.end method

.method public getSABER_POLYVECBYTES()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    return v0
.end method

.method public getSABER_SEEDBYTES()I
    .locals 1

    .line 0
    const/16 v0, 0x20

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    return-object v0
.end method
