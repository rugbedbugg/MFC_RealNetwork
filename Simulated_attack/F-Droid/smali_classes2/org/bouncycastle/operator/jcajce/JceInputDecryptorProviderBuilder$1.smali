.class Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->build([B)Lorg/bouncycastle/operator/InputDecryptorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;

.field final synthetic val$encKeyBytes:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->val$encKeyBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;)Ljavax/crypto/Cipher;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;

    invoke-static {v1}, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->val$encKeyBytes:[B

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    new-instance v3, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getIV()[B

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1$1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1$1;-><init>(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;)V

    return-object p1

    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create InputDecryptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
