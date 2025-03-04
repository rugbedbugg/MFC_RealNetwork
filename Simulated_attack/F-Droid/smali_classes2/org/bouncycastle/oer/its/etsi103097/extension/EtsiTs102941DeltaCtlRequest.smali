.class public Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;
.super Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;)V
    .locals 1

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->getIssuerId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->getLastKnownCtlSequence()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
