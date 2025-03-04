.class public Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;
.super Ljava/lang/Object;


# static fields
.field public static final CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Version:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xff

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "CertificateFormat"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->ValidityPeriod:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "validityPeriod"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->GeographicRegion:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "region"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SubjectAssurance:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "assuranceLevel"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v6, v10

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfPsidSsp:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "appPermissions"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v6, v10

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "certIssuePermissions"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/4 v10, 0x5

    aput-object v7, v6, v10

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v7

    const/4 v10, 0x6

    aput-object v7, v6, v10

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v6, "CertificateSubjectAttributes"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Encrypted:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "encryptedEcSignature"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_SignedExternalPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "ecSignature"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v6, "EcSignature"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicVerificationKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "verificationKey"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    aput-object v6, v5, v8

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "encryptionKey"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "PublicKeys"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
