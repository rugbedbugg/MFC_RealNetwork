.class public Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;
.super Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
