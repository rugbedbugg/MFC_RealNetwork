.class public final Lorg/fdroid/index/v2/Entry;
.super Ljava/lang/Object;
.source "IndexV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v2/Entry$$serializer;,
        Lorg/fdroid/index/v2/Entry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000201BS\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fB?\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\t\u0010\u001e\u001a\u00020\tH\u00c6\u0003J\u0015\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000bH\u00c6\u0003JN\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020\u000cH\u00d6\u0001J&\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u00c1\u0001\u00a2\u0006\u0002\u0008/R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019\u00a8\u00062"
    }
    d2 = {
        "Lorg/fdroid/index/v2/Entry;",
        "",
        "seen1",
        "",
        "timestamp",
        "",
        "version",
        "maxAge",
        "index",
        "Lorg/fdroid/index/v2/EntryFileV2;",
        "diffs",
        "",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)V",
        "getDiffs",
        "()Ljava/util/Map;",
        "getIndex",
        "()Lorg/fdroid/index/v2/EntryFileV2;",
        "getMaxAge",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getTimestamp",
        "()J",
        "getVersion",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)Lorg/fdroid/index/v2/Entry;",
        "equals",
        "",
        "other",
        "getDiff",
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

.field public static final Companion:Lorg/fdroid/index/v2/Entry$Companion;


# instance fields
.field private final diffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            ">;"
        }
    .end annotation
.end field

.field private final index:Lorg/fdroid/index/v2/EntryFileV2;

.field private final maxAge:Ljava/lang/Integer;

.field private final timestamp:J

.field private final version:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/fdroid/index/v2/Entry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v2/Entry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v2/Entry;->Companion:Lorg/fdroid/index/v2/Entry$Companion;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v3, Lorg/fdroid/index/v2/EntryFileV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/EntryFileV2$$serializer;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/index/v2/Entry;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IJJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p1, 0xb

    const/16 v0, 0xb

    if-eq v0, p9, :cond_0

    .line 10
    sget-object p9, Lorg/fdroid/index/v2/Entry$$serializer;->INSTANCE:Lorg/fdroid/index/v2/Entry$$serializer;

    invoke-virtual {p9}, Lorg/fdroid/index/v2/Entry$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    iput-wide p4, p0, Lorg/fdroid/index/v2/Entry;->version:J

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iput-object p6, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    :goto_0
    iput-object p7, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    .line 16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    goto :goto_1

    :cond_2
    iput-object p8, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    :goto_1
    return-void
.end method

.method public constructor <init>(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Integer;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "index"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    iput-wide p3, p0, Lorg/fdroid/index/v2/Entry;->version:J

    iput-object p5, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    iput-object p7, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    .line 11
    invoke-direct/range {v1 .. v8}, Lorg/fdroid/index/v2/Entry;-><init>(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v2/Entry;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v2/Entry;JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;ILjava/lang/Object;)Lorg/fdroid/index/v2/Entry;
    .locals 8

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lorg/fdroid/index/v2/Entry;->version:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    and-int/lit8 v7, p8, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object v7, p7

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move-object p5, v5

    move-object p6, v6

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lorg/fdroid/index/v2/Entry;->copy(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)Lorg/fdroid/index/v2/Entry;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v2/Entry;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    sget-object v0, Lorg/fdroid/index/v2/Entry;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    .line 10
    iget-wide v1, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/fdroid/index/v2/Entry;->version:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lorg/fdroid/index/v2/EntryFileV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/EntryFileV2$$serializer;

    iget-object v2, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    .line 16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    :goto_1
    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/Entry;->version:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Lorg/fdroid/index/v2/EntryFileV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    return-object v0
.end method

.method public final component5()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)Lorg/fdroid/index/v2/Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Integer;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            ">;)",
            "Lorg/fdroid/index/v2/Entry;"
        }
    .end annotation

    .line 0
    const-string v0, "index"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/index/v2/Entry;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/fdroid/index/v2/Entry;-><init>(JJLjava/lang/Integer;Lorg/fdroid/index/v2/EntryFileV2;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v2/Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v2/Entry;

    iget-wide v3, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    iget-wide v5, p1, Lorg/fdroid/index/v2/Entry;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/fdroid/index/v2/Entry;->version:J

    iget-wide v5, p1, Lorg/fdroid/index/v2/Entry;->version:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    iget-object v3, p1, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    iget-object p1, p1, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDiff(J)Lorg/fdroid/index/v2/EntryFileV2;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    .line 23
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/EntryFileV2;

    return-object p1
.end method

.method public final getDiffs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/EntryFileV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    return-object v0
.end method

.method public final getIndex()Lorg/fdroid/index/v2/EntryFileV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    return-object v0
.end method

.method public final getMaxAge()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    return-wide v0
.end method

.method public final getVersion()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/Entry;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/index/v2/Entry;->version:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/EntryFileV2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/Entry;->timestamp:J

    iget-wide v2, p0, Lorg/fdroid/index/v2/Entry;->version:J

    iget-object v4, p0, Lorg/fdroid/index/v2/Entry;->maxAge:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/fdroid/index/v2/Entry;->index:Lorg/fdroid/index/v2/EntryFileV2;

    iget-object v6, p0, Lorg/fdroid/index/v2/Entry;->diffs:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry(timestamp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxAge="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", index="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", diffs="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
