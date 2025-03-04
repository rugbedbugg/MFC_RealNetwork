.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private x:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private y:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPoint384()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->x:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->y:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setX(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    const/16 v1, 0x30

    invoke-static {v1, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->x:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setX(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->x:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setX([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->x:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setY(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    const/16 v1, 0x30

    invoke-static {v1, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->y:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setY(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->y:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setY([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Point384$Builder;->y:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method
