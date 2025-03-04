.class public Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/ETSIKeyWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final recipientHash:[B

.field private final recipientKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientHash:[B

    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;-><init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method


# virtual methods
.method public wrap([B)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;
    .locals 6

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "ETSIKEMwithSHA256"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    new-instance v2, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientHash:[B

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([BZ)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    mul-int/lit8 v1, v1, 0x2

    :cond_0
    add-int/2addr v1, v4

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v4

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->createEncodedPoint([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->setV(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v2

    array-length v4, p1

    add-int/2addr v4, v1

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->setC([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v2

    array-length p1, p1

    add-int/2addr v1, p1

    array-length p1, v0

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->setT([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->createEciesP256EncryptedKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;->eciesNistP256(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;->eciesBrainpoolP256r1(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recipient key curve is not P-256 or Brainpool P256r1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
