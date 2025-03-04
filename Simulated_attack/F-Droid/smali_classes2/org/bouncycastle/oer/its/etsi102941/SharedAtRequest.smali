.class public Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    }
.end annotation


# instance fields
.field private final certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

.field private final eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

.field private final keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertificateFormat()Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    return-object v0
.end method

.method public getEaId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object v0
.end method

.method public getKeyTag()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRequestedSubjectAttributes()Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
