.class public final Landroidx/compose/runtime/collection/IdentityArraySet;
.super Ljava/lang/Object;
.source "IdentityArraySet.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private size:I

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/runtime/collection/IdentityArraySet;I)V
    .locals 0

    .line 27
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    return-void
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 7

    .line 295
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 296
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/lit8 v4, v4, 0x1

    .line 301
    aget-object v5, v2, v4

    .line 302
    invoke-static {v5}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v1, :cond_0

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_0
    if-le v6, v1, :cond_1

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_1
    if-ne v5, p1, :cond_2

    return v4

    .line 307
    :cond_2
    invoke-direct {p0, v4, p1, v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->findExactIndex(ILjava/lang/Object;I)I

    move-result p1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    neg-int p1, v3

    return p1
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 326
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_2

    .line 330
    aget-object v3, v0, v2

    if-ne v3, p2, :cond_0

    return v2

    .line 334
    :cond_0
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_4

    .line 340
    aget-object v2, v0, p1

    if-ne v2, p2, :cond_3

    return p1

    .line 344
    :cond_3
    invoke-static {v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    return p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    if-lez v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->find(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v2, -0x1

    :cond_1
    const/4 v8, 0x1

    add-int/2addr v2, v8

    neg-int v9, v2

    .line 70
    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 71
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v10, v2, [Ljava/lang/Object;

    add-int/lit8 v2, v9, 0x1

    .line 72
    invoke-static {v1, v10, v2, v9, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v10

    move v5, v9

    .line 78
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    iput-object v10, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v9, 0x1

    .line 84
    invoke-static {v1, v1, v2, v9, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 91
    aput-object p1, v0, v9

    .line 92
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result p1

    add-int/2addr p1, v8

    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    return v8
.end method

.method public final addAll(Ljava/util/Collection;)V
    .locals 14

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    instance-of v0, p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    if-nez v0, :cond_1

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 127
    check-cast p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object v1, p1, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v2

    .line 129
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result p1

    add-int v3, v2, p1

    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 132
    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v3, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v2, :cond_4

    add-int/lit8 v7, v2, -0x1

    .line 134
    aget-object v7, v0, v7

    invoke-static {v7}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    aget-object v8, v1, v5

    invoke-static {v8}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    if-ge v7, v8, :cond_3

    goto :goto_2

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v6

    :goto_3
    if-nez v4, :cond_5

    if-eqz v7, :cond_5

    .line 138
    invoke-static {v1, v0, v2, v5, p1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    goto :goto_7

    :cond_5
    if-eqz v4, :cond_7

    if-le v2, p1, :cond_6

    mul-int/lit8 v4, v2, 0x2

    goto :goto_4

    :cond_6
    mul-int/lit8 v4, p1, 0x2

    .line 148
    :goto_4
    new-array v4, v4, [Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object v4, v0

    :goto_5
    sub-int/2addr v2, v6

    sub-int/2addr p1, v6

    add-int/lit8 v7, v3, -0x1

    :goto_6
    if-gez v2, :cond_b

    if-ltz p1, :cond_8

    goto :goto_8

    :cond_8
    if-ltz v7, :cond_9

    add-int/lit8 p1, v7, 0x1

    .line 214
    invoke-static {v4, v4, v5, p1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_9
    add-int/2addr v7, v6

    sub-int p1, v3, v7

    const/4 v0, 0x0

    .line 223
    invoke-static {v4, v0, p1, v3}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v4, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    :cond_a
    :goto_7
    return-void

    :cond_b
    :goto_8
    if-gez v2, :cond_c

    add-int/lit8 v8, p1, -0x1

    .line 157
    aget-object p1, v1, p1

    goto :goto_b

    :cond_c
    if-gez p1, :cond_d

    add-int/lit8 v8, v2, -0x1

    .line 158
    aget-object v2, v0, v2

    move v13, v8

    move v8, p1

    move-object p1, v2

    move v2, v13

    goto :goto_b

    .line 160
    :cond_d
    aget-object v8, v0, v2

    .line 161
    aget-object v9, v1, p1

    .line 163
    invoke-static {v8}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 164
    invoke-static {v9}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    if-le v10, v11, :cond_e

    add-int/lit8 v2, v2, -0x1

    :goto_9
    move-object v13, v8

    move v8, p1

    move-object p1, v13

    goto :goto_b

    :cond_e
    if-ge v10, v11, :cond_10

    :cond_f
    add-int/lit8 p1, p1, -0x1

    move v8, p1

    move-object p1, v9

    goto :goto_b

    :cond_10
    if-ne v8, v9, :cond_11

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v8, v2, -0x1

    :goto_a
    if-ltz v8, :cond_f

    add-int/lit8 v10, v8, -0x1

    .line 185
    aget-object v8, v0, v8

    .line 186
    invoke-static {v8}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, v11, :cond_f

    if-ne v9, v8, :cond_12

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_12
    move v8, v10

    goto :goto_a

    :goto_b
    add-int/lit8 v9, v7, -0x1

    .line 209
    aput-object p1, v4, v7

    move p1, v8

    move v7, v9

    goto :goto_6
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 100
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->find(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    check-cast p1, Ljava/lang/Iterable;

    .line 1726
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 366
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSize()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    return v0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 372
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet$iterator$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/IdentityArraySet$iterator$1;-><init>(Landroidx/compose/runtime/collection/IdentityArraySet;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->find(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 247
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v2

    if-ltz p1, :cond_2

    add-int/lit8 v0, v2, -0x1

    if-ge p1, v0, :cond_1

    add-int/lit8 v3, p1, 0x1

    .line 251
    invoke-static {v1, v1, p1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 258
    aput-object p1, v1, v0

    .line 259
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
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

.method public final bridge size()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getSize()I

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
    .locals 9

    const/4 v1, 0x0

    const-string v2, "["

    const-string v3, "]"

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/runtime/collection/IdentityArraySet$toString$1;->INSTANCE:Landroidx/compose/runtime/collection/IdentityArraySet$toString$1;

    const/16 v7, 0x19

    const/4 v8, 0x0

    move-object v0, p0

    .line 379
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
