.class public Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

.field private isBer:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/asn1/BERSequence;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 3

    .line 0
    array-length v0, p1

    new-array v1, v0, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
