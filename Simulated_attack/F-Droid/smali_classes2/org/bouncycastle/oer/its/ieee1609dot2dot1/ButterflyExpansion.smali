.class public Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final aes128:I


# instance fields
.field protected final butterflyExpansion:Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected final choice:I


# direct methods
.method constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->butterflyExpansion:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->choice:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->butterflyExpansion:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static aes128(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->aes128([B)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    move-result-object p0

    return-object p0
.end method

.method public static aes128([B)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;
    .locals 2

    .line 0
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "length must be 16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getButterflyExpansion()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->butterflyExpansion:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getChoice()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->choice:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->butterflyExpansion:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
