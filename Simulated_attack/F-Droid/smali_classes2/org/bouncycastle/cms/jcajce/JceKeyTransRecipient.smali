.class public abstract Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/KeyTransRecipient;


# instance fields
.field protected contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field protected extraMappings:Ljava/util/Map;

.field protected helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private recipientKey:Ljava/security/PrivateKey;

.field protected unwrappedKeyMustBeEncodable:Z

.field protected validateKeySize:Z


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->validateKeySize:Z

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->recipientKey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method protected extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    const-string v1, "exception unwrapping key: "

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p3}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->getTransportParameters()Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyFactory(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getEphemeralPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->recipientKey:Ljava/security/PrivateKey;

    new-instance v4, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getUkm()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    invoke-virtual {p1, v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getUkm()[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->getSessionEncryptedKey()Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getEncryptedKey()[B

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getMacKey()[B

    move-result-object p1

    invoke-static {p3, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {v2, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->recipientKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->unwrappedKeyMustBeEncodable:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setMustProduceEncodableUnwrappedKey(Z)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object p1

    iget-boolean p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->validateKeySize:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->keySizeCheck(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    return-object p1

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setContentProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createContentHelper(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setContentProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createContentHelper(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setKeySizeValidation(Z)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->validateKeySize:Z

    return-object p0
.end method

.method public setMustProduceEncodableUnwrappedKey(Z)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->unwrappedKeyMustBeEncodable:Z

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method
