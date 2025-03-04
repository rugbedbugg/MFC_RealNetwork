.class public Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificateHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

.field private expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createToBeSignedLinkCertificate()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->certificateHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V

    return-object v0
.end method

.method public createToBeSignedLinkCertificateRca()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificateRca;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificateRca;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->certificateHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificateRca;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V

    return-object v0
.end method

.method public createToBeSignedLinkCertificateTlm()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificateTlm;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificateTlm;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->certificateHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificateTlm;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V

    return-object v0
.end method

.method public setCertificateHash(Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->certificateHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    return-object p0
.end method

.method public setExpiryTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedLinkCertificate$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object p0
.end method
