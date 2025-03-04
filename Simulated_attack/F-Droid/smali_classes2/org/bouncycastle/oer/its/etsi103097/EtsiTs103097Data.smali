.class public Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
