.class public Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-ne v5, v1, :cond_0

    invoke-static {v4, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v3

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence of 1 to 3 elements only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getNewWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getNewWithOld()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getOldWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
