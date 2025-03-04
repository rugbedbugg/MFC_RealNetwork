.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
    }
.end annotation


# instance fields
.field private final hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

.field private final signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

.field private final signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

.field private final tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;


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

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHashId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    return-object v0
.end method

.method public getSigner()Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    return-object v0
.end method

.method public getTbsData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
