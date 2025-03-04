.class public final Lio/ktor/util/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "Cache.kt"


# instance fields
.field private final close:Lkotlin/jvm/functions/Function1;

.field private final maxSize:I

.field private final supplier:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 3

    const-string v0, "supplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "close"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0xa

    .line 33
    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lio/ktor/util/LRUCache;->supplier:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/ktor/util/LRUCache;->close:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lio/ktor/util/LRUCache;->maxSize:I

    return-void
.end method


# virtual methods
.method public final bridge entrySet()Ljava/util/Set;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/ktor/util/LRUCache;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lio/ktor/util/LRUCache;->maxSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/ktor/util/LRUCache;->supplier:Lkotlin/jvm/functions/Function1;

    .line 45
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    monitor-enter p0

    .line 48
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/ktor/util/LRUCache;->supplier:Lkotlin/jvm/functions/Function1;

    .line 50
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    move-object p1, v0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1

    .line 29
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1

    .line 29
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 29
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1

    .line 29
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/ktor/util/LRUCache;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    const-string v0, "eldest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lio/ktor/util/LRUCache;->size()I

    move-result v0

    iget v1, p0, Lio/ktor/util/LRUCache;->maxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/ktor/util/LRUCache;->close:Lkotlin/jvm/functions/Function1;

    .line 38
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/ktor/util/LRUCache;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/ktor/util/LRUCache;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
