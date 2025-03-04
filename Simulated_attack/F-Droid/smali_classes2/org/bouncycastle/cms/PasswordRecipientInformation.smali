.class public Lorg/bouncycastle/cms/PasswordRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;


# static fields
.field static BLOCKSIZES:Ljava/util/Map;

.field static KEYSIZES:Ljava/util/Map;


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->BLOCKSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->BLOCKSIZES:Ljava/util/Map;

    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->BLOCKSIZES:Ljava/util/Map;

    sget-object v4, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->BLOCKSIZES:Ljava/util/Map;

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    const/16 v3, 0xc0

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 1

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    new-instance p1, Lorg/bouncycastle/cms/PasswordRecipientId;

    invoke-direct {p1}, Lorg/bouncycastle/cms/PasswordRecipientId;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-void
.end method


# virtual methods
.method public getKeyDerivationAlgOID()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyDerivationAlgParams()[B
    .locals 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    check-cast p1, Lorg/bouncycastle/cms/PasswordRecipient;

    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1}, Lorg/bouncycastle/cms/PasswordRecipient;->getPasswordConversionScheme()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/cms/PasswordRecipientInformation;->getKeyDerivationAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {p1, v2, v3, v1}, Lorg/bouncycastle/cms/PasswordRecipient;->calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-interface {p1, v0, v2, v1, v3}, Lorg/bouncycastle/cms/PasswordRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object p1

    return-object p1
.end method
