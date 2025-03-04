.class public final Lio/ktor/client/engine/okhttp/OkHttpEngine;
.super Lio/ktor/client/engine/HttpClientEngineBase;
.source "OkHttpEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;

.field private static final okHttpClientPrototype$delegate:Lkotlin/Lazy;


# instance fields
.field private final clientCache:Ljava/util/Map;

.field private final config:Lio/ktor/client/engine/okhttp/OkHttpConfig;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final requestsJob:Lkotlin/coroutines/CoroutineContext;

.field private final supportedCapabilities:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->Companion:Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;

    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;

    .line 130
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->okHttpClientPrototype$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ktor-okhttp"

    .line 28
    invoke-direct {p0, v0}, Lio/ktor/client/engine/HttpClientEngineBase;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->config:Lio/ktor/client/engine/okhttp/OkHttpConfig;

    const/4 p1, 0x2

    new-array p1, p1, [Lio/ktor/client/engine/HttpClientEngineCapability;

    const/4 v0, 0x0

    .line 31
    sget-object v1, Lio/ktor/client/plugins/HttpTimeout;->Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lio/ktor/client/plugins/websocket/WebSocketCapability;->INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketCapability;

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->supportedCapabilities:Ljava/util/Set;

    .line 40
    new-instance p1, Lio/ktor/client/engine/okhttp/OkHttpEngine$clientCache$1;

    invoke-direct {p1, p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine$clientCache$1;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$clientCache$2;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpEngine$clientCache$2;

    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->getClientCacheSize()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/ktor/util/CacheKt;->createLRUCache(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->clientCache:Ljava/util/Map;

    .line 43
    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/Job;

    .line 44
    invoke-static {p1}, Lio/ktor/util/CoroutinesUtilsKt;->SilentSupervisor(Lkotlinx/coroutines/Job;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->requestsJob:Lkotlin/coroutines/CoroutineContext;

    .line 45
    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 48
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v2, Lio/ktor/client/engine/okhttp/OkHttpEngine$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/ktor/client/engine/okhttp/OkHttpEngine$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$createOkHttpClient(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->createOkHttpClient(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$executeHttpRequest(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->executeHttpRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$executeWebSocketRequest(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->executeWebSocketRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClientCache$p(Lio/ktor/client/engine/okhttp/OkHttpEngine;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->clientCache:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getOkHttpClientPrototype$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->okHttpClientPrototype$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getRequestsJob$p(Lio/ktor/client/engine/okhttp/OkHttpEngine;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->requestsJob:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final buildResponseData(Lokhttp3/Response;Lio/ktor/util/date/GMTDate;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/client/request/HttpResponseData;
    .locals 7

    .line 118
    new-instance v1, Lio/ktor/http/HttpStatusCode;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/client/engine/okhttp/OkUtilsKt;->fromOkHttp(Lokhttp3/Protocol;)Lio/ktor/http/HttpProtocolVersion;

    move-result-object v4

    .line 120
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/client/engine/okhttp/OkUtilsKt;->fromOkHttp(Lokhttp3/Headers;)Lio/ktor/http/Headers;

    move-result-object v3

    .line 122
    new-instance p1, Lio/ktor/client/request/HttpResponseData;

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/request/HttpResponseData;-><init>(Lio/ktor/http/HttpStatusCode;Lio/ktor/util/date/GMTDate;Lio/ktor/http/Headers;Lio/ktor/http/HttpProtocolVersion;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-object p1
.end method

.method private final createOkHttpClient(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->getPreconfigured()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->Companion:Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;

    invoke-virtual {v0}, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;->getOkHttpClientPrototype()Lokhttp3/OkHttpClient;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 138
    new-instance v1, Lokhttp3/Dispatcher;

    invoke-direct {v1}, Lokhttp3/Dispatcher;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 139
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->getConfig$ktor_client_okhttp()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/HttpClientEngineConfig;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    if-eqz p1, :cond_2

    .line 142
    invoke-static {v0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->access$setupTimeoutAttributes(Lokhttp3/OkHttpClient$Builder;Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient$Builder;

    .line 145
    :cond_2
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private final executeHttpRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p5, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;

    iget v1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;

    invoke-direct {v0, p0, p5}, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget v2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/util/date/GMTDate;

    iget-object p2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$2:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Lio/ktor/client/request/HttpRequestData;

    iget-object p2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$1:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    iget-object p2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/engine/okhttp/OkHttpEngine;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p5, 0x0

    .line 102
    invoke-static {p5, v3, p5}, Lio/ktor/util/date/DateJvmKt;->GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;

    move-result-object p5

    .line 103
    iput-object p0, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$1;->label:I

    invoke-static {p1, p2, p4, v0}, Lio/ktor/client/engine/okhttp/OkUtilsKt;->execute(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    move-object v4, p5

    move-object p5, p1

    move-object p1, v4

    .line 96
    :goto_1
    check-cast p5, Lokhttp3/Response;

    .line 105
    invoke-virtual {p5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 106
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p3, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/Job;

    new-instance v2, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$2;

    invoke-direct {v2, v0}, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeHttpRequest$2;-><init>(Lokhttp3/ResponseBody;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, p3, p4}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->access$toChannel(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p4

    if-nez p4, :cond_5

    :cond_4
    sget-object p4, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {p4}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p4

    .line 109
    :cond_5
    invoke-direct {p2, p5, p1, p4, p3}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->buildResponseData(Lokhttp3/Response;Lio/ktor/util/date/GMTDate;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/client/request/HttpResponseData;

    move-result-object p1

    return-object p1
.end method

.method private final executeWebSocketRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;

    iget v1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;

    iget-object p2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lio/ktor/util/date/GMTDate;

    iget-object p3, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    iget-object v0, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 84
    invoke-static {p4, v3, p4}, Lio/ktor/util/date/DateJvmKt;->GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;

    move-result-object p4

    .line 85
    new-instance v2, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;

    .line 87
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->getWebSocketFactory()Lokhttp3/WebSocket$Factory;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, p1

    .line 85
    :cond_3
    invoke-direct {v2, p1, v4, p2, p3}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/WebSocket$Factory;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;)V

    .line 90
    invoke-virtual {v2}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->start()V

    .line 92
    invoke-virtual {v2}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->getOriginResponse$ktor_client_okhttp()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p0, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object p2, p4

    move-object p4, p1

    move-object p1, v2

    .line 79
    :goto_1
    check-cast p4, Lokhttp3/Response;

    .line 93
    invoke-direct {v0, p4, p2, p1, p3}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->buildResponseData(Lokhttp3/Response;Lio/ktor/util/date/GMTDate;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/client/request/HttpResponseData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 75
    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->close()V

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->requestsJob:Lkotlin/coroutines/CoroutineContext;

    .line 76
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    return-void
.end method

.method public execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;

    iget v1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget-object p1, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/request/HttpRequestData;

    iget-object v1, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/engine/okhttp/OkHttpEngine;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_2
    move-object v5, p1

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    iput-object p0, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$0:Ljava/lang/Object;

    iput-object p1, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$1:Ljava/lang/Object;

    iput v4, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->label:I

    invoke-static {v6}, Lio/ktor/client/engine/UtilsKt;->callContext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    goto :goto_2

    .line 60
    :goto_3
    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 62
    invoke-static {v5, v4}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->access$convertToOkHttpRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/Request;

    move-result-object p1

    .line 64
    iget-object p2, v1, Lio/ktor/client/engine/okhttp/OkHttpEngine;->clientCache:Ljava/util/Map;

    sget-object v7, Lio/ktor/client/plugins/HttpTimeout;->Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    invoke-virtual {v5, v7}, Lio/ktor/client/request/HttpRequestData;->getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/OkHttpClient;

    if-eqz p2, :cond_9

    .line 67
    invoke-static {v5}, Lio/ktor/client/request/HttpRequestKt;->isUpgradeRequest(Lio/ktor/client/request/HttpRequestData;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 68
    iput-object v8, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$1:Ljava/lang/Object;

    iput v3, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->label:I

    invoke-direct {v1, p2, p1, v4, v6}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->executeWebSocketRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    return-object v0

    :cond_6
    :goto_4
    return-object p2

    .line 70
    :cond_7
    iput-object v8, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->L$1:Ljava/lang/Object;

    iput v2, v6, Lio/ktor/client/engine/okhttp/OkHttpEngine$execute$1;->label:I

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->executeHttpRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_8

    return-object v0

    :cond_8
    :goto_5
    return-object p2

    .line 64
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "OkHttpClient can\'t be constructed because HttpTimeout plugin is not installed"

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getConfig()Lio/ktor/client/engine/HttpClientEngineConfig;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lio/ktor/client/engine/okhttp/OkHttpConfig;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->config:Lio/ktor/client/engine/okhttp/OkHttpConfig;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getSupportedCapabilities()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine;->supportedCapabilities:Ljava/util/Set;

    return-object v0
.end method
