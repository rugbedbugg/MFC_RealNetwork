.class public Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

.field private requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAuthorizationValidationResponse()Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V

    return-object v0
.end method

.method public setConfirmedSubjectAttributes(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-object p0
.end method

.method public setRequestHash(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setRequestHash([B)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setResponseCode(Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    return-object p0
.end method
