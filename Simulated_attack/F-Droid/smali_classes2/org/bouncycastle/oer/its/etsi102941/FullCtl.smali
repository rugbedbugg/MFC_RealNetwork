.class public Lorg/bouncycastle/oer/its/etsi102941/FullCtl;
.super Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/FullCtl;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/FullCtl;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/FullCtl;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/FullCtl;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/FullCtl;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
