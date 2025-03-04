.class abstract Lorg/bouncycastle/pqc/crypto/cmce/BENES;
.super Ljava/lang/Object;


# instance fields
.field protected final GFBITS:I

.field protected final SYS_N:I

.field protected final SYS_T:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_N:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    return-void
.end method

.method static transpose_64x64([J[J)V
    .locals 18

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [[J

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    move v1, v3

    :goto_0
    const/16 v5, 0x40

    if-ge v1, v5, :cond_0

    aget-wide v5, p1, v1

    aput-wide v5, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ltz v2, :cond_3

    shl-int v1, v4, v2

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_2

    move v7, v6

    :goto_3
    add-int v8, v6, v1

    if-ge v7, v8, :cond_1

    aget-wide v8, p0, v7

    aget-object v10, v0, v2

    aget-wide v11, v10, v3

    and-long v13, v8, v11

    add-int v15, v7, v1

    aget-wide v16, p0, v15

    and-long v11, v16, v11

    shl-long/2addr v11, v1

    or-long/2addr v11, v13

    aget-wide v13, v10, v4

    and-long/2addr v8, v13

    ushr-long/2addr v8, v1

    and-long v13, v16, v13

    or-long/2addr v8, v13

    aput-wide v11, p0, v7

    aput-wide v8, p0, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-void

    nop

    :array_0
    .array-data 8
        0x5555555555555555L    # 1.1945305291614955E103
        -0x5555555555555556L
    .end array-data

    :array_1
    .array-data 8
        0x3333333333333333L    # 4.667261458395856E-62
        -0x3333333333333334L    # -9.255963134931783E61
    .end array-data

    :array_2
    .array-data 8
        0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236
        -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236
    .end array-data

    :array_3
    .array-data 8
        0xff00ff00ff00ffL
        -0xff00ff00ff0100L    # -5.82767264895205E303
    .end array-data

    :array_4
    .array-data 8
        0xffff0000ffffL
        -0xffff00010000L
    .end array-data

    :array_5
    .array-data 8
        0xffffffffL
        -0x100000000L
    .end array-data
.end method

.method static transpose_64x64([J[JI)V
    .locals 18

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [[J

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    move v1, v3

    :goto_0
    const/16 v5, 0x40

    if-ge v1, v5, :cond_0

    add-int v5, v1, p2

    aget-wide v6, p1, v5

    aput-wide v6, p0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ltz v2, :cond_3

    shl-int v1, v4, v2

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_2

    move v7, v6

    :goto_3
    add-int v8, v6, v1

    if-ge v7, v8, :cond_1

    add-int v8, v7, p2

    aget-wide v8, p0, v8

    aget-object v10, v0, v2

    aget-wide v11, v10, v3

    and-long v13, v8, v11

    add-int v15, v7, v1

    add-int v15, v15, p2

    aget-wide v16, p0, v15

    and-long v11, v16, v11

    shl-long/2addr v11, v1

    or-long/2addr v11, v13

    aget-wide v13, v10, v4

    and-long/2addr v8, v13

    ushr-long/2addr v8, v1

    and-long v13, v16, v13

    or-long/2addr v8, v13

    add-int v10, v7, p2

    aput-wide v11, p0, v10

    aput-wide v8, p0, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-void

    nop

    :array_0
    .array-data 8
        0x5555555555555555L    # 1.1945305291614955E103
        -0x5555555555555556L
    .end array-data

    :array_1
    .array-data 8
        0x3333333333333333L    # 4.667261458395856E-62
        -0x3333333333333334L    # -9.255963134931783E61
    .end array-data

    :array_2
    .array-data 8
        0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236
        -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236
    .end array-data

    :array_3
    .array-data 8
        0xff00ff00ff00ffL
        -0xff00ff00ff0100L    # -5.82767264895205E303
    .end array-data

    :array_4
    .array-data 8
        0xffff0000ffffL
        -0xffff00010000L
    .end array-data

    :array_5
    .array-data 8
        0xffffffffL
        -0x100000000L
    .end array-data
.end method


# virtual methods
.method protected abstract support_gen([S[B)V
.end method
