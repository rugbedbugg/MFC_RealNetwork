.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 1

    .line 0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getDefaultSessionKeySize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;I)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p1

    return-object p1
.end method

.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;I)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 3

    .line 0
    check-cast p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getCipherTextSize()I

    move-result v1

    new-array v1, v1, [B

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getPublicKey()[B

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_enc([B[B[BLjava/security/SecureRandom;)I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object p1
.end method
