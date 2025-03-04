.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;
.super Ljava/lang/Object;


# static fields
.field public static final AuthorizationValidationRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationValidationResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationValidationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 0
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ok"

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cantparse"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "badcontenttype"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "imnottherecipient"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "unknownencryptionalgorithm"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "decryptionfailed"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "invalidaa"

    aput-object v7, v0, v1

    const/4 v1, 0x7

    const-string v7, "invalidaasignature"

    aput-object v7, v0, v1

    const/16 v1, 0x8

    const-string v7, "wrongea"

    aput-object v7, v0, v1

    const/16 v1, 0x9

    const-string v7, "unknownits"

    aput-object v7, v0, v1

    const/16 v1, 0xa

    const-string v7, "invalidsignature"

    aput-object v7, v0, v1

    const/16 v1, 0xb

    const-string v7, "invalidencryptionkey"

    aput-object v7, v0, v1

    const/16 v1, 0xc

    const-string v7, "deniedpermissions"

    aput-object v7, v0, v1

    const/16 v1, 0xd

    const-string v7, "deniedtoomanycerts"

    aput-object v7, v0, v1

    const/16 v1, 0xe

    const-string v7, "deniedrequest"

    aput-object v7, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AuthorizationValidationResponseCode"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "sharedAtRequest"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    aput-object v7, v1, v2

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "ecSignature"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    aput-object v7, v1, v3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "AuthorizationValidationRequest"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v1, v6, [Ljava/lang/Object;

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "requestHash"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    aput-object v6, v1, v2

    const-string v6, "responseCode"

    invoke-virtual {v0, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    aput-object v0, v1, v3

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "confirmedSubjectAttributes"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v4

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AuthorizationValidationResponse"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
