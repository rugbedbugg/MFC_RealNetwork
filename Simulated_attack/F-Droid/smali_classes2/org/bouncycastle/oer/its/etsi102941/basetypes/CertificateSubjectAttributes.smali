.class public Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

.field private final assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

.field private final certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private final id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

.field private final region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

.field private final validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    invoke-static {v1, v0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    invoke-static {v1, v0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    invoke-static {v1, v0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    invoke-static {v1, v0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-static {v1, v0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    const-class v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {v0, p1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object p5, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object p6, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    return-object v0
.end method

.method public getAssuranceLevel()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    return-object v0
.end method

.method public getCertIssuePermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getId()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object v0
.end method

.method public getRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    return-object v0
.end method

.method public getValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
