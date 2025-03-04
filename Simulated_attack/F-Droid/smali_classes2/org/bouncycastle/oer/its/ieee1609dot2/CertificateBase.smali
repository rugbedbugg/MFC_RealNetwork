.class public Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    }
.end annotation


# instance fields
.field private final issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

.field private final signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

.field private final toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

.field private final type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

.field private final version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    const-class v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-static {v0, p1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iput-object p5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    return-object v0
.end method

.method public getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    return-object v0
.end method

.method public getType()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
