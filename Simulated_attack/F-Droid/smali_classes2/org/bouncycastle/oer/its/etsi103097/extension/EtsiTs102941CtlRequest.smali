.class public Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
    }
.end annotation


# instance fields
.field private final issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

.field private final lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    const-class v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v0, p1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Integer;

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIssuerId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object v0
.end method

.method public getLastKnownCtlSequence()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
