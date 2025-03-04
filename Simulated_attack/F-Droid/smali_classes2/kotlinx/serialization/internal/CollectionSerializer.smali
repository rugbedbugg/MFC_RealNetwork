.class public abstract Lkotlinx/serialization/internal/CollectionSerializer;
.super Lkotlinx/serialization/internal/CollectionLikeSerializer;
.source "CollectionSerializers.kt"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/CollectionLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    .line 205
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/CollectionSerializer;->collectionIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method protected collectionIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 205
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/CollectionSerializer;->collectionSize(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method protected collectionSize(Ljava/util/Collection;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method
