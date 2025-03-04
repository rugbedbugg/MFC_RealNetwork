.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getSessionKeySize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->kem_dec([B[B[B)V

    return-object v0
.end method

.method public getInputSize()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method
