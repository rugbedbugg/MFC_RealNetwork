.class public final Lio/reactivex/rxjava3/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lio/reactivex/rxjava3/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .locals 1

    const-string v0, "disposable is null"

    .line 99
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_2

    .line 101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/OpenHashSet;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 113
    :cond_2
    :goto_2
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .locals 2

    const-string v0, "disposable is null"

    .line 173
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 179
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 184
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 186
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose(Lio/reactivex/rxjava3/internal/util/OpenHashSet;)V

    return-void

    .line 80
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispose(Lio/reactivex/rxjava3/internal/util/OpenHashSet;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object p1

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 239
    instance-of v5, v4, Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v5, :cond_2

    .line 241
    :try_start_0
    check-cast v4, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 243
    invoke-static {v4}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v2, :cond_1

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 252
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 253
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 255
    :cond_4
    new-instance p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-direct {p1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_5
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .locals 1

    .line 157
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
