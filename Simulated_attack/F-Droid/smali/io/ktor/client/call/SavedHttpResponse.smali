.class public final Lio/ktor/client/call/SavedHttpResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "SavedCall.kt"


# instance fields
.field private final call:Lio/ktor/client/call/SavedHttpCall;

.field private final content:Lio/ktor/utils/io/ByteReadChannel;

.field private final context:Lkotlinx/coroutines/CompletableJob;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final headers:Lio/ktor/http/Headers;

.field private final requestTime:Lio/ktor/util/date/GMTDate;

.field private final responseTime:Lio/ktor/util/date/GMTDate;

.field private final status:Lio/ktor/http/HttpStatusCode;

.field private final version:Lio/ktor/http/HttpProtocolVersion;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/SavedHttpCall;[BLio/ktor/client/statement/HttpResponse;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->call:Lio/ktor/client/call/SavedHttpCall;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 50
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->context:Lkotlinx/coroutines/CompletableJob;

    .line 52
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    .line 54
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    .line 56
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 58
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    .line 60
    invoke-interface {p3}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->headers:Lio/ktor/http/Headers;

    .line 62
    invoke-interface {p3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 65
    invoke-static {p2}, Lio/ktor/utils/io/ByteChannelCtorKt;->ByteReadChannel([B)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/ktor/client/call/SavedHttpResponse;->getCall()Lio/ktor/client/call/SavedHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lio/ktor/client/call/SavedHttpCall;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->call:Lio/ktor/client/call/SavedHttpCall;

    return-object v0
.end method

.method public getContent()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method
