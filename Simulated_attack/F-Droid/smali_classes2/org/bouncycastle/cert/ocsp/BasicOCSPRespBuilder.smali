.class public Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/bouncycastle/cert/ocsp/RespID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    new-instance v0, Lorg/bouncycastle/cert/ocsp/RespID;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cert/ocsp/RespID;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/ocsp/RespID;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    return-void
.end method


# virtual methods
.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    new-instance v8, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;-><init>(Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/util/Date;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p3, "exception creating Request"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v3, p3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v2, v3, p3, v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    :try_start_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    new-instance p3, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    invoke-direct {p3, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    if-eqz p2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-eq v2, v3, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    new-instance v1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    new-instance v2, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v2, v0, p1, p3, p2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object v1

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception processing TBSRequest: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setResponseExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method
