.class public abstract Lio/ktor/util/StringValuesKt;
.super Ljava/lang/Object;
.source "StringValues.kt"


# direct methods
.method public static final synthetic access$entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/util/StringValuesKt;->entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$entriesHashCode(Ljava/util/Set;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/util/StringValuesKt;->entriesHashCode(Ljava/util/Set;I)I

    move-result p0

    return p0
.end method

.method public static final appendAll(Lio/ktor/util/StringValuesBuilder;Lio/ktor/util/StringValuesBuilder;)Lio/ktor/util/StringValuesBuilder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {p1}, Lio/ktor/util/StringValuesBuilder;->entries()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 395
    invoke-interface {p0, v1, v0}, Lio/ktor/util/StringValuesBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static final entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 0

    .line 416
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final entriesHashCode(Ljava/util/Set;I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x1f

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
