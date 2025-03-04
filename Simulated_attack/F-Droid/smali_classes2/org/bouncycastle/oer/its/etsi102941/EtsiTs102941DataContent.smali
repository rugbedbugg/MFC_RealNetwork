.class public Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final authorizationRequest:I = 0x2

.field public static final authorizationResponse:I = 0x3

.field public static final authorizationValidationRequest:I = 0x7

.field public static final authorizationValidationResponse:I = 0x8

.field public static final caCertificateRequest:I = 0x9

.field public static final certificateRevocationList:I = 0x4

.field public static final certificateTrustListRca:I = 0x6

.field public static final certificateTrustListTlm:I = 0x5

.field public static final doubleSignedlinkCertificateRca:I = 0xc

.field public static final enrolmentRequest:I = 0x0

.field public static final enrolmentResponse:I = 0x1

.field public static final linkCertificateTlm:I = 0xa

.field public static final singleSignedLinkCertificateRca:I = 0xb


# instance fields
.field private final choice:I

.field private final etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choice not implemented "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedTlmCtl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedTlmCtl;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;

    move-result-object p1

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    return v0
.end method

.method public getEtsiTs102941DataContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
