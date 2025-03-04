.class public abstract Lorg/bouncycastle/dvcs/DVCSRequestBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field protected final requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

.field private final signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    return-void
.end method


# virtual methods
.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/dvcs/DVCSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot encode extension: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected createDVCRequest(Lorg/bouncycastle/asn1/dvcs/Data;)Lorg/bouncycastle/dvcs/DVCSRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->build()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/dvcs/Data;)V

    new-instance p1, Lorg/bouncycastle/dvcs/DVCSRequest;

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/dvcs/DVCSObjectIdentifiers;->id_ct_DVCSRequestData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p1, v1}, Lorg/bouncycastle/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p1
.end method

.method public setDVCS(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDVCS(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public setDVCS(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDVCS(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setNonce(Ljava/math/BigInteger;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setNonce(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setRequester(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setRequester(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method
