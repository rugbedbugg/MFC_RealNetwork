.class public abstract Lio/reactivex/rxjava3/core/Completable;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "action is null"

    .line 555
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 556
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Lio/reactivex/rxjava3/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0
.end method

.method private static toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "scheduler is null"

    .line 2239
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2240
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;-><init>(Lio/reactivex/rxjava3/core/CompletableSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorComplete(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "predicate is null"

    .line 2279
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2281
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;-><init>(Lio/reactivex/rxjava3/core/CompletableSource;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 2845
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;-><init>()V

    .line 2846
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 1

    const-string v0, "observer is null"

    .line 2853
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2856
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/core/Completable;Lio/reactivex/rxjava3/core/CompletableObserver;)Lio/reactivex/rxjava3/core/CompletableObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 2858
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2860
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Completable;->subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 2864
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2865
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 2866
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    .line 2862
    :goto_1
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "scheduler is null"

    .line 3020
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3022
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/CompletableSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method
