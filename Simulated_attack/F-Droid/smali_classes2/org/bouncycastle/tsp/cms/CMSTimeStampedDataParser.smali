.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;


# instance fields
.field private timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

.field private util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->initialize(Lorg/bouncycastle/asn1/cms/ContentInfoParser;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private initialize(Lorg/bouncycastle/asn1/cms/ContentInfoParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed content - type must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private parseTimeStamps()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse evidence block: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object p1

    return-object p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getContent()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getContent()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getDataUri()Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to extract algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    return-object v0
.end method

.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V

    return-void
.end method
