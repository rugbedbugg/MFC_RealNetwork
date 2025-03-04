.class public final Lorg/fdroid/index/v1/IndexV1;
.super Ljava/lang/Object;
.source "IndexV1.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v1/IndexV1$$serializer;,
        Lorg/fdroid/index/v1/IndexV1$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 .2\u00020\u0001:\u0002-.BY\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u001a\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011BC\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u001a\u0008\u0002\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u000c\u00a2\u0006\u0002\u0010\u0012J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J\u001b\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u000cH\u00c6\u0003JI\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u001a\u0008\u0002\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u000cH\u00c6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020\rH\u00d6\u0001J&\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u00c1\u0001\u00a2\u0006\u0002\u0008,R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R#\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006/"
    }
    d2 = {
        "Lorg/fdroid/index/v1/IndexV1;",
        "",
        "seen1",
        "",
        "repo",
        "Lorg/fdroid/index/v1/RepoV1;",
        "requests",
        "Lorg/fdroid/index/v1/Requests;",
        "apps",
        "",
        "Lorg/fdroid/index/v1/AppV1;",
        "packages",
        "",
        "",
        "Lorg/fdroid/index/v1/PackageV1;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;)V",
        "getApps",
        "()Ljava/util/List;",
        "getPackages",
        "()Ljava/util/Map;",
        "getRepo",
        "()Lorg/fdroid/index/v1/RepoV1;",
        "getRequests",
        "()Lorg/fdroid/index/v1/Requests;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
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

.field public static final Companion:Lorg/fdroid/index/v1/IndexV1$Companion;


# instance fields
.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/AppV1;",
            ">;"
        }
    .end annotation
.end field

.field private final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PackageV1;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repo:Lorg/fdroid/index/v1/RepoV1;

.field private final requests:Lorg/fdroid/index/v1/Requests;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/fdroid/index/v1/IndexV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v1/IndexV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v1/IndexV1;->Companion:Lorg/fdroid/index/v1/IndexV1$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lorg/fdroid/index/v1/AppV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/AppV1$$serializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lorg/fdroid/index/v1/PackageV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/PackageV1$$serializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/index/v1/IndexV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p6, :cond_0

    .line 13
    sget-object p6, Lorg/fdroid/index/v1/IndexV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/IndexV1$$serializer;

    invoke-virtual {p6}, Lorg/fdroid/index/v1/IndexV1$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 16
    new-instance p2, Lorg/fdroid/index/v1/Requests;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    invoke-direct {p2, p3, p6}, Lorg/fdroid/index/v1/Requests;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    .line 18
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/index/v1/RepoV1;",
            "Lorg/fdroid/index/v1/Requests;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/AppV1;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PackageV1;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    iput-object p3, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    iput-object p4, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 16
    new-instance p2, Lorg/fdroid/index/v1/Requests;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p6, v0}, Lorg/fdroid/index/v1/Requests;-><init>(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 18
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/index/v1/IndexV1;-><init>(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v1/IndexV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v1/IndexV1;Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;ILjava/lang/Object;)Lorg/fdroid/index/v1/IndexV1;
    .locals 0

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/index/v1/IndexV1;->copy(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v1/IndexV1;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6

    sget-object v0, Lorg/fdroid/index/v1/IndexV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    .line 13
    sget-object v1, Lorg/fdroid/index/v1/RepoV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/RepoV1$$serializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    .line 16
    new-instance v3, Lorg/fdroid/index/v1/Requests;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/fdroid/index/v1/Requests;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    :goto_0
    sget-object v2, Lorg/fdroid/index/v1/Requests$$serializer;->INSTANCE:Lorg/fdroid/index/v1/Requests$$serializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    :goto_1
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    .line 18
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    :goto_2
    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()Lorg/fdroid/index/v1/RepoV1;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    return-object v0
.end method

.method public final component2()Lorg/fdroid/index/v1/Requests;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/AppV1;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PackageV1;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;)Lorg/fdroid/index/v1/IndexV1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/index/v1/RepoV1;",
            "Lorg/fdroid/index/v1/Requests;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/AppV1;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PackageV1;",
            ">;>;)",
            "Lorg/fdroid/index/v1/IndexV1;"
        }
    .end annotation

    .line 0
    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/index/v1/IndexV1;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/fdroid/index/v1/IndexV1;-><init>(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v1/IndexV1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v1/IndexV1;

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    iget-object v3, p1, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    iget-object v3, p1, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    iget-object p1, p1, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/AppV1;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    return-object v0
.end method

.method public final getPackages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PackageV1;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    return-object v0
.end method

.method public final getRepo()Lorg/fdroid/index/v1/RepoV1;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    return-object v0
.end method

.method public final getRequests()Lorg/fdroid/index/v1/Requests;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    invoke-virtual {v0}, Lorg/fdroid/index/v1/RepoV1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    invoke-virtual {v1}, Lorg/fdroid/index/v1/Requests;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1;->repo:Lorg/fdroid/index/v1/RepoV1;

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1;->requests:Lorg/fdroid/index/v1/Requests;

    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1;->apps:Ljava/util/List;

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1;->packages:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexV1(repo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requests="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", apps="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packages="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
