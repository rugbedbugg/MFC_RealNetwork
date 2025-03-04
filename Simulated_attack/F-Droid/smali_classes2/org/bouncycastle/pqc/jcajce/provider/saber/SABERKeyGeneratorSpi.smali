.class public Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;


# instance fields
.field private extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

.field private genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPublicKey;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    :try_start_0
    invoke-interface {v0}, Ljavax/security/auth/Destroyable;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key cleanup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPrivateKey;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getEncapsulation()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->extractSecret([B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object v2
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 0
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    if-eqz p2, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    check-cast p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown spec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
