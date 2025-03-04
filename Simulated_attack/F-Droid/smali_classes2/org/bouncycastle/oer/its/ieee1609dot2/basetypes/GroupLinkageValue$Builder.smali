.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGroupLinkageValue()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setJValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setJValue([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->setJValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setValue([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->setValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;

    move-result-object p1

    return-object p1
.end method
