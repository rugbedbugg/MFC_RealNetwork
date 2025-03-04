.class public abstract Lio/ktor/client/engine/HttpClientEngineBase_jvmKt;
.super Ljava/lang/Object;
.source "HttpClientEngineBase.jvm.kt"


# direct methods
.method public static final ioDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
