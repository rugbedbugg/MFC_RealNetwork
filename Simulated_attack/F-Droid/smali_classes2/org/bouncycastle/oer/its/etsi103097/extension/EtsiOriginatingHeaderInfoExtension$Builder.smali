.class public Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEtsiOriginatingHeaderInfoExtension()Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension;-><init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public setEncodable(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public setEtsiTs102941CrlRequest(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public setEtsiTs102941DeltaCtlRequest(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public setId(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiOriginatingHeaderInfoExtension$Builder;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    return-object p0
.end method
