.class public Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;
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

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 4

    .line 0
    check-cast p1, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getCipherTextSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSessionKeySize()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getPublicKey()[B

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {p1, v2, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object p1
.end method
