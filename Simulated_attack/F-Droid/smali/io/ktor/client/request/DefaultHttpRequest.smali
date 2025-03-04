.class public Lio/ktor/client/request/DefaultHttpRequest;
.super Ljava/lang/Object;
.source "DefaultHttpRequest.kt"

# interfaces
.implements Lio/ktor/client/request/HttpRequest;


# instance fields
.field private final attributes:Lio/ktor/util/Attributes;

.field private final call:Lio/ktor/client/call/HttpClientCall;

.field private final content:Lio/ktor/http/content/OutgoingContent;

.field private final headers:Lio/ktor/http/Headers;

.field private final method:Lio/ktor/http/HttpMethod;

.field private final url:Lio/ktor/http/Url;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpRequestData;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->call:Lio/ktor/client/call/HttpClientCall;

    .line 20
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->method:Lio/ktor/http/HttpMethod;

    .line 22
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->url:Lio/ktor/http/Url;

    .line 24
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->content:Lio/ktor/http/content/OutgoingContent;

    .line 26
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->headers:Lio/ktor/http/Headers;

    .line 28
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->attributes:Lio/ktor/util/Attributes;

    return-void
.end method


# virtual methods
.method public getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->call:Lio/ktor/client/call/HttpClientCall;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lio/ktor/client/request/DefaultHttpRequest;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->url:Lio/ktor/http/Url;

    return-object v0
.end method
