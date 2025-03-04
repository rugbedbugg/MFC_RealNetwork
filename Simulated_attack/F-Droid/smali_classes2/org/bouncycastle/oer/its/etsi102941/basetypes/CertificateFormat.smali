.class public Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final format:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;->format:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;->format:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFormat()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;->format:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;->format:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0
.end method
