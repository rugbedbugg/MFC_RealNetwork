.class final Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;
.super Ljava/lang/Object;
.source "IndexV2DiffStreamProcessor.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndexStreamSerializer"
.end annotation


# instance fields
.field private appsProcessed:I

.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private final onAppProcessed:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

.field private final version:J


# direct methods
.method public constructor <init>(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;JLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "onAppProcessed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->version:J

    iput-object p4, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->onAppProcessed:Lkotlin/jvm/functions/Function1;

    .line 36
    sget-object p1, Lorg/fdroid/index/v2/IndexV2;->Companion:Lorg/fdroid/index/v2/IndexV2$Companion;

    invoke-virtual {p1}, Lorg/fdroid/index/v2/IndexV2$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private final diffPackages(Lkotlinx/serialization/json/JsonDecoder;I)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    .line 77
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    .line 79
    :goto_0
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->readMapEntry(Lkotlinx/serialization/encoding/CompositeDecoder;I)V

    iget v0, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->appsProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->appsProcessed:I

    iget-object v1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->onAppProcessed:Lkotlin/jvm/functions/Function1;

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final diffRepo(JLkotlinx/serialization/json/JsonDecoder;I)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "repo"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p4, v0, :cond_0

    .line 70
    invoke-interface {p3}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p3

    iget-object p4, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 71
    invoke-static {p4}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->receiveRepoDiff(JLkotlinx/serialization/json/JsonObject;)V

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readMapEntry(Lkotlinx/serialization/encoding/CompositeDecoder;I)V
    .locals 9

    .line 89
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 92
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    sget-object p2, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    .line 91
    invoke-static/range {v2 .. v8}, Lkotlinx/serialization/encoding/CompositeDecoder$DefaultImpls;->decodeSerializableElement$default(Lkotlinx/serialization/encoding/CompositeDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 94
    instance-of p2, p1, Lkotlinx/serialization/json/JsonNull;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 96
    invoke-static {p1}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->receivePackageMetadataDiff(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    const-string v2, "metadata"

    invoke-virtual {p2, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 101
    instance-of v2, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz v2, :cond_1

    iget-object p2, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 103
    invoke-static {p2}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->receivePackageMetadataDiff(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v2, p2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 106
    invoke-static {v2}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object v2

    check-cast p2, Lkotlinx/serialization/json/JsonObject;

    invoke-interface {v2, v0, p2}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->receivePackageMetadataDiff(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    .line 109
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    const-string v2, "versions"

    invoke-virtual {p2, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 111
    invoke-static {p1}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->receiveVersionsDiff(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 113
    :cond_3
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 453
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 403
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1239
    check-cast v2, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lkotlinx/serialization/json/JsonNull;

    if-eqz v4, :cond_4

    move-object v2, v1

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    .line 1239
    :goto_2
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object v1, p2

    :cond_6
    if-eqz v1, :cond_7

    iget-object p1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 118
    invoke-static {p1}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->receiveVersionsDiff(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v2/IndexV2;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v2/IndexV2;
    .locals 6

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 42
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v2, "repo"

    invoke-interface {v0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const-string v3, "packages"

    invoke-interface {v2, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v2

    .line 46
    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-wide v4, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->version:J

    .line 48
    invoke-direct {p0, v4, v5, p1, v3}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->diffRepo(JLkotlinx/serialization/json/JsonDecoder;I)V

    .line 49
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 50
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->diffPackages(Lkotlinx/serialization/json/JsonDecoder;I)V

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_4

    .line 53
    invoke-direct {p0, p1, v3}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->diffPackages(Lkotlinx/serialization/json/JsonDecoder;I)V

    .line 54
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-wide v3, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->version:J

    .line 55
    invoke-direct {p0, v3, v4, p1, v2}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->diffRepo(JLkotlinx/serialization/json/JsonDecoder;I)V

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget-object p1, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    .line 64
    invoke-static {p1}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;)Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;->onStreamEnded()V

    return-object v1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected startIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can be deserialized only by JSON"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/fdroid/index/v2/IndexV2;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor$IndexStreamSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v2/IndexV2;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v2/IndexV2;)V
    .locals 0

    const-string p2, "encoder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented"

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
