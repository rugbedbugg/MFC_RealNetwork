.class public Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSCertificateBuilder;


# instance fields
.field private final issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 3

    .line 0
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    new-instance p3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    :try_start_0
    invoke-interface {p2, p3}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x8

    array-length v2, p1

    invoke-static {p1, p3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha256AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha384AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 0
    invoke-static {p2, p3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->uncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-direct {p3, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    invoke-virtual {p3, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setId(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    if-eqz p4, :cond_0

    invoke-virtual {p3, p4}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->reconstructionValue(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setVerifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    new-instance p1, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;-><init>()V

    iget-object p2, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    sget-object p2, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;->implicit:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    iget-object p2, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setToBeSigned(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    new-instance p2, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/its/ITSCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;)V

    return-object p2
.end method
