.class final Lio/ktor/client/engine/okhttp/OkHttpCallback;
.super Ljava/lang/Object;
.source "OkUtils.kt"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final continuation:Lkotlinx/coroutines/CancellableContinuation;

.field private final requestData:Lio/ktor/client/request/HttpRequestData;


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestData;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1

    const-string v0, "requestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpCallback;->requestData:Lio/ktor/client/request/HttpRequestData;

    iput-object p2, p0, Lio/ktor/client/engine/okhttp/OkHttpCallback;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpCallback;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 35
    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpCallback;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 39
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpCallback;->requestData:Lio/ktor/client/request/HttpRequestData;

    invoke-static {v0, p2}, Lio/ktor/client/engine/okhttp/OkUtilsKt;->access$mapOkHttpException(Lio/ktor/client/request/HttpRequestData;Ljava/io/IOException;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpCallback;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 44
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
