.class public Lorg/bouncycastle/asn1/DLApplicationSpecific;
.super Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/16 v1, 0x40

    invoke-static {p2}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p2, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, p2, v2, p1, v1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method


# virtual methods
.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 0
    return-object p0
.end method
