.class public final Lkotlinx/serialization/internal/LinkedHashMapSerializer;
.super Lkotlinx/serialization/internal/MapLikeSerializer;
.source "CollectionSerializers.kt"


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .locals 1

    const-string v0, "kSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/internal/MapLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 257
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->builder()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected builder()Ljava/util/LinkedHashMap;
    .locals 1

    .line 260
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    .line 252
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->builderSize(Ljava/util/LinkedHashMap;)I

    move-result p1

    return p1
.end method

.method protected builderSize(Ljava/util/LinkedHashMap;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    .line 252
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->checkCapacity(Ljava/util/LinkedHashMap;I)V

    return-void
.end method

.method protected checkCapacity(Ljava/util/LinkedHashMap;I)V
    .locals 0

    .line 0
    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    .line 252
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->collectionIterator(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method protected collectionIterator(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 252
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->collectionSize(Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method protected collectionSize(Ljava/util/Map;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->toBuilder(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method protected toBuilder(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    instance-of v0, p1, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->toResult(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected toResult(Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
