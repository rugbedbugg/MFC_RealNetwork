.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final laId:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;->laId:[B

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;->assertLength()V

    return-void
.end method

.method private assertLength()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;->laId:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "laId must be 2 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLaId()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;->laId:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LaId;->laId:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
