.class public Lkellinwood/security/zipsigner/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"


# instance fields
.field name:Ljava/lang/String;

.field privateKey:Ljava/security/PrivateKey;

.field publicKey:Ljava/security/cert/X509Certificate;

.field sigBlockTemplate:[B

.field signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->publicKey:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->privateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->sigBlockTemplate:[B

    const-string v0, "SHA1withRSA"

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->signatureAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;[B)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->sigBlockTemplate:[B

    const-string v0, "SHA1withRSA"

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->signatureAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->name:Ljava/lang/String;

    iput-object p2, p0, Lkellinwood/security/zipsigner/KeySet;->publicKey:Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lkellinwood/security/zipsigner/KeySet;->privateKey:Ljava/security/PrivateKey;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lkellinwood/security/zipsigner/KeySet;->signatureAlgorithm:Ljava/lang/String;

    :cond_0
    iput-object p5, p0, Lkellinwood/security/zipsigner/KeySet;->sigBlockTemplate:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SHA1withRSA"

    iput-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->signatureAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->name:Ljava/lang/String;

    iput-object p2, p0, Lkellinwood/security/zipsigner/KeySet;->publicKey:Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lkellinwood/security/zipsigner/KeySet;->privateKey:Ljava/security/PrivateKey;

    iput-object p4, p0, Lkellinwood/security/zipsigner/KeySet;->sigBlockTemplate:[B

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->publicKey:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSigBlockTemplate()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->sigBlockTemplate:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/security/zipsigner/KeySet;->signatureAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setPublicKey(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->publicKey:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setSigBlockTemplate([B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->sigBlockTemplate:[B

    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 0
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkellinwood/security/zipsigner/KeySet;->signatureAlgorithm:Ljava/lang/String;

    :goto_0
    return-void
.end method
