.class public final Landroidx/compose/ui/text/caches/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.kt"


# instance fields
.field private _size:I

.field private hashes:[I

.field private keyValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 142
    sget-object p1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 143
    sget-object p1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    shl-int/lit8 p1, p1, 0x1

    .line 146
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 549
    :try_start_0
    instance-of v2, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;

    if-eqz v2, :cond_6

    .line 550
    check-cast p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;

    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    .line 551
    iget v3, p1, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    .line 556
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 557
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 559
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-nez v6, :cond_2

    .line 561
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    return v1

    .line 564
    :cond_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0

    .line 569
    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_c

    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    .line 571
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_b

    .line 575
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 576
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 577
    move-object v6, p1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    if-nez v6, :cond_8

    .line 579
    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_8
    return v1

    .line 582
    :cond_9
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_a

    return v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    return v0

    :catch_0
    :cond_c
    return v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 251
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 252
    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    .line 605
    aget-object v7, v1, v4

    .line 606
    aget v8, v0, v5

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    return v6
.end method

.method protected final indexOf(Ljava/lang/Object;I)I
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 61
    invoke-static {v1, v0, p2}, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->binarySearchInternal([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 69
    aget-object v2, v2, v3

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 76
    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    .line 77
    aget-object v3, v3, v4

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 83
    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 84
    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p1, v2

    return p1
.end method

.method public final indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfNull()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected final indexOfNull()I
    .locals 5

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    const/4 v2, 0x0

    .line 102
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->binarySearchInternal([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 110
    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 117
    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    .line 118
    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 124
    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 125
    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int v0, v2

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    .line 274
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-nez p1, :cond_0

    .line 320
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOfNull()I

    move-result v1

    const/4 v2, 0x0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 323
    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    .line 327
    aget-object v1, v0, p1

    .line 328
    aput-object p2, v0, p1

    return-object v1

    :cond_1
    not-int v1, v1

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 333
    array-length v4, v3

    if-lt v0, v4, :cond_5

    const/16 v4, 0x8

    if-lt v0, v4, :cond_2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    if-lt v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    .line 342
    :goto_1
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    .line 343
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-ne v0, v3, :cond_4

    goto :goto_2

    .line 346
    :cond_4
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    add-int/lit8 v4, v1, 0x1

    .line 354
    invoke-static {v3, v3, v4, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iget-object v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v1, 0x1

    iget v6, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    shl-int/lit8 v6, v6, 0x1

    .line 355
    invoke-static {v3, v3, v4, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_6
    iget v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    .line 359
    array-length v4, v0

    if-ge v1, v4, :cond_7

    .line 364
    aput v2, v0, v1

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    .line 365
    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 366
    aput-object p2, v0, v1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 p1, 0x0

    return-object p1

    .line 360
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 621
    invoke-virtual {p0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    if-lez v2, :cond_1

    const-string v3, ", "

    .line 629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(this Map)"

    if-eq v3, p0, :cond_2

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 635
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x3d

    .line 637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_3

    .line 640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 642
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffer.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 282
    aget-object p1, v0, p1

    return-object p1
.end method
