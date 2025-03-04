.class public abstract Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field final taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4

    .line 0
    iget v0, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->checkTagClass(I)I

    move-result v1

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v3, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-void
.end method

.method private static checkTagClass(I)I
    .locals 1

    .line 0
    const/16 v0, 0x40

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
    .locals 3

    .line 0
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to construct object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    return-object p0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    return v0
.end method

.method encodedLength(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p1

    return p1
.end method

.method getASN1Encoding()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getASN1Encoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationTag()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    return v0
.end method

.method public getContents()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getContents()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnclosedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method public getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTaggedObject()Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method

.method public hasApplicationTag(I)Z
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasContextTag(I)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isConstructed()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isConstructed()Z

    move-result v0

    return v0
.end method

.method public parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p1

    return-object p1
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    return-object p1
.end method

.method replaceTag(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->replaceTag(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    return-object p1
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DLApplicationSpecific;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0
.end method
