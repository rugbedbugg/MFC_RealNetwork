.class public final Lorg/fdroid/index/v2/ManifestV2;
.super Ljava/lang/Object;
.source "PackageV2.kt"

# interfaces
.implements Lorg/fdroid/index/v2/PackageManifest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v2/ManifestV2$$serializer;,
        Lorg/fdroid/index/v2/ManifestV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 H2\u00020\u0001:\u0002GHB\u00ad\u0001\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000e\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u0019By\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000e\u00a2\u0006\u0002\u0010\u001aJ\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u0007H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u000b\u00102\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u00c6\u0003J\u000f\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u00c6\u0003J\u000f\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eH\u00c6\u0003J\u000f\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000eH\u00c6\u0003J\u0086\u0001\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000eH\u00c6\u0001\u00a2\u0006\u0002\u00108J\u0013\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u00d6\u0003J\t\u0010=\u001a\u00020\u0003H\u00d6\u0001J\t\u0010>\u001a\u00020\u0005H\u00d6\u0001J&\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EH\u00c1\u0001\u00a2\u0006\u0002\u0008FR\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0018\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008!\u0010\u001fR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001cR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008%\u0010\u001fR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001cR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001cR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-\u00a8\u0006I"
    }
    d2 = {
        "Lorg/fdroid/index/v2/ManifestV2;",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "seen1",
        "",
        "versionName",
        "",
        "versionCode",
        "",
        "usesSdk",
        "Lorg/fdroid/index/v2/UsesSdkV2;",
        "maxSdkVersion",
        "signer",
        "Lorg/fdroid/index/v2/SignerV2;",
        "usesPermission",
        "",
        "Lorg/fdroid/index/v2/PermissionV2;",
        "usesPermissionSdk23",
        "nativecode",
        "features",
        "Lorg/fdroid/index/v2/FeatureV2;",
        "minSdkVersion",
        "featureNames",
        "targetSdkVersion",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getFeatureNames",
        "()Ljava/util/List;",
        "getFeatures",
        "getMaxSdkVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMinSdkVersion",
        "getNativecode",
        "getSigner",
        "()Lorg/fdroid/index/v2/SignerV2;",
        "getTargetSdkVersion",
        "getUsesPermission",
        "getUsesPermissionSdk23",
        "getUsesSdk",
        "()Lorg/fdroid/index/v2/UsesSdkV2;",
        "getVersionCode",
        "()J",
        "getVersionName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/index/v2/ManifestV2;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$index_release",
        "$serializer",
        "Companion",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/fdroid/index/v2/ManifestV2$Companion;


# instance fields
.field private final featureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FeatureV2;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSdkVersion:Ljava/lang/Integer;

.field private final minSdkVersion:Ljava/lang/Integer;

.field private final nativecode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final signer:Lorg/fdroid/index/v2/SignerV2;

.field private final targetSdkVersion:Ljava/lang/Integer;

.field private final usesPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation
.end field

.field private final usesPermissionSdk23:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation
.end field

.field private final usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

.field private final versionCode:J

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/fdroid/index/v2/ManifestV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v2/ManifestV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v2/ManifestV2;->Companion:Lorg/fdroid/index/v2/ManifestV2$Companion;

    const/16 v0, 0xc

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 143
    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lorg/fdroid/index/v2/PermissionV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/PermissionV2$$serializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lorg/fdroid/index/v2/FeatureV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/FeatureV2$$serializer;

    invoke-direct {v2, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x8

    aput-object v2, v0, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/index/v2/ManifestV2;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x3

    if-eq v3, v2, :cond_0

    .line 143
    sget-object v2, Lorg/fdroid/index/v2/ManifestV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/ManifestV2$$serializer;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/ManifestV2$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p2

    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    move-wide v2, p3

    iput-wide v2, v0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput-object v3, v0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    goto :goto_0

    :cond_1
    move-object v2, p5

    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    :goto_0
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_2

    iput-object v3, v0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object v2, p6

    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    :goto_1
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_3

    iput-object v3, v0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    goto :goto_2

    :cond_3
    move-object v2, p7

    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    :goto_2
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_4

    .line 150
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v2, p8

    goto :goto_3

    :goto_4
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_5

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_5
    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    goto :goto_6

    :cond_5
    move-object v2, p9

    goto :goto_5

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_6

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_7
    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    goto :goto_8

    :cond_6
    move-object/from16 v2, p10

    goto :goto_7

    :goto_8
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_7

    .line 153
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_9
    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    goto :goto_a

    :cond_7
    move-object/from16 v2, p11

    goto :goto_9

    :goto_a
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v2, :cond_8

    .line 155
    invoke-virtual {v2}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    :cond_8
    move-object v2, v3

    :goto_b
    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->minSdkVersion:Ljava/lang/Integer;

    goto :goto_c

    :cond_9
    move-object/from16 v2, p12

    goto :goto_b

    :goto_c
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lorg/fdroid/index/v2/FeatureV2;

    .line 156
    invoke-virtual {v5}, Lorg/fdroid/index/v2/FeatureV2;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_a
    iput-object v4, v0, Lorg/fdroid/index/v2/ManifestV2;->featureNames:Ljava/util/List;

    goto :goto_e

    :cond_b
    move-object/from16 v2, p13

    iput-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->featureNames:Ljava/util/List;

    :goto_e
    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v1, :cond_c

    .line 157
    invoke-virtual {v1}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_c
    iput-object v3, v0, Lorg/fdroid/index/v2/ManifestV2;->targetSdkVersion:Ljava/lang/Integer;

    goto :goto_f

    :cond_d
    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/fdroid/index/v2/ManifestV2;->targetSdkVersion:Ljava/lang/Integer;

    :goto_f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/index/v2/UsesSdkV2;",
            "Ljava/lang/Integer;",
            "Lorg/fdroid/index/v2/SignerV2;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FeatureV2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "versionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usesPermission"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usesPermissionSdk23"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativecode"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    iput-object p4, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    iput-object p5, p0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    iput-object p7, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    iput-object p8, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    iput-object p9, p0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    iput-object p10, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 155
    invoke-virtual {p4}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/fdroid/index/v2/ManifestV2;->minSdkVersion:Ljava/lang/Integer;

    .line 1549
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p10, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 1621
    check-cast p4, Lorg/fdroid/index/v2/FeatureV2;

    .line 156
    invoke-virtual {p4}, Lorg/fdroid/index/v2/FeatureV2;->getName()Ljava/lang/String;

    move-result-object p4

    .line 1621
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lorg/fdroid/index/v2/ManifestV2;->featureNames:Ljava/util/List;

    iget-object p2, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz p2, :cond_2

    .line 157
    invoke-virtual {p2}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lorg/fdroid/index/v2/ManifestV2;->targetSdkVersion:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 150
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 153
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    move-object v3, p0

    move-object v4, p1

    move-wide/from16 v5, p2

    .line 144
    invoke-direct/range {v3 .. v13}, Lorg/fdroid/index/v2/ManifestV2;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v2/ManifestV2;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v2/ManifestV2;Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/index/v2/ManifestV2;
    .locals 11

    .line 0
    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lorg/fdroid/index/v2/ManifestV2;->copy(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/index/v2/ManifestV2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v2/ManifestV2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 7

    sget-object v0, Lorg/fdroid/index/v2/ManifestV2;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    .line 143
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lorg/fdroid/index/v2/UsesSdkV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/UsesSdkV2$$serializer;

    iget-object v3, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lorg/fdroid/index/v2/SignerV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/SignerV2$$serializer;

    iget-object v3, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    .line 150
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 143
    :goto_3
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 143
    :goto_4
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getNativecode()Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 143
    :goto_5
    aget-object v2, v0, v1

    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getNativecode()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    .line 153
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 143
    :goto_6
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getMinSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v4, :cond_f

    .line 155
    invoke-virtual {v4}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_f
    move-object v4, v3

    :goto_7
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 143
    :goto_8
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getMinSdkVersion()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_10
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getFeatureNames()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lorg/fdroid/index/v2/FeatureV2;

    .line 156
    invoke-virtual {v6}, Lorg/fdroid/index/v2/FeatureV2;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1621
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 156
    :cond_12
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 143
    :goto_a
    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getFeatureNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v0, 0xb

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getTargetSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v2, :cond_15

    .line 157
    invoke-virtual {v2}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_15
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 143
    :goto_b
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getTargetSdkVersion()Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    return-wide v0
.end method

.method public final component3()Lorg/fdroid/index/v2/UsesSdkV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Lorg/fdroid/index/v2/SignerV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FeatureV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/index/v2/ManifestV2;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/index/v2/UsesSdkV2;",
            "Ljava/lang/Integer;",
            "Lorg/fdroid/index/v2/SignerV2;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FeatureV2;",
            ">;)",
            "Lorg/fdroid/index/v2/ManifestV2;"
        }
    .end annotation

    .line 0
    const-string v0, "versionName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usesPermission"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usesPermissionSdk23"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativecode"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/index/v2/ManifestV2;

    move-object v1, v0

    move-wide v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lorg/fdroid/index/v2/ManifestV2;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v2/ManifestV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v2/ManifestV2;

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    iget-wide v5, p1, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getFeatureNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->featureNames:Ljava/util/List;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FeatureV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->minSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNativecode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    return-object v0
.end method

.method public final getSigner()Lorg/fdroid/index/v2/SignerV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    return-object v0
.end method

.method public getTargetSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->targetSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUsesPermission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    return-object v0
.end method

.method public final getUsesPermissionSdk23()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    return-object v0
.end method

.method public final getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    return-wide v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/fdroid/index/v2/UsesSdkV2;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/fdroid/index/v2/SignerV2;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/ManifestV2;->versionName:Ljava/lang/String;

    iget-wide v1, p0, Lorg/fdroid/index/v2/ManifestV2;->versionCode:J

    iget-object v3, p0, Lorg/fdroid/index/v2/ManifestV2;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    iget-object v4, p0, Lorg/fdroid/index/v2/ManifestV2;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/fdroid/index/v2/ManifestV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    iget-object v6, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermission:Ljava/util/List;

    iget-object v7, p0, Lorg/fdroid/index/v2/ManifestV2;->usesPermissionSdk23:Ljava/util/List;

    iget-object v8, p0, Lorg/fdroid/index/v2/ManifestV2;->nativecode:Ljava/util/List;

    iget-object v9, p0, Lorg/fdroid/index/v2/ManifestV2;->features:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ManifestV2(versionName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionCode="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", usesSdk="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxSdkVersion="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", signer="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", usesPermission="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", usesPermissionSdk23="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nativecode="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", features="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
