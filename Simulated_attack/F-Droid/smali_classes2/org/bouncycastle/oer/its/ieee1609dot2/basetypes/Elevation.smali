.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Elevation;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;-><init>(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Elevation;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Elevation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Elevation;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Elevation;

    invoke-static {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Elevation;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
