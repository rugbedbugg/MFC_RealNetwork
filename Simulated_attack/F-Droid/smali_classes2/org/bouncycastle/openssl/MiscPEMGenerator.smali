.class public Lorg/bouncycastle/openssl/MiscPEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final hexEncodingTable:[B


# instance fields
.field private final encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

.field private final obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/bouncycastle/openssl/PEMEncryptor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    return-void
.end method

.method private createPemObject(Ljava/lang/Object;)Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/util/io/pem/PemObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/util/io/pem/PemObject;

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;

    invoke-interface {p1}, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p1

    const-string v0, "CERTIFICATE"

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CRLHolder;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

    move-result-object p1

    const-string v0, "X509 CRL"

    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    invoke-virtual {p1}, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->getEncoded()[B

    move-result-object p1

    const-string v0, "TRUSTED CERTIFICATE"

    goto/16 :goto_1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    const-string v0, "RSA PRIVATE KEY"

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    const-string v0, "EC PRIVATE KEY"

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    const-string v0, "PRIVATE KEY"

    goto/16 :goto_1

    :cond_8
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    const-string v0, "DSA PRIVATE KEY"

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    const-string v0, "PUBLIC KEY"

    goto :goto_1

    :cond_a
    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

    move-result-object p1

    const-string v0, "ATTRIBUTE CERTIFICATE"

    goto :goto_1

    :cond_b
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object p1

    const-string v0, "CERTIFICATE REQUEST"

    goto :goto_1

    :cond_c
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object p1

    const-string v0, "ENCRYPTED PRIVATE KEY"

    goto :goto_1

    :cond_d
    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    const-string v0, "PKCS7"

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/bouncycastle/openssl/PEMEncryptor;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DESEDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v1, "DES-EDE3-CBC"

    :cond_e
    iget-object v2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    invoke-interface {v2}, Lorg/bouncycastle/openssl/PEMEncryptor;->getIV()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    invoke-interface {v3, p1}, Lorg/bouncycastle/openssl/PEMEncryptor;->encrypt([B)[B

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    const-string v5, "Proc-Type"

    const-string v6, "4,ENCRYPTED"

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lorg/bouncycastle/openssl/MiscPEMGenerator;->getHexEncoded([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEK-Info"

    invoke-direct {v4, v2, v1}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-direct {v1, v0, v3, p1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    return-object v1

    :cond_f
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_10
    new-instance p1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    const-string v0, "unknown object passed - can\'t encode."

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHexEncoded([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    ushr-int/lit8 v3, v3, 0x4

    aget-byte v3, v5, v3

    int-to-char v3, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v5, v2

    int-to-char v2, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
