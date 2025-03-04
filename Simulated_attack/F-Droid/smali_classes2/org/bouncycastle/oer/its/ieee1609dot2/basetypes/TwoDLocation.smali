.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation$Builder;
    }
.end annotation


# instance fields
.field private final latitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;

.field private final longitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLatitude()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;

    return-object v0
.end method

.method public getLongitude()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Longitude;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
