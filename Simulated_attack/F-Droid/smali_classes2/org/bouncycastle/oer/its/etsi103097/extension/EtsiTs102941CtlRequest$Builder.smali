.class public Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

.field private lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEtsiTs102941CtlRequest()Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method

.method public createEtsiTs102941DeltaCtlRequest()Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method

.method public setIssuerId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object p0
.end method

.method public setLastKnownCtlSequence(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method
