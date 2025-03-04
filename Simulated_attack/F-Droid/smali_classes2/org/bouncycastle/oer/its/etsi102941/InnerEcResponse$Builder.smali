.class public Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private responseCode:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInnerEcResponse()Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V

    return-object v0
.end method

.method public setCertificate(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object p0
.end method

.method public setRequestHash(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setRequestHash([B)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setResponseCode(Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    return-object p0
.end method
