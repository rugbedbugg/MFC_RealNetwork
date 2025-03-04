.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesLinkCertificate;
.super Ljava/lang/Object;


# static fields
.field public static final ToBeSignedLinkCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedLinkCertificateRca:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedLinkCertificateTlm:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "expiryTime"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "certificateHash"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "ToBeSignedLinkCertificate"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesLinkCertificate;->ToBeSignedLinkCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedLinkCertificateTlm"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesLinkCertificate;->ToBeSignedLinkCertificateTlm:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedLinkCertificateRca"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesLinkCertificate;->ToBeSignedLinkCertificateRca:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
