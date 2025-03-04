.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;
.super Ljava/lang/Object;


# static fields
.field public static final AuthorizationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 0
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ok"

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "its-aa-cantparse"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "its-aa-badcontenttype"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "its-aa-imnottherecipient"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "its-aa-unknownencryptionalgorithm"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "its-aa-decryptionfailed"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v8, "its-aa-keysdontmatch"

    aput-object v8, v0, v1

    const/4 v1, 0x7

    const-string v8, "its-aa-incompleterequest"

    aput-object v8, v0, v1

    const/16 v1, 0x8

    const-string v8, "its-aa-invalidencryptionkey"

    aput-object v8, v0, v1

    const/16 v1, 0x9

    const-string v8, "its-aa-outofsyncrequest"

    aput-object v8, v0, v1

    const/16 v1, 0xa

    const-string v8, "its-aa-unknownea"

    aput-object v8, v0, v1

    const/16 v1, 0xb

    const-string v8, "its-aa-invalidea"

    aput-object v8, v0, v1

    const/16 v1, 0xc

    const-string v8, "its-aa-deniedpermissions"

    aput-object v8, v0, v1

    const/16 v1, 0xd

    const-string v8, "aa-ea-cantreachea"

    aput-object v8, v0, v1

    const/16 v1, 0xe

    const-string v8, "ea-aa-cantparse"

    aput-object v8, v0, v1

    const/16 v1, 0xf

    const-string v8, "ea-aa-badcontenttype"

    aput-object v8, v0, v1

    const-string v1, "ea-aa-imnottherecipient"

    const/16 v8, 0x10

    aput-object v1, v0, v8

    const/16 v1, 0x11

    const-string v9, "ea-aa-unknownencryptionalgorithm"

    aput-object v9, v0, v1

    const/16 v1, 0x12

    const-string v9, "ea-aa-decryptionfailed"

    aput-object v9, v0, v1

    const/16 v1, 0x13

    const-string v9, "invalidaa"

    aput-object v9, v0, v1

    const/16 v1, 0x14

    const-string v9, "invalidaasignature"

    aput-object v9, v0, v1

    const/16 v1, 0x15

    const-string v9, "wrongea"

    aput-object v9, v0, v1

    const/16 v1, 0x16

    const-string v9, "unknownits"

    aput-object v9, v0, v1

    const/16 v1, 0x17

    const-string v9, "invalidsignature"

    aput-object v9, v0, v1

    const/16 v1, 0x18

    const-string v9, "invalidencryptionkey"

    aput-object v9, v0, v1

    const/16 v1, 0x19

    const-string v9, "deniedpermissions"

    aput-object v9, v0, v1

    const/16 v1, 0x1a

    const-string v9, "deniedtoomanycerts"

    aput-object v9, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AuthorizationResponseCode"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->AuthorizationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "requestHash"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    aput-object v9, v1, v2

    const-string v9, "responseCode"

    invoke-virtual {v0, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    aput-object v0, v1, v3

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "certificate"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    aput-object v9, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v4

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "InnerAtResponse"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "eaId"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "keyTag"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "certificateFormat"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "requestedSubjectAttributes"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SharedAtRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "publicKeys"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    aput-object v6, v1, v2

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v6, "hmacKey"

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "sharedAtRequest"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    aput-object v0, v1, v4

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "ecSignature"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "InnerAtRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
