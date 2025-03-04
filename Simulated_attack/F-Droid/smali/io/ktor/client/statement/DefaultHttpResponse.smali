.class public final Lio/ktor/client/statement/DefaultHttpResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "DefaultHttpResponse.kt"


# instance fields
.field private final call:Lio/ktor/client/call/HttpClientCall;

.field private final content:Lio/ktor/utils/io/ByteReadChannel;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final headers:Lio/ktor/http/Headers;

.field private final requestTime:Lio/ktor/util/date/GMTDate;

.field private final responseTime:Lio/ktor/util/date/GMTDate;

.field private final status:Lio/ktor/http/HttpStatusCode;

.field private final version:Lio/ktor/http/HttpProtocolVersion;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpResponseData;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->call:Lio/ktor/client/call/HttpClientCall;

    .line 20
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getCallContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 22
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    .line 24
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    .line 26
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 28
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    .line 30
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getBody()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v0, :cond_0

    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 31
    sget-object p1, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    .line 33
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->headers:Lio/ktor/http/Headers;

    return-void
.end method


# virtual methods
.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->call:Lio/ktor/client/call/HttpClientCall;

    return-object v0
.end method

.method public getContent()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method
