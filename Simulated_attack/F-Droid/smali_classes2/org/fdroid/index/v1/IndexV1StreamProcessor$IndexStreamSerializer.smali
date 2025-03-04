.class final Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;
.super Ljava/lang/Object;
.source "IndexV1StreamProcessor.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/index/v1/IndexV1StreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndexStreamSerializer"
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field final synthetic this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;


# direct methods
.method public constructor <init>(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object p1, Lorg/fdroid/index/v1/IndexV1;->Companion:Lorg/fdroid/index/v1/IndexV1$Companion;

    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private final deserializeApps(Lkotlinx/serialization/json/JsonDecoder;I)Ljava/util/Map;
    .locals 10

    .line 110
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "apps"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    .line 113
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    .line 115
    :goto_0
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_3

    .line 118
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    sget-object v2, Lorg/fdroid/index/v1/AppV1;->Companion:Lorg/fdroid/index/v1/AppV1$Companion;

    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lkotlinx/serialization/encoding/CompositeDecoder$DefaultImpls;->decodeSerializableElement$default(Lkotlinx/serialization/encoding/CompositeDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v1/AppV1;

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 119
    invoke-static {v3}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getLocale$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/fdroid/index/v1/AppV1;->toMetadataV2(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v3

    iget-object v5, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 120
    invoke-static {v5}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    move-result-object v5

    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lorg/fdroid/index/v1/IndexV1StreamReceiver;->receive(Ljava/lang/String;Lorg/fdroid/index/v2/MetadataV2;)V

    .line 121
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1;->getAntiFeatures()Ljava/util/List;

    move-result-object v5

    .line 1271
    new-instance v6, Ljava/util/LinkedHashMap;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1285
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1286
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 122
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 1286
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1;->getLocalized()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v7, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer$deserializeApps$2;->INSTANCE:Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer$deserializeApps$2;

    invoke-static {v5, v7}, Lorg/fdroid/index/IndexConverterKt;->mapValuesNotNull(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v4

    .line 124
    :goto_2
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1;->getSuggestedVersionCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 125
    :cond_2
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppV1;->getCategories()Ljava/util/List;

    move-result-object v2

    .line 121
    new-instance v7, Lorg/fdroid/index/v1/AppData;

    invoke-direct {v7, v6, v5, v4, v2}, Lorg/fdroid/index/v1/AppData;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    :cond_3
    invoke-interface {v1, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v0

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final deserializePackages(Lkotlinx/serialization/json/JsonDecoder;ILjava/util/Map;)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    .line 139
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    .line 141
    :goto_0
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.json.JsonDecoder"

    .line 144
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/serialization/json/JsonDecoder;

    .line 143
    invoke-direct {p0, v1, v0, p3}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->readPackageMapEntry(Lkotlinx/serialization/json/JsonDecoder;ILjava/util/Map;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final deserializeRepo(Lkotlinx/serialization/json/JsonDecoder;I)V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "repo"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 89
    sget-object p2, Lorg/fdroid/index/v1/RepoV1;->Companion:Lorg/fdroid/index/v1/RepoV1$Companion;

    invoke-virtual {p2}, Lorg/fdroid/index/v1/RepoV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v1/RepoV1;

    iget-object p2, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 90
    invoke-static {p2}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getLastTimestamp$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/fdroid/index/v1/RepoV1;->getTimestamp()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    .line 91
    new-instance p2, Lorg/fdroid/index/v1/OldIndexException;

    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    invoke-static {v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getLastTimestamp$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/fdroid/index/v1/RepoV1;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-virtual {p1}, Lorg/fdroid/index/v1/RepoV1;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fdroid/index/v1/RepoV1;->getTimestamp()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old repo "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-direct {p2, v0, p1}, Lorg/fdroid/index/v1/OldIndexException;-><init>(ZLjava/lang/String;)V

    throw p2

    .line 96
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 97
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 98
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "en-US"

    .line 94
    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/fdroid/index/v1/RepoV1;->toRepoV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/RepoV2;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 100
    invoke-static {v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/index/v1/RepoV1;->getVersion()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, p2, v1, v2}, Lorg/fdroid/index/v1/IndexV1StreamReceiver;->receive(Lorg/fdroid/index/v2/RepoV2;J)V

    return-void

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final deserializeRequests(Lkotlinx/serialization/json/JsonDecoder;I)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "requests"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 105
    sget-object p2, Lorg/fdroid/index/v1/Requests;->Companion:Lorg/fdroid/index/v1/Requests$Companion;

    invoke-virtual {p2}, Lorg/fdroid/index/v1/Requests$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readPackageMapEntry(Lkotlinx/serialization/json/JsonDecoder;ILjava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v8, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v8, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 159
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 161
    sget-object v1, Lorg/fdroid/index/v1/PackageV1;->Companion:Lorg/fdroid/index/v1/PackageV1$Companion;

    invoke-virtual {v1}, Lorg/fdroid/index/v1/PackageV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ListSerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v13

    .line 162
    invoke-interface {v8, v13}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v14

    const/4 v15, 0x1

    move/from16 v16, v15

    .line 165
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v14, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    add-int/lit8 v3, v9, 0x1

    sget-object v1, Lorg/fdroid/index/v1/PackageV1;->Companion:Lorg/fdroid/index/v1/PackageV1$Companion;

    invoke-virtual {v1}, Lorg/fdroid/index/v1/PackageV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v1, p1

    .line 167
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/CompositeDecoder$DefaultImpls;->decodeSerializableElement$default(Lkotlinx/serialization/encoding/CompositeDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v1/PackageV1;

    .line 170
    invoke-virtual {v1}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    move-wide v5, v3

    .line 172
    :goto_1
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v1/AppData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppData;->getSuggestedVersionCode()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_1
    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    const-string v2, "Beta"

    .line 174
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 177
    :goto_2
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/fdroid/index/v1/AppData;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/fdroid/index/v1/AppData;->getAntiFeatures()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    :cond_4
    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 179
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/index/v1/AppData;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/fdroid/index/v1/AppData;->getWhatsNew()Ljava/util/Map;

    move-result-object v4

    .line 175
    :cond_5
    invoke-virtual {v1, v2, v7, v4}, Lorg/fdroid/index/v1/PackageV1;->toPackageVersionV2(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/PackageVersionV2;

    move-result-object v2

    if-eqz v16, :cond_6

    iget-object v3, v0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 183
    invoke-static {v3}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    move-result-object v3

    invoke-virtual {v1}, Lorg/fdroid/index/v1/PackageV1;->getSigner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v11, v1}, Lorg/fdroid/index/v1/IndexV1StreamReceiver;->updateAppMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_6
    invoke-virtual {v2}, Lorg/fdroid/index/v2/PackageVersionV2;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSha256()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 189
    invoke-static {v1}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    move-result-object v1

    invoke-interface {v1, v11, v12}, Lorg/fdroid/index/v1/IndexV1StreamReceiver;->receive(Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method private final updateRepoData(Ljava/util/Map;)V
    .locals 4

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v1/AppData;

    .line 197
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppData;->getAntiFeatures()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/fdroid/index/IndexConverterKt;->mapInto(Ljava/util/Map;Ljava/util/HashMap;)V

    .line 198
    invoke-virtual {v2}, Lorg/fdroid/index/v1/AppData;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/fdroid/index/IndexConverterKt;->mapInto(Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Lorg/fdroid/index/IndexConverterKt;->getV1ReleaseChannels()Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    .line 201
    invoke-static {v2}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lorg/fdroid/index/v1/IndexV1StreamReceiver;->updateRepo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v1/IndexV1;
    .locals 4

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 58
    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->deserializeRepo(Lkotlinx/serialization/json/JsonDecoder;I)V

    .line 60
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 62
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->updateRepoData(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v1

    .line 66
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->deserializeRequests(Lkotlinx/serialization/json/JsonDecoder;I)V

    .line 67
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 69
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->updateRepoData(Ljava/util/Map;)V

    .line 70
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v1

    .line 73
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->deserializeApps(Lkotlinx/serialization/json/JsonDecoder;I)Ljava/util/Map;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 76
    invoke-direct {p0, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->updateRepoData(Ljava/util/Map;)V

    .line 77
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v1

    .line 80
    :cond_3
    invoke-direct {p0, p1, v3, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->deserializePackages(Lkotlinx/serialization/json/JsonDecoder;ILjava/util/Map;)V

    .line 81
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 83
    invoke-direct {p0, v0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->updateRepoData(Ljava/util/Map;)V

    return-object v1

    .line 55
    :cond_4
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
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Lorg/fdroid/index/v1/IndexV1;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v1/IndexV1;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v1/IndexV1;)V
    .locals 0

    const-string p2, "encoder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented"

    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
