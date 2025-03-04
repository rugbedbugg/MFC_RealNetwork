.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;-><init>([B)V

    array-length p1, p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hash id not 3 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;-><init>([B)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
