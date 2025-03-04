.class public Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;
.super Ljava/security/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi$Direct;
    }
.end annotation


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/BCSPHINCSPlusPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/BCSPHINCSPlusPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/BCSPHINCSPlusPrivateKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v3, p1, v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown private key passed to SPHINCS-256"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 0
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/BCSPHINCSPlusPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/BCSPHINCSPlusPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/BCSPHINCSPlusPublicKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown public key passed to SPHINCS-256"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->generateSignature([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
