.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z

.field private final mCloseables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .locals 1

    .line 250
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 162
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 163
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method final clear()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 186
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 187
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 191
    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 195
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 196
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 197
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    .line 199
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_5

    .line 199
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 202
    :cond_3
    :goto_5
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method getTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 245
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onCleared()V
    .locals 0

    .line 0
    return-void
.end method

.method setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 220
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 221
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 223
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 225
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    iget-boolean p1, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    if-eqz p1, :cond_2

    .line 231
    invoke-static {p2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    :cond_2
    return-object p2

    .line 225
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
