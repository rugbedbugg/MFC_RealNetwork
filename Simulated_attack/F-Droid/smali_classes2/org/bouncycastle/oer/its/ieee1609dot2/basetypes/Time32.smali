.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;


# static fields
.field public static etsiEpochMillis:J = 0xf9cebab800L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT32;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static now()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 2

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->ofUnixMillis(J)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    move-result-object v0

    return-object v0
.end method

.method public static ofUnixMillis(J)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    sget-wide v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->etsiEpochMillis:J

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->toUnixMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnixMillis()J
    .locals 4

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-wide v2, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->etsiEpochMillis:J

    add-long/2addr v0, v2

    return-wide v0
.end method
