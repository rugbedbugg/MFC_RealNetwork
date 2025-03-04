.class public Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;
.super Ljava/lang/Object;
.source "PluginGeneratedSerialDescriptor.kt"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;
.implements Lkotlinx/serialization/internal/CachedNames;


# instance fields
.field private final _hashCode$delegate:Lkotlin/Lazy;

.field private added:I

.field private final childSerializers$delegate:Lkotlin/Lazy;

.field private classAnnotations:Ljava/util/List;

.field private final elementsCount:I

.field private final elementsOptionality:[Z

.field private final generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

.field private indices:Ljava/util/Map;

.field private final names:[Ljava/lang/String;

.field private final propertiesAnnotations:[Ljava/util/List;

.field private final serialName:Ljava/lang/String;

.field private final typeParameterDescriptors$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->serialName:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    iput p3, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    .line 26
    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    iget p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    .line 27
    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    .line 31
    new-array p1, p1, [Z

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    .line 34
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    .line 36
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->childSerializers$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->typeParameterDescriptors$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->_hashCode$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    return-void
.end method

.method public static final synthetic access$getGeneratedSerializer$p(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)Lkotlinx/serialization/internal/GeneratedSerializer;
    .locals 0

    .line 15
    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    return-object p0
.end method

.method public static synthetic addElement$default(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addElement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final buildIndices()Ljava/util/Map;
    .locals 5

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 87
    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 88
    aget-object v4, v4, v2

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final getChildSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->childSerializers$delegate:Lkotlin/Lazy;

    .line 36
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private final get_hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->_hashCode$delegate:Lkotlin/Lazy;

    .line 44
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final addElement(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    iget v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    .line 47
    aput-object p1, v0, v1

    iget-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    .line 48
    aput-boolean p2, p1, v1

    iget-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    const/4 p2, 0x0

    .line 49
    aput-object p2, p1, v1

    iget p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_0

    .line 51
    invoke-direct {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->buildIndices()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    .line 112
    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_2

    .line 113
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 114
    :cond_2
    check-cast p1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 94
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 116
    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_7

    .line 117
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 118
    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->classAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getElementAnnotations(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    .line 13
    aget-object p1, v0, p1

    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 76
    invoke-direct {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getChildSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 13
    aget-object p1, v0, p1

    .line 76
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    .line 83
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    :goto_0
    return p1
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 13
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getElementsCount()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    return v0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 1

    .line 22
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    return-object v0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->serialName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNames()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    .line 32
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->typeParameterDescriptors$delegate:Lkotlin/Lazy;

    .line 39
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->get_hashCode()I

    move-result v0

    return v0
.end method

.method public isElementOptional(I)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    .line 18
    aget-boolean p1, v0, p1

    return p1
.end method

.method public isInline()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;->isInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;->isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    .line 100
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    const-string v3, ", "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$toString$1;

    invoke-direct {v8, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$toString$1;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    const/16 v9, 0x18

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
