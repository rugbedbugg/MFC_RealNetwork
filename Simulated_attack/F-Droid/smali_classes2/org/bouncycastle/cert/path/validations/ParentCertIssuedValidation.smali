.class public Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

.field private workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

.field private workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    return-void
.end method

.method private isNull(Lorg/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_1

    instance-of p1, p1, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;-><init>(Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    .line 0
    check-cast p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object p1, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Certificate issue does not match parent"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;->build(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Certificate signature not for public key in parent"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/cert/CertException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to build public key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_3
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to validate signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create verifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_4
    :goto_5
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->isNull(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :cond_7
    return-void
.end method
