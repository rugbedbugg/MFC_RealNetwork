.class public Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

.field private assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

.field private canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

.field private certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

.field private encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

.field private id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

.field private region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

.field private validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

.field private verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iget-object p1, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$000(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$100(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$200(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$300(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$400(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$500(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$600(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$700(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$800(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$900(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$1000(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->access$1100(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-void
.end method


# virtual methods
.method public createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .locals 14

    .line 0
    new-instance v13, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iget-object v6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iget-object v7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iget-object v8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iget-object v9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iget-object v10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iget-object v11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iget-object v12, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/asn1/ASN1Null;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)V

    return-object v13
.end method

.method public setAppPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    return-object p0
.end method

.method public setAssuranceLevel(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    return-object p0
.end method

.method public setCanRequestRollover()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object p0
.end method

.method public setCertIssuePermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method public setCertRequestPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method public setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object p0
.end method

.method public setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    return-object p0
.end method

.method public setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object p0
.end method

.method public setId(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object p0
.end method

.method public setRegion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    return-object p0
.end method

.method public setValidityPeriod(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    return-object p0
.end method

.method public setVerifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-object p0
.end method
