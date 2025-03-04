.class Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;
.super Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPHINCSPlusConverter"
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
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p2

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getParams(Ljava/lang/Integer;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    array-length v1, p1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V

    return-object v0
.end method
