.class public Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p3, p1, p1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p3, p1, p1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method private getObjectInTag(I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method

.method public getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
