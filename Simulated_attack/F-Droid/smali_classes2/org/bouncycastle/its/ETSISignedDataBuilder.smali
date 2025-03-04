.class public Lorg/bouncycastle/its/ETSISignedDataBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final def:Lorg/bouncycastle/oer/Element;


# instance fields
.field private data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

.field private extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

.field private final headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)V
    .locals 1

    .line 0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->setPsid(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    move-result-object p1

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->now()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->setGenerationTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->createHeaderInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ETSISignedDataBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V

    return-void
.end method

.method public static builder(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/its/ETSISignedDataBuilder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V

    return-object v0
.end method

.method public static builder(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/its/ETSISignedDataBuilder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)V

    return-object v0
.end method

.method private getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    iget-object v1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    iget-object v2, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->setPayload(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->setHeaderInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->createToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    return-object v0
.end method

.method private static write(Ljava/io/OutputStream;[B)V
    .locals 1

    .line 0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public build(Lorg/bouncycastle/its/operator/ITSContentSigner;)Lorg/bouncycastle/its/ETSISignedData;
    .locals 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->write(Ljava/io/OutputStream;[B)V

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/its/ETSISignedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/its/ITSAlgorithmUtils;->getHashAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->self()Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V

    return-object v2
.end method

.method public build(Lorg/bouncycastle/its/operator/ITSContentSigner;Ljava/util/List;)Lorg/bouncycastle/its/ETSISignedData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/its/operator/ITSContentSigner;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/its/ITSCertificate;",
            ">;)",
            "Lorg/bouncycastle/its/ETSISignedData;"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->write(Ljava/io/OutputStream;[B)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v2}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object p2

    new-instance v2, Lorg/bouncycastle/its/ETSISignedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/its/ITSAlgorithmUtils;->getHashAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->certificate(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V

    return-object v2
.end method

.method public build(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/its/ETSISignedData;
    .locals 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->write(Ljava/io/OutputStream;[B)V

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/its/ETSISignedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/its/ITSAlgorithmUtils;->getHashAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->digest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V

    return-object v2
.end method

.method public setData(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 3

    .line 0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setProtocolVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setContent(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->createIeee1609Dot2Data()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    return-object p0
.end method

.method public setExtDataHash(Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    return-object p0
.end method

.method public setUnsecuredData([B)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 3

    .line 0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setProtocolVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-direct {v1, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;-><init>([B)V

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->unsecuredData(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setContent(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->createEtsiTs103097Data()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    return-object p0
.end method
