.class Lorg/bouncycastle/pkcs/MacDataGenerator;
.super Ljava/lang/Object;


# instance fields
.field private builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    return-void
.end method


# virtual methods
.method public build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/asn1/pkcs/MacData;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p2, v0, v1, p1}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
