.class public Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;
.super Ljava/lang/Object;


# static fields
.field public static final EtsiOriginatingHeaderInfoExtension:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EtsiTs102941CrlRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EtsiTs102941CtlRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EtsiTs102941DeltaCtlRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ExtId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Extension:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final etsiTs102941CrlRequestId:Lorg/bouncycastle/asn1/ASN1Integer;

.field public static final etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final extensionKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->etsiTs102941CrlRequestId:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    sput-object v3, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->extensionKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    new-array v10, v2, [Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v0, v10, v4

    aput-object v1, v10, v5

    invoke-virtual {v3, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "ExtId"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->ExtId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "issuerId"

    invoke-virtual {v3, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    aput-object v11, v1, v4

    new-array v11, v5, [Ljava/lang/Object;

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "lastKnownUpdate"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v11, "EtsiTs102941CrlRequest"

    invoke-virtual {v1, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->EtsiTs102941CrlRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    aput-object v3, v1, v4

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "lastKnownCtlSequence"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v3, "EtsiTs102941CtlRequest"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->EtsiTs102941CtlRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "EtsiTs102941DeltaCtlRequest"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->EtsiTs102941DeltaCtlRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule$1;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule$1;-><init>()V

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->aSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Extension"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->Extension:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "EtsiOriginatingHeaderInfoExtension"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->EtsiOriginatingHeaderInfoExtension:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/extension/EtsiTs103097ExtensionModule;->extensionKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method
