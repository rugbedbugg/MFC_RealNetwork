.class public Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/KeyParser;


# instance fields
.field private dhParams:Lorg/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    return-void
.end method


# virtual methods
.method public readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    new-instance p1, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object p1
.end method
