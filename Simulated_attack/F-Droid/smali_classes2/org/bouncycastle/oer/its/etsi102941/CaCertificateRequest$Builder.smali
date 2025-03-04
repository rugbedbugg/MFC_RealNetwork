.class public Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

.field private requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCaCertificateRequest()Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V

    return-object v0
.end method

.method public setPublicKeys(Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    return-object p0
.end method

.method public setRequestedSubjectAttributes(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-object p0
.end method
