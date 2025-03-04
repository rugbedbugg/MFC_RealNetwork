.class public Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest$Builder;
    }
.end annotation


# instance fields
.field private final ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

.field private final sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEcSignature()Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    return-object v0
.end method

.method public getSharedAtRequest()Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->sharedAtRequest:Lorg/bouncycastle/oer/its/etsi102941/SharedAtRequest;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->ecSignature:Lorg/bouncycastle/oer/its/etsi102941/basetypes/EcSignature;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
