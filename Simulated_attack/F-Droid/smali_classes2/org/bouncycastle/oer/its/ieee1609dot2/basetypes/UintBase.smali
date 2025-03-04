.class public abstract Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field protected final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 0
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->assertLimit()V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method protected abstract assertLimit()V
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
