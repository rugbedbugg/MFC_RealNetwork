.class public Lorg/bouncycastle/cert/ocsp/CertificateID;
.super Ljava/lang/Object;


# static fields
.field public static final HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final id:Lorg/bouncycastle/asn1/ocsp/CertID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'id\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-void
.end method

.method private static createCertID(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "problem creating ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static deriveCertificateID(Lorg/bouncycastle/cert/ocsp/CertificateID;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object p0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, p0, v4}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/cert/ocsp/CertificateID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cert/ocsp/CertificateID;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object p1, p1, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1
.end method

.method public getHashAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerNameHash()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesIssuer(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create digest calculator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method
