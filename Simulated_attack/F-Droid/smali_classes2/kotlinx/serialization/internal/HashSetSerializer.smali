.class public final Lkotlinx/serialization/internal/HashSetSerializer;
.super Lkotlinx/serialization/internal/CollectionSerializer;
.source "CollectionSerializers.kt"


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1

    const-string v0, "eSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/CollectionSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 242
    new-instance v0, Lkotlinx/serialization/internal/HashSetClassDesc;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/HashSetClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/HashSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lkotlinx/serialization/internal/HashSetSerializer;->builder()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method protected builder()Ljava/util/HashSet;
    .locals 1

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    .line 238
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->builderSize(Ljava/util/HashSet;)I

    move-result p1

    return p1
.end method

.method protected builderSize(Ljava/util/HashSet;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    .line 238
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/HashSetSerializer;->checkCapacity(Ljava/util/HashSet;I)V

    return-void
.end method

.method protected checkCapacity(Ljava/util/HashSet;I)V
    .locals 0

    .line 0
    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/internal/HashSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 238
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/HashSetSerializer;->insert(Ljava/util/HashSet;ILjava/lang/Object;)V

    return-void
.end method

.method protected insert(Ljava/util/HashSet;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 238
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->toBuilder(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method protected toBuilder(Ljava/util/Set;)Ljava/util/HashSet;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    instance-of v0, p1, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 238
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->toResult(Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected toResult(Ljava/util/HashSet;)Ljava/util/Set;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
