.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v3, v5}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v3

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/AADProcessor;->getAADStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p2}, Lorg/bouncycastle/operator/AADProcessor;->getMAC()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    new-instance v6, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/cms/RecipientInfoGenerator;

    invoke-interface {v7, p2}, Lorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p2, p1, v3, v6}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz p1, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    new-instance v4, Lorg/bouncycastle/asn1/DLSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :cond_2
    move-object v6, v4

    new-instance p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v7, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v0, v8

    move-object v2, v3

    move-object v3, p2

    move-object v4, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {p1, v7, v8}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p2

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process authenticated content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    move-result-object p1

    return-object p1
.end method
