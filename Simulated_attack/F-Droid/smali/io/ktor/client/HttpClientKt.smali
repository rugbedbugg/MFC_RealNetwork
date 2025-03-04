.class public abstract Lio/ktor/client/HttpClientKt;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# direct methods
.method public static final HttpClient(Lio/ktor/client/engine/HttpClientEngineFactory;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;
    .locals 2

    const-string v0, "engineFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lio/ktor/client/HttpClientConfig;

    invoke-direct {v0}, Lio/ktor/client/HttpClientConfig;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v0}, Lio/ktor/client/HttpClientConfig;->getEngineConfig$ktor_client_core()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/ktor/client/engine/HttpClientEngineFactory;->create(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;

    move-result-object p0

    .line 43
    new-instance p1, Lio/ktor/client/HttpClient;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lio/ktor/client/HttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;Z)V

    .line 47
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/Job;

    new-instance v1, Lio/ktor/client/HttpClientKt$HttpClient$2;

    invoke-direct {v1, p0}, Lio/ktor/client/HttpClientKt$HttpClient$2;-><init>(Lio/ktor/client/engine/HttpClientEngine;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object p1
.end method
