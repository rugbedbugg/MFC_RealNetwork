.class public final Lorg/fdroid/index/v2/PackageVersionV2;
.super Ljava/lang/Object;
.source "PackageV2.kt"

# interfaces
.implements Lorg/fdroid/index/v2/PackageVersion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v2/PackageVersionV2$$serializer;,
        Lorg/fdroid/index/v2/PackageVersionV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 K2\u00020\u0001:\u0002JKB\u00ad\u0001\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012$\u0010\u000f\u001a \u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u0011\u0018\u00010\u0010\u0012\u001a\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010j\u0004\u0018\u0001`\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0002\u0010\u001aBy\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012$\u0008\u0002\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u00110\u0010\u0012\u0018\u0008\u0002\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u0011\u00a2\u0006\u0002\u0010\u001bJ\t\u00102\u001a\u00020\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\u0007H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u00105\u001a\u00020\u000bH\u00c6\u0003J\u000f\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u00c6\u0003J%\u00107\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u00110\u0010H\u00c6\u0003J\u0019\u00108\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u0011H\u00c6\u0003J\u0083\u0001\u00109\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2$\u0008\u0002\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u00110\u00102\u0018\u0008\u0002\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u0011H\u00c6\u0001J\u0013\u0010:\u001a\u00020#2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u00d6\u0003J\t\u0010=\u001a\u00020\u0003H\u00d6\u0001J\t\u0010>\u001a\u00020\u000eH\u00d6\u0001J\u001c\u0010?\u001a\u00020@2\u0014\u0010A\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020@0BJ&\u0010C\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020HH\u00c1\u0001\u00a2\u0006\u0002\u0008IR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR-\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u00110\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0014\u0010\u0013\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001dR!\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0010j\u0002`\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u001f\u00a8\u0006L"
    }
    d2 = {
        "Lorg/fdroid/index/v2/PackageVersionV2;",
        "Lorg/fdroid/index/v2/PackageVersion;",
        "seen1",
        "",
        "added",
        "",
        "file",
        "Lorg/fdroid/index/v2/FileV1;",
        "src",
        "Lorg/fdroid/index/v2/FileV2;",
        "manifest",
        "Lorg/fdroid/index/v2/ManifestV2;",
        "releaseChannels",
        "",
        "",
        "antiFeatures",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "whatsNew",
        "versionCode",
        "signer",
        "Lorg/fdroid/index/v2/SignerV2;",
        "packageManifest",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;JLorg/fdroid/index/v2/SignerV2;Lorg/fdroid/index/v2/PackageManifest;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V",
        "getAdded",
        "()J",
        "getAntiFeatures",
        "()Ljava/util/Map;",
        "getFile",
        "()Lorg/fdroid/index/v2/FileV1;",
        "hasKnownVulnerability",
        "",
        "getHasKnownVulnerability",
        "()Z",
        "getManifest",
        "()Lorg/fdroid/index/v2/ManifestV2;",
        "getPackageManifest",
        "()Lorg/fdroid/index/v2/PackageManifest;",
        "getReleaseChannels",
        "()Ljava/util/List;",
        "getSigner",
        "()Lorg/fdroid/index/v2/SignerV2;",
        "getSrc",
        "()Lorg/fdroid/index/v2/FileV2;",
        "getVersionCode",
        "getWhatsNew",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "walkFiles",
        "",
        "fileConsumer",
        "Lkotlin/Function1;",
        "write$Self",
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

.field public static final Companion:Lorg/fdroid/index/v2/PackageVersionV2$Companion;


# instance fields
.field private final added:J

.field private final antiFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final file:Lorg/fdroid/index/v2/FileV1;

.field private final manifest:Lorg/fdroid/index/v2/ManifestV2;

.field private final packageManifest:Lorg/fdroid/index/v2/PackageManifest;

.field private final releaseChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final signer:Lorg/fdroid/index/v2/SignerV2;

.field private final src:Lorg/fdroid/index/v2/FileV2;

.field private final versionCode:J

.field private final whatsNew:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/fdroid/index/v2/PackageVersionV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v2/PackageVersionV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v2/PackageVersionV2;->Companion:Lorg/fdroid/index/v2/PackageVersionV2$Companion;

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 89
    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v5, 0x4

    aput-object v3, v0, v5

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    new-instance v5, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v5, v4, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v5, 0x5

    aput-object v3, v0, v5

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v3, v4, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/fdroid/index/v2/PackageManifest;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/index/v2/PackageVersionV2;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IJLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;JLorg/fdroid/index/v2/SignerV2;Lorg/fdroid/index/v2/PackageManifest;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p1, 0xb

    const/16 v0, 0xb

    if-eq v0, p14, :cond_0

    .line 89
    sget-object p14, Lorg/fdroid/index/v2/PackageVersionV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/PackageVersionV2$$serializer;

    invoke-virtual {p14}, Lorg/fdroid/index/v2/PackageVersionV2$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p14

    invoke-static {p1, v0, p14}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    iput-object p4, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    :goto_0
    iput-object p6, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2

    .line 95
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    goto :goto_1

    :cond_2
    iput-object p7, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    :goto_1
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_3

    .line 96
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    goto :goto_2

    :cond_3
    iput-object p8, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    :goto_2
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_4

    .line 97
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    goto :goto_3

    :cond_4
    iput-object p9, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    :goto_3
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_5

    .line 99
    invoke-virtual {p6}, Lorg/fdroid/index/v2/ManifestV2;->getVersionCode()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->versionCode:J

    goto :goto_4

    :cond_5
    iput-wide p10, p0, Lorg/fdroid/index/v2/PackageVersionV2;->versionCode:J

    :goto_4
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_6

    .line 100
    invoke-virtual {p6}, Lorg/fdroid/index/v2/ManifestV2;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    goto :goto_5

    :cond_6
    iput-object p12, p0, Lorg/fdroid/index/v2/PackageVersionV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    :goto_5
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_7

    iput-object p6, p0, Lorg/fdroid/index/v2/PackageVersionV2;->packageManifest:Lorg/fdroid/index/v2/PackageManifest;

    goto :goto_6

    :cond_7
    iput-object p13, p0, Lorg/fdroid/index/v2/PackageVersionV2;->packageManifest:Lorg/fdroid/index/v2/PackageManifest;

    :goto_6
    return-void
.end method

.method public constructor <init>(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/fdroid/index/v2/FileV1;",
            "Lorg/fdroid/index/v2/FileV2;",
            "Lorg/fdroid/index/v2/ManifestV2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseChannels"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiFeatures"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsNew"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    iput-object p3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    iput-object p4, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    iput-object p5, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    iput-object p6, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    iput-object p7, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    iput-object p8, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    .line 99
    invoke-virtual {p5}, Lorg/fdroid/index/v2/ManifestV2;->getVersionCode()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->versionCode:J

    .line 100
    invoke-virtual {p5}, Lorg/fdroid/index/v2/ManifestV2;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    iput-object p5, p0, Lorg/fdroid/index/v2/PackageVersionV2;->packageManifest:Lorg/fdroid/index/v2/PackageManifest;

    return-void
.end method

.method public synthetic constructor <init>(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    .line 97
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p8

    :goto_3
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    .line 90
    invoke-direct/range {v1 .. v9}, Lorg/fdroid/index/v2/PackageVersionV2;-><init>(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v2/PackageVersionV2;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v2/PackageVersionV2;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lorg/fdroid/index/v2/PackageVersionV2;
    .locals 9

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lorg/fdroid/index/v2/PackageVersionV2;->copy(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/PackageVersionV2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v2/PackageVersionV2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6

    sget-object v0, Lorg/fdroid/index/v2/PackageVersionV2;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    .line 89
    iget-wide v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v1, Lorg/fdroid/index/v2/FileV1$$serializer;->INSTANCE:Lorg/fdroid/index/v2/FileV1$$serializer;

    iget-object v2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lorg/fdroid/index/v2/FileV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/FileV2$$serializer;

    iget-object v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lorg/fdroid/index/v2/ManifestV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/ManifestV2$$serializer;

    iget-object v2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getReleaseChannels()Ljava/util/List;

    move-result-object v2

    .line 95
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    :goto_1
    aget-object v2, v0, v1

    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getReleaseChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    .line 96
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 89
    :goto_2
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    .line 97
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 89
    :goto_3
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getVersionCode()J

    move-result-wide v2

    iget-object v4, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    .line 99
    invoke-virtual {v4}, Lorg/fdroid/index/v2/ManifestV2;->getVersionCode()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 89
    :goto_4
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getVersionCode()J

    move-result-wide v2

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_9
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    .line 100
    invoke-virtual {v3}, Lorg/fdroid/index/v2/ManifestV2;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 89
    :goto_5
    sget-object v2, Lorg/fdroid/index/v2/SignerV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/SignerV2$$serializer;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_6
    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;

    move-result-object p0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    return-wide v0
.end method

.method public final component2()Lorg/fdroid/index/v2/FileV1;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    return-object v0
.end method

.method public final component3()Lorg/fdroid/index/v2/FileV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    return-object v0
.end method

.method public final component4()Lorg/fdroid/index/v2/ManifestV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/PackageVersionV2;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/fdroid/index/v2/FileV1;",
            "Lorg/fdroid/index/v2/FileV2;",
            "Lorg/fdroid/index/v2/ManifestV2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fdroid/index/v2/PackageVersionV2;"
        }
    .end annotation

    .line 0
    const-string v0, "file"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseChannels"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiFeatures"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsNew"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/index/v2/PackageVersionV2;

    move-object v1, v0

    move-wide v2, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/index/v2/PackageVersionV2;-><init>(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v2/PackageVersionV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v2/PackageVersionV2;

    iget-wide v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    iget-wide v5, p1, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    iget-object v3, p1, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    iget-object v3, p1, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    iget-object v3, p1, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    iget-object p1, p1, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAdded()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    return-wide v0
.end method

.method public final getAntiFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final getFile()Lorg/fdroid/index/v2/FileV1;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    return-object v0
.end method

.method public getHasKnownVulnerability()Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    const-string v1, "KnownVuln"

    .line 103
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getManifest()Lorg/fdroid/index/v2/ManifestV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    return-object v0
.end method

.method public getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->packageManifest:Lorg/fdroid/index/v2/PackageManifest;

    return-object v0
.end method

.method public getReleaseChannels()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public getSigner()Lorg/fdroid/index/v2/SignerV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->signer:Lorg/fdroid/index/v2/SignerV2;

    return-object v0
.end method

.method public final getSrc()Lorg/fdroid/index/v2/FileV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    return-object v0
.end method

.method public getVersionCode()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->versionCode:J

    return-wide v0
.end method

.method public final getWhatsNew()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/ManifestV2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->added:J

    iget-object v2, p0, Lorg/fdroid/index/v2/PackageVersionV2;->file:Lorg/fdroid/index/v2/FileV1;

    iget-object v3, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    iget-object v4, p0, Lorg/fdroid/index/v2/PackageVersionV2;->manifest:Lorg/fdroid/index/v2/ManifestV2;

    iget-object v5, p0, Lorg/fdroid/index/v2/PackageVersionV2;->releaseChannels:Ljava/util/List;

    iget-object v6, p0, Lorg/fdroid/index/v2/PackageVersionV2;->antiFeatures:Ljava/util/Map;

    iget-object v7, p0, Lorg/fdroid/index/v2/PackageVersionV2;->whatsNew:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PackageVersionV2(added="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", file="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", src="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", manifest="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", releaseChannels="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", antiFeatures="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", whatsNew="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final walkFiles(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "fileConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/v2/PackageVersionV2;->src:Lorg/fdroid/index/v2/FileV2;

    .line 106
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
