.class public Lorg/bouncycastle/its/ITSCertificateBuilder;
.super Ljava/lang/Object;


# instance fields
.field protected cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field protected crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

.field protected final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field protected final tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

.field protected version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iput-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    iput-object p2, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    return-void
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public varargs setAppPermissions([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 5

    .line 0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;

    aget-object v4, p1, v2

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;->setItem([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;->createSequenceOfPsidSsp()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setAppPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    return-object p0
.end method

.method public varargs setCertIssuePermissions([Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;->addGroupPermission([Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;->createSequenceOfPsidGroupPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCertIssuePermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    return-object p0
.end method

.method public setCracaId([B)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    return-object p0
.end method

.method public setCrlSeries(I)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iget-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    return-object p0
.end method

.method public setValidityPeriod(Lorg/bouncycastle/its/ITSValidityPeriod;)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSValidityPeriod;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setValidityPeriod(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    return-object p0
.end method

.method public setVersion(I)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object p0
.end method
