.class public Lorg/bouncycastle/operator/bc/BcECContentVerifierProviderBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;


# instance fields
.field private digestAlgorithmFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcECContentVerifierProviderBuilder;->digestAlgorithmFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    return-void
.end method


# virtual methods
.method protected createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcECContentVerifierProviderBuilder;->digestAlgorithmFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v1, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method protected extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method
