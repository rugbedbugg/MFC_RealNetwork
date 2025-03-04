.class public Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    }
.end annotation


# instance fields
.field private final appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

.field private final assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

.field private final canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

.field private final certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private final certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private final cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private final crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

.field private final encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

.field private final id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

.field private final region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

.field private final validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

.field private final verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {v1, p1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    const-class p1, Lorg/bouncycastle/asn1/ASN1Null;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Null;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 12"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/asn1/ASN1Null;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iput-object p5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object p6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object p7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object p8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object p9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object p10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iput-object p11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iput-object p12, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    return-object p0
.end method

.method static synthetic access$300(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    return-object p0
.end method

.method static synthetic access$500(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    return-object p0
.end method

.method static synthetic access$600(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    return-object p0
.end method

.method static synthetic access$700(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method static synthetic access$800(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method static synthetic access$900(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/asn1/ASN1Null;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object p0
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    return-object v0
.end method

.method public getAssuranceLevel()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    return-object v0
.end method

.method public getCanRequestRollover()Lorg/bouncycastle/asn1/ASN1Null;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method

.method public getCertIssuePermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getCertRequestPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getCracaId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object v0
.end method

.method public getCrlSeries()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object v0
.end method

.method public getId()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object v0
.end method

.method public getRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    return-object v0
.end method

.method public getValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    return-object v0
.end method

.method public getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
