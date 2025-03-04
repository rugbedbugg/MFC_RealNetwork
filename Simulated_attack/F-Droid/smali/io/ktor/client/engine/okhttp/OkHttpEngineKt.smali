.class public abstract Lio/ktor/client/engine/okhttp/OkHttpEngineKt;
.super Ljava/lang/Object;
.source "OkHttpEngine.kt"


# direct methods
.method public static final synthetic access$convertToOkHttpRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->convertToOkHttpRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mapExceptions(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequestData;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->mapExceptions(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequestData;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setupTimeoutAttributes(Lokhttp3/OkHttpClient$Builder;Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->setupTimeoutAttributes(Lokhttp3/OkHttpClient$Builder;Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toChannel(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->toChannel(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final convertToOkHttpBody(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/RequestBody;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    instance-of p1, p0, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;->bytes()[B

    move-result-object p1

    .line 200
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {p0}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    array-length v2, p1

    invoke-virtual {v1, p1, p0, v0, v2}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_0
    instance-of p1, p0, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    if-eqz p1, :cond_1

    new-instance p1, Lio/ktor/client/engine/okhttp/StreamRequestBody;

    invoke-virtual {p0}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpBody$2;

    invoke-direct {v1, p0}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpBody$2;-><init>(Lio/ktor/http/content/OutgoingContent;)V

    invoke-direct {p1, v0, v1}, Lio/ktor/client/engine/okhttp/StreamRequestBody;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V

    move-object p0, p1

    goto :goto_0

    .line 206
    :cond_1
    instance-of p1, p0, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz p1, :cond_2

    sget-object p0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-array p1, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v0}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;

    move-result-object p0

    :goto_0
    return-object p0

    .line 207
    :cond_2
    new-instance p1, Lio/ktor/client/call/UnsupportedContentTypeException;

    invoke-direct {p1, p0}, Lio/ktor/client/call/UnsupportedContentTypeException;-><init>(Lio/ktor/http/content/OutgoingContent;)V

    throw p1
.end method

.method private static final convertToOkHttpRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/Request;
    .locals 4

    .line 174
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 177
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 179
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object v2

    new-instance v3, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpRequest$1$1;

    invoke-direct {v3, v0}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpRequest$1$1;-><init>(Lokhttp3/Request$Builder;)V

    invoke-static {v1, v2, v3}, Lio/ktor/client/engine/UtilsKt;->mergeHeaders(Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function2;)V

    .line 185
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object v1

    invoke-static {v1, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->convertToOkHttpBody(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    :goto_0
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 194
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private static final mapExceptions(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequestData;)Ljava/lang/Throwable;
    .locals 1

    .line 168
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lio/ktor/client/plugins/HttpTimeoutKt;->SocketTimeoutException(Lio/ktor/client/request/HttpRequestData;Ljava/lang/Throwable;)Lio/ktor/client/network/sockets/SocketTimeoutException;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static final setupTimeoutAttributes(Lokhttp3/OkHttpClient$Builder;Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 218
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getConnectTimeoutMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 219
    invoke-static {v0, v1}, Lio/ktor/client/plugins/HttpTimeoutKt;->convertLongTimeoutToLongWithInfiniteAsZero(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 221
    :cond_0
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getSocketTimeoutMillis()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 222
    invoke-static {v0, v1}, Lio/ktor/client/plugins/HttpTimeoutKt;->convertLongTimeoutToLongWithInfiniteAsZero(J)J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 223
    invoke-static {v0, v1}, Lio/ktor/client/plugins/HttpTimeoutKt;->convertLongTimeoutToLongWithInfiniteAsZero(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    return-object p0
.end method

.method private static final toChannel(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 6

    .line 151
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    const/4 v2, 0x0

    new-instance v3, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;-><init>(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/CoroutinesKt;->writer$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/WriterJob;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Lio/ktor/utils/io/WriterJob;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method
