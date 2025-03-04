.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Aes128MatrixGenerator"
.end annotation


# instance fields
.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    new-instance p1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance p2, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method


# virtual methods
.method aes128([B[B[B)V
    .locals 8

    .line 0
    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v4, 0x0

    array-length v5, p3

    const/4 v7, 0x0

    move-object v3, p3

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p2

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method genMatrix([B)[S
    .locals 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    mul-int/2addr v0, v0

    new-array v0, v0, [S

    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v1, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v4, v5, :cond_2

    move v5, v3

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v5, v6, :cond_1

    const v6, 0xffff

    and-int v7, v4, v6

    int-to-short v7, v7

    invoke-static {v7}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v3, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/2addr v6, v5

    int-to-short v6, v6

    invoke-static {v6}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v6

    invoke-static {v6, v3, v2, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->aes128([B[B[B)V

    move v6, v3

    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v6, 0x2

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v8

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    rem-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x8

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
