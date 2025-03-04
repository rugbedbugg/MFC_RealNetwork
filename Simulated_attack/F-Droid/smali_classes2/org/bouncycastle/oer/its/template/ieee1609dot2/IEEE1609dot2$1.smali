.class final Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/oer/Switch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keys()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    invoke-static {}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->access$000()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;
    .locals 3

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/SwitchIndexer;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-static {}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->access$100()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->EtsiOriginatingHeaderInfoExtension:Lorg/bouncycastle/oer/OERDefinition$Builder;

    aput-object v1, p1, v0

    invoke-static {p1}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    const-string v0, "extns"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No forward definition for type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
