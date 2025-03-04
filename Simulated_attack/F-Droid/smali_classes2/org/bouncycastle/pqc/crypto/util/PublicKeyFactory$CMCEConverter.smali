.class Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;
.super Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CMCEConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$CMCEConverter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;->getT()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    return-object v0
.end method
