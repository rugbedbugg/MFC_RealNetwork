.class public Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;,
        Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;
    }
.end annotation


# static fields
.field private static final KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private algorithmParameters:Ljava/security/AlgorithmParameters;

.field private final encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private final keySize:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const-string v2, "incorrect keySize for encryptionOID passed to builder."

    if-eqz v1, :cond_2

    const/16 p1, 0xa8

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->keySize:I

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x38

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-lez v0, :cond_6

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->keySize:I

    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 3

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 0
    invoke-static {}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->checkForAEAD()Z

    move-result v0

    return v0
.end method

.method private static checkForAEAD()Z
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$1;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->isAuthEnveloped(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->keySize:I

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;-><init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;

    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v10, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->keySize:I

    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    iget-object v12, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;-><init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to process provided algorithmIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->isAuthEnveloped(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->keySize:I

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;-><init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;

    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v10, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->keySize:I

    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    iget-object v12, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;-><init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public setAlgorithmParameters(Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->algorithmParameters:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
