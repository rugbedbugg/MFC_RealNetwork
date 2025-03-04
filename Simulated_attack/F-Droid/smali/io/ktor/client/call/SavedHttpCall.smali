.class public final Lio/ktor/client/call/SavedHttpCall;
.super Lio/ktor/client/call/HttpClientCall;
.source "SavedCall.kt"


# instance fields
.field private final allowDoubleReceive:Z

.field private final responseBody:[B


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Lio/ktor/client/request/HttpRequest;Lio/ktor/client/statement/HttpResponse;[B)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lio/ktor/client/call/HttpClientCall;-><init>(Lio/ktor/client/HttpClient;)V

    iput-object p4, p0, Lio/ktor/client/call/SavedHttpCall;->responseBody:[B

    .line 26
    new-instance p1, Lio/ktor/client/call/SavedHttpRequest;

    invoke-direct {p1, p0, p2}, Lio/ktor/client/call/SavedHttpRequest;-><init>(Lio/ktor/client/call/SavedHttpCall;Lio/ktor/client/request/HttpRequest;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->setRequest(Lio/ktor/client/request/HttpRequest;)V

    .line 27
    new-instance p1, Lio/ktor/client/call/SavedHttpResponse;

    invoke-direct {p1, p0, p4, p3}, Lio/ktor/client/call/SavedHttpResponse;-><init>(Lio/ktor/client/call/SavedHttpCall;[BLio/ktor/client/statement/HttpResponse;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->setResponse(Lio/ktor/client/statement/HttpResponse;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/ktor/client/call/SavedHttpCall;->allowDoubleReceive:Z

    return-void
.end method


# virtual methods
.method protected getAllowDoubleReceive()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/client/call/SavedHttpCall;->allowDoubleReceive:Z

    return v0
.end method

.method protected getResponseContent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lio/ktor/client/call/SavedHttpCall;->responseBody:[B

    .line 34
    invoke-static {p1}, Lio/ktor/utils/io/ByteChannelCtorKt;->ByteReadChannel([B)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    return-object p1
.end method
