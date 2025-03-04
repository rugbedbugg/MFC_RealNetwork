.class public Lorg/bouncycastle/oer/its/template/ieee1609dot2dot1/Ieee1609Dot2Dot1EcaEeInterface;
.super Ljava/lang/Object;


# static fields
.field public static final EeEcaCertRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->UINT8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x2

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "generationTime"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "tbsCert"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->ia5String()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "canonicalId"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "EeEcaCertRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2dot1/Ieee1609Dot2Dot1EcaEeInterface;->EeEcaCertRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
