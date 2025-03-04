.class public Lorg/bouncycastle/its/ETSIEncryptedData;
.super Ljava/lang/Object;


# static fields
.field private static final oerDef:Lorg/bouncycastle/oer/Element;


# instance fields
.field private final encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Encrypted:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ETSIEncryptedData;->oerDef:Lorg/bouncycastle/oer/Element;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/oer/OERInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/oer/OERInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/OERInputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    sget-object v0, Lorg/bouncycastle/its/ETSIEncryptedData;->oerDef:Lorg/bouncycastle/oer/Element;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getChoice()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getIeee1609Dot2Content()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EtsiTs103097Data-Encrypted did not have encrypted data content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSIEncryptedData;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    iget-object v1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->encryptedData(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    sget-object v1, Lorg/bouncycastle/its/ETSIEncryptedData;->oerDef:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedData()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-object v0
.end method

.method public getRecipients()Lorg/bouncycastle/util/Store;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/its/ETSIRecipientInfo;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getRecipients()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;->getRecipientInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    new-instance v3, Lorg/bouncycastle/its/ETSIRecipientInfo;

    iget-object v4, p0, Lorg/bouncycastle/its/ETSIEncryptedData;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/its/ETSIRecipientInfo;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    invoke-direct {v1, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
