.class public Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
.super Ljava/lang/Object;


# instance fields
.field private dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method

.method private addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v2, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSEncryptedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSIOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addData(Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v4, Lorg/bouncycastle/asn1/DLSequence;

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p2}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;[Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;[C)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p1, :cond_0

    new-instance v2, Lorg/bouncycastle/pkcs/MacDataGenerator;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pkcs/MacDataGenerator;-><init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V

    invoke-virtual {v2, p2, v0}, Lorg/bouncycastle/pkcs/MacDataGenerator;->build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    new-instance p1, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;-><init>(Lorg/bouncycastle/asn1/pkcs/Pfx;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to encode AuthenticatedSafe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
