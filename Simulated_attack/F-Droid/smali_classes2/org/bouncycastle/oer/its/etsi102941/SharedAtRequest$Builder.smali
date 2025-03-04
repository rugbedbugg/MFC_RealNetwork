.class public Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

.field private eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

.field private keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSharedAtRequest()Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V

    return-object v0
.end method

.method public setCertificateFormat(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    return-object p0
.end method

.method public setEaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->eaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object p0
.end method

.method public setKeyTag(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setKeyTag([B)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->keyTag:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setRequestedSubjectAttributes(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-object p0
.end method
