.class public Lorg/bouncycastle/its/ETSISignedData;
.super Ljava/lang/Object;


# static fields
.field private static final oerDef:Lorg/bouncycastle/oer/Element;


# instance fields
.field private final signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Signed:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ETSISignedData;->oerDef:Lorg/bouncycastle/oer/Element;

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
    sget-object v0, Lorg/bouncycastle/its/ETSISignedData;->oerDef:Lorg/bouncycastle/oer/Element;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getChoice()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getIeee1609Dot2Content()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EtsiTs103097Data-Signed did not have signed data content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getChoice()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EtsiTs103097Data-Signed did not have signed data content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

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

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    iget-object v1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->signedData(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Signed:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    return-object v0
.end method

.method public signatureValid(Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;->getChoice()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getTbsData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toX962(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1

    return p1
.end method
