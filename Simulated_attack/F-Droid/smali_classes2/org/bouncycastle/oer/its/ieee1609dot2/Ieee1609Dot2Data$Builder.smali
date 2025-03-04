.class public Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

.field private protocolVersion:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCounterSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/CounterSignature;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CounterSignature;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->protocolVersion:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CounterSignature;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097Data()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->protocolVersion:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataEncrypted()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataEncryptedUnicast()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataSigned()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataSignedAndEncrypted()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedAndEncrypted;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedAndEncrypted;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedAndEncrypted;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataSignedAndEncryptedUnicast()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedAndEncryptedUnicast;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedAndEncryptedUnicast;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedAndEncryptedUnicast;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataSignedExternalPayload()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedExternalPayload;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedExternalPayload;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSignedExternalPayload;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createEtsiTs103097DataUnsecured()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataUnsecured;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataUnsecured;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataUnsecured;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createIeee1609Dot2Data()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->protocolVersion:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public createInnerEcRequestSignedForPop()Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public setContent(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    return-object p0
.end method

.method public setProtocolVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->protocolVersion:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object p0
.end method
