.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

.field private m:I

.field private n:I

.field private random:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_keypair([B[BLjava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getM()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->m:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getN()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->n:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->t:I

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
