.class public final Lio/ktor/client/plugins/observer/DelegatedResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "DelegatedCall.kt"


# instance fields
.field private final call:Lio/ktor/client/call/HttpClientCall;

.field private final content:Lio/ktor/utils/io/ByteReadChannel;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final origin:Lio/ktor/client/statement/HttpResponse;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/statement/HttpResponse;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->call:Lio/ktor/client/call/HttpClientCall;

    iput-object p2, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p3, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 62
    invoke-interface {p3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->call:Lio/ktor/client/call/HttpClientCall;

    return-object v0
.end method

.method public getContent()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 72
    invoke-interface {v0}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 68
    invoke-virtual {v0}, Lio/ktor/client/statement/HttpResponse;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 70
    invoke-virtual {v0}, Lio/ktor/client/statement/HttpResponse;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 64
    invoke-virtual {v0}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/observer/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 66
    invoke-virtual {v0}, Lio/ktor/client/statement/HttpResponse;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    return-object v0
.end method
