.class Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalKeyInfoConverter"
.end annotation


# instance fields
.field private final provider:Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;->provider:Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    return-void
.end method


# virtual methods
.method public generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support for private key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bc/ExternalValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ExternalValue;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/jcajce/ExternalPublicKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/ExternalPublicKey;-><init>(Lorg/bouncycastle/asn1/bc/ExternalValue;)V

    return-object v0
.end method
