.class public Lorg/bouncycastle/crypto/engines/OldIESEngine;
.super Lorg/bouncycastle/crypto/engines/IESEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/IESEngine;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-void
.end method


# virtual methods
.method protected getLengthTag([B)[B
    .locals 2

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    return-object v0
.end method
