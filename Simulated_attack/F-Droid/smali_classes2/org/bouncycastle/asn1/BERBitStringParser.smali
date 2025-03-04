.class public Lorg/bouncycastle/asn1/BERBitStringParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field private _bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

.field private _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method static parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getPadBits()I

    move-result v0

    new-instance v1, Lorg/bouncycastle/asn1/BERBitString;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public getBitStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {v0}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getPadBits()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitStringParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
