.class public Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;
    .locals 3

    .line 0
    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "ARIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    :cond_1
    const-string v0, "Camellia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    :cond_2
    const-string v0, "SEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    :cond_3
    const-string v0, "AES-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    :cond_4
    const-string v0, "Camellia-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    :cond_5
    const-string v0, "ARIA-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_0
    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
