.class Lkotlinx/serialization/json/internal/JsonTreeDecoder;
.super Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
.source "TreeJsonDecoder.kt"


# instance fields
.field private forceNull:Z

.field private final polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private final polyDiscriminator:Ljava/lang/String;

.field private position:I

.field private final value:Lkotlinx/serialization/json/JsonObject;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDiscriminator:Ljava/lang/String;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 184
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method private final absenceIsNull(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 1

    .line 218
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getExplicitNulls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->forceNull:Z

    return p1
.end method

.method private final coerceInputValue(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z
    .locals 4

    .line 196
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 197
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 198
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p2

    sget-object v2, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 199
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    instance-of p3, p2, Lkotlinx/serialization/json/JsonPrimitive;

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    goto :goto_1

    .line 78
    :cond_4
    invoke-static {p1, v0, v3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_3

    :goto_1
    return v1
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    .line 204
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    .line 205
    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->forceNull:Z

    .line 208
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->absenceIsNull(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 209
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getCoerceInputValues()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->coerceInputValue(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return v1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public decodeNotNullMark()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->forceNull:Z

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected elementName(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 4

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 229
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->getUseAlternativeNames()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonSchemaCacheKt;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonAlternativeNamesKey()Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    move-result-object v2

    new-instance v3, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;

    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->getOrPut(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 237
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 253
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 257
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseAlternativeNames()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-static {p1}, Lkotlinx/serialization/internal/JsonInternalDependenciesKt;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 260
    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/internal/JsonInternalDependenciesKt;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonSchemaCacheKt;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonAlternativeNamesKey()Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->get(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 262
    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDiscriminator:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 264
    :cond_5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->UnknownKeyException(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method
