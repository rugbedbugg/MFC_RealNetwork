.class public abstract Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.super Lkotlinx/serialization/internal/CollectionLikeSerializer;
.source "CollectionSerializers.kt"


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/CollectionLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    new-instance v0, Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->builder()Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final builder()Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->empty()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->toBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    return-object v0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    .line 142
    check-cast p1, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->builderSize(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)I

    move-result p1

    return p1
.end method

.method protected final builderSize(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result p1

    return p1
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    .line 142
    check-cast p1, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->checkCapacity(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;I)V

    return-void
.end method

.method protected final checkCapacity(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method

.method protected final collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This method lead to boxing and must not be used, use writeContents instead"

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->merge(Lkotlinx/serialization/encoding/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract empty()Ljava/lang/Object;
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->insert(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;ILjava/lang/Object;)V

    return-void
.end method

.method protected final insert(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This method lead to boxing and must not be used, use Builder.append instead"

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->collectionSize(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 488
    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginCollection(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V

    .line 490
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->toResult(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final toResult(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->build$kotlinx_serialization_core()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
.end method
