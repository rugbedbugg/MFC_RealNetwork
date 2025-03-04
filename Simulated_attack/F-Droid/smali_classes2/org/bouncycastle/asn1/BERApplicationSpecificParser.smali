.class public Lorg/bouncycastle/asn1/BERApplicationSpecificParser;
.super Lorg/bouncycastle/asn1/BERTaggedObjectParser;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# direct methods
.method constructor <init>(ILorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1

    .line 0
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-void
.end method


# virtual methods
.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
