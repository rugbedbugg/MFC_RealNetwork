.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method genMatrix([B)[S
    .locals 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    mul-int v1, v0, v0

    new-array v1, v1, [S

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v4, v5, :cond_1

    invoke-static {v4}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v5

    invoke-static {v5, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    array-length v7, v5

    invoke-interface {v6, v5, v3, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v6, v2, v3, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v5, v3

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v5, v6, :cond_0

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    mul-int/lit8 v7, v5, 0x2

    invoke-static {v2, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    rem-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method
