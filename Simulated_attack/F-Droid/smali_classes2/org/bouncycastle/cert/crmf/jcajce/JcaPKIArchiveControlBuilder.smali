.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaPKIArchiveControlBuilder;
.super Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    .line 0
    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/crmf/jcajce/JcaPKIArchiveControlBuilder;-><init>(Ljava/security/PrivateKey;Lorg/bouncycastle/asn1/x500/X500Name;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/jcajce/JcaPKIArchiveControlBuilder;-><init>(Ljava/security/PrivateKey;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0

    .line 0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method
