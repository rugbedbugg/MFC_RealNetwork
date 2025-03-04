.class public abstract synthetic Lio/reactivex/rxjava3/disposables/Disposable$-CC;
.super Ljava/lang/Object;
.source "Disposable.java"


# direct methods
.method public static disposed()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 159
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static empty()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 149
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    const-string v0, "run is null"

    .line 50
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lio/reactivex/rxjava3/disposables/RunnableDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
