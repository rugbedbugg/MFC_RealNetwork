.class public Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->lightsaberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->saberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->firesaberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->lightsaberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->saberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->firesaberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->lightsaberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->saberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->firesaberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const-string v0, "SABER"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->initialised:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/saber/BCSABERPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a SABERParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
