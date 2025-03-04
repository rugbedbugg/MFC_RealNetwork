.class public Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private opaque:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAesCcmCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->opaque:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)V

    return-object v0
.end method

.method public setCcmCiphertext(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->opaque:Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    return-object p0
.end method

.method public setCcmCiphertext([B)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->setCcmCiphertext(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setNonce([B)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->setNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;

    move-result-object p1

    return-object p1
.end method
