.class public Lorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lorg/bouncycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1

    .line 0
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iput-object p4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BMPString;->createPrimitive([C)Lorg/bouncycastle/asn1/ASN1BMPString;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UniversalString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UniversalString;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GeneralString;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1VisibleString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VisibleString;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GraphicString;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UTCTime;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VideotexString;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1T61String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1T61String;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1NumericString;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Null;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "EOF encountered in middle of BMPString"

    const/4 v8, 0x2

    if-lt v0, v3, :cond_1

    invoke-static {p0, v4, v5, v3}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v3, :cond_0

    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez v0, :cond_4

    invoke-static {p0, v4, v5, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v0, :cond_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    aget-byte v9, v4, v5

    shl-int/2addr v9, v3

    add-int/2addr v5, v8

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v6, 0x1

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    move v6, v10

    if-lt v5, v0, :cond_2

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p0

    if-nez p0, :cond_5

    if-ne v1, v6, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    array-length v1, p1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    return-object v1
.end method

.method static readLength(Ljava/io/InputStream;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ne v1, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ltz v0, :cond_8

    const/16 v1, 0xff

    if-eq v1, v0, :cond_7

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_6

    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_5

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2

    if-lt v1, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_5

    :goto_0
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4

    ushr-int/lit8 p1, v0, 0x18

    if-nez p1, :cond_3

    shl-int/lit8 p1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr p1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move p1, v0

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return p1
.end method


# virtual methods
.method buildConstructedBitString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1BitString;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object encountered in constructed BIT STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/BERBitString;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/BERBitString;-><init>([Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object p1
.end method

.method buildConstructedOctetString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object p1
.end method

.method protected buildObject(III)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v0, p0, p3, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 p3, p1, 0xe0

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_0
    and-int/lit16 p3, p1, 0xc0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p3, p2, v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTaggedObjectDL(IIZLorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x3

    if-eq p2, p1, :cond_9

    const/4 p1, 0x4

    if-eq p2, p1, :cond_8

    const/16 p1, 0x8

    if-eq p2, p1, :cond_7

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSet(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSet;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p1

    if-ge p1, v1, :cond_5

    sget-object p1, Lorg/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/DLSequence;

    return-object p1

    :cond_5
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz p1, :cond_6

    new-instance p1, Lorg/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object p1

    :cond_6
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DLSequence;->toASN1External()Lorg/bouncycastle/asn1/ASN1External;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedBitString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    return-object p1
.end method

.method getLimit()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of object"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    if-ltz v2, :cond_2

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_9

    new-instance v2, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v3, v2, v4, v5}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 v0, v0, 0xc0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0, v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    const/16 v0, 0x8

    if-eq v1, v0, :cond_6

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    const/16 v0, 0x11

    if-ne v1, v0, :cond_4

    invoke-static {v3}, Lorg/bouncycastle/asn1/BERSetParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSet;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v3}, Lorg/bouncycastle/asn1/BERSequenceParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v3}, Lorg/bouncycastle/asn1/DERExternalParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/DLExternal;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-static {v3}, Lorg/bouncycastle/asn1/BEROctetStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BEROctetString;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {v3}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readTaggedObjectDL(IIZLorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    if-nez p3, :cond_0

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :cond_1
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method

.method readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    return-object p1
.end method
