.class public Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final app:I = 0x80

.field public static final enrol:I = 0x40


# instance fields
.field private final type:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getType()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method
