.class Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->build([C)Lorg/bouncycastle/operator/OutputEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;

.field final synthetic val$cipher:Ljavax/crypto/Cipher;

.field final synthetic val$encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$password:[C


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;[C)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;

    iput-object p2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$cipher:Ljavax/crypto/Cipher;

    iput-object p4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$password:[C

    invoke-static {v2}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->access$100([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$password:[C

    invoke-static {v2}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->access$200([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
