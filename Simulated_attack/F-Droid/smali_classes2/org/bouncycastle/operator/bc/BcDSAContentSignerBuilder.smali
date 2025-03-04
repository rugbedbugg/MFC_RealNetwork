.class public Lorg/bouncycastle/operator/bc/BcDSAContentSignerBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method


# virtual methods
.method protected createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {p1, p2}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    return-object p2
.end method
