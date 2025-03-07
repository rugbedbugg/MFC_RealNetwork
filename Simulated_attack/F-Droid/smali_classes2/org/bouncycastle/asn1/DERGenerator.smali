.class public abstract Lorg/bouncycastle/asn1/DERGenerator;
.super Lorg/bouncycastle/asn1/ASN1Generator;


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    iput p2, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    return-void
.end method

.method private writeLength(Ljava/io/OutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/16 v0, 0x7f

    if-le p2, v0, :cond_1

    const/4 v0, 0x1

    move v1, p2

    move v2, v0

    :goto_0
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_1
    if-ltz v2, :cond_2

    shr-int v0, p2, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_1
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method writeDEREncoded(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit16 v1, v0, 0x80

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0xa0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    or-int/lit16 v0, v0, 0xa0

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    :goto_0
    return-void
.end method

.method writeDEREncoded(Ljava/io/OutputStream;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    array-length p2, p3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeLength(Ljava/io/OutputStream;I)V

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
