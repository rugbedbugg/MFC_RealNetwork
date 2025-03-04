.class public Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    }
.end annotation


# instance fields
.field private final contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

.field private final encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

.field private final expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private final generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

.field private final generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private final inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

.field private final missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

.field private final p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private final pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

.field private final psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

.field private final requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 11 or 7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-static {v3, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    const-class p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    iput-object p5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iput-object p6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    iput-object p7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    iput-object p8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    iput-object p9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iput-object p10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    iput-object p11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContributedExtensions()Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    return-object v0
.end method

.method public getExpiryTime()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    return-object v0
.end method

.method public getGenerationLocation()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    return-object v0
.end method

.method public getGenerationTime()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    return-object v0
.end method

.method public getInlineP2pcdRequest()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    return-object v0
.end method

.method public getMissingCrlIdentifier()Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    return-object v0
.end method

.method public getP2pcdLearningRequest()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object v0
.end method

.method public getPduFunctionalType()Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    return-object v0
.end method

.method public getPsid()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object v0
.end method

.method public getRequestedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/16 v1, 0xb

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
