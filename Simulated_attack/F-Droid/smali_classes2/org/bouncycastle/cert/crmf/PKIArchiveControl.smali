.class public Lorg/bouncycastle/cert/crmf/PKIArchiveControl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/crmf/Control;


# static fields
.field public static final archiveRemGenPrivKey:I = 0x2

.field public static final encryptedPrivKey:I = 0x0

.field public static final keyGenParameters:I = 0x1

.field private static final type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private final pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    return-void
.end method


# virtual methods
.method public getArchiveType()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getType()I

    move-result v0

    return v0
.end method

.method public getEnvelopedData()Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedData;

    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRMF parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    return-object v0
.end method

.method public isEnvelopedData()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->isEncryptedValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
