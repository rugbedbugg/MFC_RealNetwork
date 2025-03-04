.class public Lcom/bumptech/glide/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/LruCache$Entry;
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;

.field private currentSize:J

.field private final initialMaxSize:J

.field private maxSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    iput-wide p1, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:J

    iput-wide p1, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    return-void
.end method

.method private evict()V
    .locals 2

    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/util/LruCache$Entry;

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p1, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSize(Ljava/lang/Object;)I
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method protected onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    iget-wide v5, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    if-nez p2, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 140
    :cond_2
    new-instance v2, Lcom/bumptech/glide/util/LruCache$Entry;

    invoke-direct {v2, p2, v0}, Lcom/bumptech/glide/util/LruCache$Entry;-><init>(Ljava/lang/Object;I)V

    :goto_0
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/LruCache$Entry;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 142
    iget v3, v0, Lcom/bumptech/glide/util/LruCache$Entry;->size:I

    int-to-long v5, v3

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 144
    iget-object v1, v0, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 145
    iget-object p2, v0, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V

    if-eqz v0, :cond_4

    .line 150
    iget-object v4, v0, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v4

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 160
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/util/LruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 162
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 164
    iget v2, p1, Lcom/bumptech/glide/util/LruCache$Entry;->size:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 165
    iget-object p1, p1, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized trimToSize(J)V
    .locals 7

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 183
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/util/LruCache$Entry;

    iget-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 186
    iget v5, v2, Lcom/bumptech/glide/util/LruCache$Entry;->size:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 189
    iget-object v0, v2, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
