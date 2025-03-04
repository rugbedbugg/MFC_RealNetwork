.class public abstract Lkotlinx/coroutines/ExecutorsKt;
.super Ljava/lang/Object;
.source "Executors.kt"


# direct methods
.method public static final from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 100
    new-instance v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
