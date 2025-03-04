.class public Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

.field private encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

.field private expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

.field private generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

.field private missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

.field private p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

.field private psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

.field private requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHeaderInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .locals 13

    .line 0
    new-instance v12, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object v6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    iget-object v7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    iget-object v8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    iget-object v9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iget-object v10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    iget-object v11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;)V

    return-object v12
.end method

.method public setContributedExtensions(Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    return-object p0
.end method

.method public setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    return-object p0
.end method

.method public setExpiryTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    return-object p0
.end method

.method public setGenerationLocation(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    return-object p0
.end method

.method public setGenerationTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    return-object p0
.end method

.method public setInlineP2pcdRequest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    return-object p0
.end method

.method public setMissingCrlIdentifier(Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    return-object p0
.end method

.method public setP2pcdLearningRequest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object p0
.end method

.method public setPduFunctionalType(Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    return-object p0
.end method

.method public setPsid(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object p0
.end method

.method public setRequestedCertificate(Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    return-object p0
.end method
