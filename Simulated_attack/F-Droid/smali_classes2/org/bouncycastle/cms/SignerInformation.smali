.class public Lorg/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;


# instance fields
.field private final content:Lorg/bouncycastle/cms/CMSProcessable;

.field private final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final info:Lorg/bouncycastle/asn1/cms/SignerInfo;

.field private final isCounterSignature:Z

.field private resultDigest:[B

.field private final sid:Lorg/bouncycastle/cms/SignerId;

.field private final signature:[B

.field protected final signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field protected final unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/cms/SignerId;-><init>([B)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    goto :goto_2

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/cms/SignerId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;)V
    .locals 1

    .line 0
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/SignerInfo;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/SignerInfo;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    iget-object p2, p1, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iget-object p1, p1, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-void
.end method

.method public static addCounterSigners(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationStore;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, v3, v4}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v9, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    const/4 v1, 0x0

    invoke-direct {p1, v9, v0, p0, v1}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    return-object p1
.end method

.method private doVerify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-interface {v2}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_1

    instance-of v5, v2, Lorg/bouncycastle/operator/RawContentVerifier;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v5, v4}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance v5, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v5, v4, v3}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v5, v4}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "data not encapsulated in signature - use detached constructor."

    invoke-direct {p1, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    if-eqz p1, :cond_6

    invoke-interface {p1, v3}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->verifyContentTypeAttributeValue()V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;->verifyAlgorithmIdentifierProtectionAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->verifyMessageDigestAttribute()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;->verifyCounterSignatureAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    :try_start_2
    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz p1, :cond_8

    instance-of p1, v2, Lorg/bouncycastle/operator/RawContentVerifier;

    if-eqz p1, :cond_8

    check-cast v2, Lorg/bouncycastle/operator/RawContentVerifier;

    const-string p1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/bouncycastle/asn1/x509/DigestInfo;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {p1, v1, v3}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lorg/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p1

    return p1

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lorg/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p1

    return p1

    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :goto_3
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_4
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create digest calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_5
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create content verifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSigningTime()Lorg/bouncycastle/asn1/cms/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST have a single attribute value"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v1
.end method

.method public static replaceUnsignedAttributes(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    new-instance p1, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v2, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-direct {p1, v2, v0, p0, v1}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    return-object p1
.end method

.method private verifyAlgorithmIdentifierProtectionAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method private verifyContentTypeAttributeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "content-type"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_5

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "content-type attribute value does not match eContentType"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyCounterSignatureAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private verifyMessageDigestAttribute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "message-digest"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v1, "message-digest attribute value does not match calculated value"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContentDigest()[B
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 8

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v6, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6, v7}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, v2}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDigestAlgOID()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgParams()[B
    .locals 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/SignerInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncodedSignedAttributes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/SignerInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

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

.method public getSID()Lorg/bouncycastle/cms/SignerId;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isCounterSignature()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSigningTime()Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string v0, "verifier not valid at signingTime"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;->doVerify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result p1

    return p1
.end method
