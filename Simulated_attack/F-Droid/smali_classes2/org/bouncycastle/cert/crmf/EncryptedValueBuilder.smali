.class public Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;
.super Ljava/lang/Object;


# instance fields
.field private encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

.field private padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

.field private wrapper:Lorg/bouncycastle/operator/KeyWrapper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;-><init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    return-void
.end method

.method private encryptData([B)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v1, v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {p1}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    :try_start_1
    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    invoke-interface {p1}, Lorg/bouncycastle/operator/KeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v8, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot wrap key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot process data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private padData([B)[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;->getPaddedData([B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public build(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {p1}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;->build(Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    move-result-object p1

    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    invoke-interface {v0}, Lorg/bouncycastle/operator/KeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    new-instance v7, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object p1

    invoke-direct {v7, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1BitString;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot wrap key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot encode key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padData([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptData([B)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot encode certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public build([C)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padData([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptData([B)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object p1

    return-object p1
.end method
