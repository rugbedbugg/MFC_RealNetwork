.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 3

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decompress_private_key([B)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getDefaultSessionKeySize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->extractSecret([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public extractSecret([BI)[B
    .locals 2

    .line 0
    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_dec([B[B[B)I

    return-object p2
.end method

.method public getInputSize()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method
