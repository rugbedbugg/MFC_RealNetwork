.class public Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# instance fields
.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private final pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private final sigChoice:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->sigChoice:I

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown key type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)V

    invoke-virtual {v0}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;->getKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not public verification key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->sigChoice:I

    if-ne v0, p1, :cond_2

    sget-object p1, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array v6, p1, [B

    iget-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {v4, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object p1

    array-length v0, p1

    invoke-interface {v4, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v5, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :cond_1
    new-instance v3, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Lorg/bouncycastle/crypto/Digest;)V

    new-instance p1, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;-><init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;[B[B)V

    return-object p1

    :cond_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong verifier for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
