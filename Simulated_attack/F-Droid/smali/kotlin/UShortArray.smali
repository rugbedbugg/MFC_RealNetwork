.class public final Lkotlin/UShortArray;
.super Ljava/lang/Object;
.source "UShortArray.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UShortArray$Iterator;
    }
.end annotation


# instance fields
.field private final storage:[S


# direct methods
.method private synthetic constructor <init>([S)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UShortArray;->storage:[S

    return-void
.end method

.method public static final synthetic box-impl([S)Lkotlin/UShortArray;
    .locals 1

    .line 0
    new-instance v0, Lkotlin/UShortArray;

    invoke-direct {v0, p0}, Lkotlin/UShortArray;-><init>([S)V

    return-object v0
.end method

.method public static constructor-impl(I)[S
    .locals 0

    .line 20
    new-array p0, p0, [S

    invoke-static {p0}, Lkotlin/UShortArray;->constructor-impl([S)[S

    move-result-object p0

    return-object p0
.end method

.method public static constructor-impl([S)[S
    .locals 1

    .line 0
    const-string v0, "storage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static contains-xj2QHRw([SS)Z
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->contains([SS)Z

    move-result p0

    return p0
.end method

.method public static containsAll-impl([SLjava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    check-cast p1, Ljava/lang/Iterable;

    .line 1726
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1727
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 62
    instance-of v2, v0, Lkotlin/UShort;

    if-eqz v2, :cond_1

    check-cast v0, Lkotlin/UShort;

    invoke-virtual {v0}, Lkotlin/UShort;->unbox-impl()S

    move-result v0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->contains([SS)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public static equals-impl([SLjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lkotlin/UShortArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlin/UShortArray;

    invoke-virtual {p1}, Lkotlin/UShortArray;->unbox-impl()[S

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final get-Mh2AYeg([SI)S
    .locals 0

    .line 28
    aget-short p0, p0, p1

    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    return p0
.end method

.method public static getSize-impl([S)I
    .locals 0

    .line 41
    array-length p0, p0

    return p0
.end method

.method public static hashCode-impl([S)I
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result p0

    return p0
.end method

.method public static isEmpty-impl([S)Z
    .locals 0

    .line 65
    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static iterator-impl([S)Ljava/util/Iterator;
    .locals 1

    .line 44
    new-instance v0, Lkotlin/UShortArray$Iterator;

    invoke-direct {v0, p0}, Lkotlin/UShortArray$Iterator;-><init>([S)V

    return-object v0
.end method

.method public static final set-01HTLdE([SIS)V
    .locals 0

    .line 37
    aput-short p2, p0, p1

    return-void
.end method

.method public static toString-impl([S)Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UShortArray(storage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Lkotlin/UShort;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lkotlin/UShort;

    invoke-virtual {p1}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/UShortArray;->contains-xj2QHRw(S)Z

    move-result p1

    return p1
.end method

.method public contains-xj2QHRw(S)Z
    .locals 1

    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    .line 52
    invoke-static {v0, p1}, Lkotlin/UShortArray;->contains-xj2QHRw([SS)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    .line 61
    invoke-static {v0, p1}, Lkotlin/UShortArray;->containsAll-impl([SLjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    invoke-static {v0, p1}, Lkotlin/UShortArray;->equals-impl([SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    .line 41
    invoke-static {v0}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    invoke-static {v0}, Lkotlin/UShortArray;->hashCode-impl([S)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    .line 65
    invoke-static {v0}, Lkotlin/UShortArray;->isEmpty-impl([S)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    .line 44
    invoke-static {v0}, Lkotlin/UShortArray;->iterator-impl([S)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 12
    invoke-virtual {p0}, Lkotlin/UShortArray;->getSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    invoke-static {v0}, Lkotlin/UShortArray;->toString-impl([S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()[S
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/UShortArray;->storage:[S

    return-object v0
.end method
