.class public abstract Lio/ktor/client/engine/okhttp/OkUtilsKt;
.super Ljava/lang/Object;
.source "OkUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/engine/okhttp/OkUtilsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final synthetic access$mapOkHttpException(Lio/ktor/client/request/HttpRequestData;Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/engine/okhttp/OkUtilsKt;->mapOkHttpException(Lio/ktor/client/request/HttpRequestData;Ljava/io/IOException;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final execute(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 315
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 21
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 23
    new-instance p1, Lio/ktor/client/engine/okhttp/OkHttpCallback;

    invoke-direct {p1, p2, v0}, Lio/ktor/client/engine/okhttp/OkHttpCallback;-><init>(Lio/ktor/client/request/HttpRequestData;Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 25
    new-instance p1, Lio/ktor/client/engine/okhttp/OkUtilsKt$execute$2$1;

    invoke-direct {p1, p0}, Lio/ktor/client/engine/okhttp/OkUtilsKt$execute$2$1;-><init>(Lokhttp3/Call;)V

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 323
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final fromOkHttp(Lokhttp3/Headers;)Lio/ktor/http/Headers;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lio/ktor/client/engine/okhttp/OkUtilsKt$fromOkHttp$1;

    invoke-direct {v0, p0}, Lio/ktor/client/engine/okhttp/OkUtilsKt$fromOkHttp$1;-><init>(Lokhttp3/Headers;)V

    return-object v0
.end method

.method public static final fromOkHttp(Lokhttp3/Protocol;)Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lio/ktor/client/engine/okhttp/OkUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 68
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getQUIC()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object p0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_2_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_0

    .line 66
    :pswitch_2
    sget-object p0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_2_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_0

    .line 65
    :pswitch_3
    sget-object p0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getSPDY_3()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_0

    .line 64
    :pswitch_4
    sget-object p0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_0

    .line 63
    :pswitch_5
    sget-object p0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final isConnectException(Ljava/io/IOException;)Z
    .locals 3

    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "connect"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-ne p0, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private static final mapOkHttpException(Lio/ktor/client/request/HttpRequestData;Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 1

    .line 75
    instance-of v0, p1, Lio/ktor/client/engine/okhttp/StreamAdapterIOException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, p0

    goto :goto_1

    .line 76
    :cond_1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    .line 77
    invoke-static {p1}, Lio/ktor/client/engine/okhttp/OkUtilsKt;->isConnectException(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-static {p0, p1}, Lio/ktor/client/plugins/HttpTimeoutKt;->ConnectTimeoutException(Lio/ktor/client/request/HttpRequestData;Ljava/lang/Throwable;)Lio/ktor/client/network/sockets/ConnectTimeoutException;

    move-result-object p0

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p0, p1}, Lio/ktor/client/plugins/HttpTimeoutKt;->SocketTimeoutException(Lio/ktor/client/request/HttpRequestData;Ljava/lang/Throwable;)Lio/ktor/client/network/sockets/SocketTimeoutException;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method
