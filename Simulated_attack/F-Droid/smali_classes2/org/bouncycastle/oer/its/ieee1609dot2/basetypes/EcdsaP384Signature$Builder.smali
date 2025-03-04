.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private rSig:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP384CurvePoint;

.field private sSig:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEcdsaP384Signature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP384CurvePoint;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP384CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setRSig(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP384CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP384CurvePoint;

    return-object p0
.end method

.method public setSSig(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setSSig([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;->setSSig(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP384Signature$Builder;

    move-result-object p1

    return-object p1
.end method
