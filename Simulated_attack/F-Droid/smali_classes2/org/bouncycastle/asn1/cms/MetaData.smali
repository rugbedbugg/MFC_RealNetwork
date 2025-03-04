.class public Lorg/bouncycastle/asn1/cms/MetaData;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

.field private hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

.field private otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/MetaData;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/MetaData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/MetaData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFileName()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    :goto_1
    return-object v0
.end method

.method public getFileNameUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public getMediaType()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    :goto_1
    return-object v0
.end method

.method public getMediaTypeIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    return-object v0
.end method

.method public isHashProtected()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
