.class public Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;
.super Ljava/lang/Object;


# instance fields
.field private builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public setContentDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setContentDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    return-object p0
.end method

.method public setDirectSignature(Z)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setDirectSignature(Z)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    return-object p0
.end method

.method public setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    return-object p0
.end method

.method public setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->builder:Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    return-object p0
.end method
