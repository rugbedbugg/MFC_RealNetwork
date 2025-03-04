.class public Lorg/bouncycastle/asn1/cms/ContentInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final isDefiniteLength:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    instance-of v0, p2, Lorg/bouncycastle/asn1/DEROctetString;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/asn1/DLSequence;

    if-nez v0, :cond_1

    instance-of p2, p2, Lorg/bouncycastle/asn1/DERSequence;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad tag for \'content\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    instance-of p1, p1, Lorg/bouncycastle/asn1/BERSequence;

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isDefiniteLength()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/DLTaggedObject;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_2
    return-object v1
.end method
