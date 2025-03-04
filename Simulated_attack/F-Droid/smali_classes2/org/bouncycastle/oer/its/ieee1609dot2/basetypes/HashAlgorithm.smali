.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;
.super Lorg/bouncycastle/asn1/ASN1Enumerated;


# static fields
.field public static final sha256:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

.field public static final sha384:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->sha256:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    sget-object v1, Lorg/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->sha384:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->assertValues()V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;-><init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected assertValues()V
    .locals 3

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid enumeration value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
