.class public abstract Lorg/bouncycastle/cms/RecipientInformation;
.super Ljava/lang/Object;


# instance fields
.field private additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

.field protected keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private operator:Lorg/bouncycastle/cms/RecipientOperator;

.field private resultMac:[B

.field protected rid:Lorg/bouncycastle/cms/RecipientId;

.field protected secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    iput-object p4, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    return-void
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


# virtual methods
.method public getContent(Lorg/bouncycastle/cms/Recipient;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse internal stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public getContentDigest()[B
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    instance-of v1, v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;->getDigest()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/cms/AuthAttributesProvider;->isAead()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/RecipientOperator;->getAADStream()Ljava/io/OutputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    invoke-interface {v0}, Lorg/bouncycastle/cms/AuthAttributesProvider;->getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v1}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgParams()[B
    .locals 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

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

.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->isMacBased()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    invoke-interface {v2}, Lorg/bouncycastle/cms/AuthAttributesProvider;->getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to drain input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->getMac()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    return-object v0
.end method

.method public getRID()Lorg/bouncycastle/cms/RecipientId;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-object v0
.end method

.method protected abstract getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
