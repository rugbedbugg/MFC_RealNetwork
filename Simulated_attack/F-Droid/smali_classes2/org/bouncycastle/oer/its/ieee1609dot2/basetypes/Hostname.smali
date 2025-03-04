.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final hostName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;->hostName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;->hostName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;-><init>(Lorg/bouncycastle/asn1/ASN1String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
