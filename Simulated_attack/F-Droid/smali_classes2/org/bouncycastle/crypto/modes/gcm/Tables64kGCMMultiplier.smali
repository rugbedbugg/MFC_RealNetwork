.class public Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/16 v3, 0x10

    if-nez v0, :cond_0

    filled-new-array {v3, v1, v2}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    aget-object v4, v0, p1

    const/4 v5, 0x1

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v0, v4, v5

    invoke-static {v0, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, p1, -0x1

    aget-object v0, v0, v6

    aget-object v0, v0, v5

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([J[J)V

    :goto_2
    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_3

    shr-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    aget-object v7, v4, v0

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v6, v4, v0

    aget-object v7, v4, v5

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v4, v8

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public multiplyH([B)V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v6, v2, v5

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v8, v7

    const/4 v8, 0x3

    aget-object v9, v2, v8

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v9, v8

    const/4 v9, 0x4

    aget-object v10, v2, v9

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    aget-object v9, v10, v9

    const/4 v10, 0x5

    aget-object v11, v2, v10

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    aget-object v10, v11, v10

    const/4 v11, 0x6

    aget-object v12, v2, v11

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    aget-object v11, v12, v11

    const/4 v12, 0x7

    aget-object v13, v2, v12

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    aget-object v12, v13, v12

    const/16 v13, 0x8

    aget-object v14, v2, v13

    aget-byte v15, v1, v13

    and-int/lit16 v15, v15, 0xff

    aget-object v14, v14, v15

    const/16 v15, 0x9

    aget-object v16, v2, v15

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    aget-object v15, v16, v15

    const/16 v16, 0xa

    aget-object v17, v2, v16

    aget-byte v13, v1, v16

    and-int/lit16 v13, v13, 0xff

    aget-object v13, v17, v13

    const/16 v16, 0xb

    aget-object v17, v2, v16

    aget-byte v5, v1, v16

    and-int/lit16 v5, v5, 0xff

    aget-object v5, v17, v5

    const/16 v16, 0xc

    aget-object v17, v2, v16

    aget-byte v3, v1, v16

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v17, v3

    const/16 v16, 0xd

    aget-object v17, v2, v16

    aget-byte v0, v1, v16

    and-int/lit16 v0, v0, 0xff

    aget-object v0, v17, v0

    const/16 v16, 0xe

    aget-object v17, v2, v16

    move-object/from16 v18, v0

    aget-byte v0, v1, v16

    and-int/lit16 v0, v0, 0xff

    aget-object v0, v17, v0

    const/16 v16, 0xf

    aget-object v2, v2, v16

    move-object/from16 v17, v0

    aget-byte v0, v1, v16

    and-int/lit16 v0, v0, 0xff

    aget-object v0, v2, v0

    const/4 v2, 0x0

    aget-wide v19, v4, v2

    aget-wide v21, v6, v2

    xor-long v19, v19, v21

    aget-wide v21, v7, v2

    xor-long v19, v19, v21

    aget-wide v21, v8, v2

    xor-long v19, v19, v21

    aget-wide v21, v9, v2

    xor-long v19, v19, v21

    aget-wide v21, v10, v2

    xor-long v19, v19, v21

    aget-wide v21, v11, v2

    xor-long v19, v19, v21

    aget-wide v21, v12, v2

    xor-long v19, v19, v21

    aget-wide v21, v14, v2

    xor-long v19, v19, v21

    aget-wide v21, v15, v2

    xor-long v19, v19, v21

    aget-wide v21, v13, v2

    xor-long v19, v19, v21

    aget-wide v21, v5, v2

    xor-long v19, v19, v21

    aget-wide v21, v3, v2

    xor-long v19, v19, v21

    aget-wide v21, v18, v2

    xor-long v19, v19, v21

    aget-wide v21, v17, v2

    xor-long v19, v19, v21

    aget-wide v21, v0, v2

    xor-long v1, v19, v21

    const/16 v16, 0x1

    aget-wide v19, v4, v16

    aget-wide v21, v6, v16

    xor-long v19, v19, v21

    aget-wide v6, v7, v16

    xor-long v6, v19, v6

    aget-wide v19, v8, v16

    xor-long v6, v6, v19

    aget-wide v8, v9, v16

    xor-long/2addr v6, v8

    aget-wide v8, v10, v16

    xor-long/2addr v6, v8

    aget-wide v8, v11, v16

    xor-long/2addr v6, v8

    aget-wide v8, v12, v16

    xor-long/2addr v6, v8

    aget-wide v8, v14, v16

    xor-long/2addr v6, v8

    aget-wide v8, v15, v16

    xor-long/2addr v6, v8

    aget-wide v8, v13, v16

    xor-long/2addr v6, v8

    aget-wide v4, v5, v16

    xor-long/2addr v4, v6

    aget-wide v6, v3, v16

    xor-long v3, v4, v6

    aget-wide v5, v18, v16

    xor-long/2addr v3, v5

    aget-wide v5, v17, v16

    xor-long/2addr v3, v5

    aget-wide v5, v0, v16

    xor-long/2addr v3, v5

    move-object/from16 v0, p1

    move-wide v5, v1

    const/4 v1, 0x0

    invoke-static {v5, v6, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v1, 0x8

    invoke-static {v3, v4, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
