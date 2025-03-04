.class public final Lokhttp3/internal/connection/Exchange;
.super Ljava/lang/Object;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Exchange$RequestBodySink;,
        Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    }
.end annotation


# instance fields
.field private final call:Lokhttp3/internal/connection/RealCall;

.field private final codec:Lokhttp3/internal/http/ExchangeCodec;

.field private final connection:Lokhttp3/internal/connection/RealConnection;

.field private final eventListener:Lokhttp3/EventListener;

.field private final finder:Lokhttp3/internal/connection/ExchangeFinder;

.field private hasFailure:Z

.field private isDuplex:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    iput-object p2, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iput-object p3, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    iput-object p4, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 54
    invoke-interface {p4}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    return-void
.end method

.method private final trackFailure(Ljava/io/IOException;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->hasFailure:Z

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 171
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure(Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 172
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/connection/RealConnection;->trackFailure$okhttp(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    if-eqz p5, :cond_0

    .line 182
    invoke-direct {p0, p5}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 186
    invoke-virtual {v0, v1, p5}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 188
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    iget-object p1, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 193
    invoke-virtual {p1, p2, p5}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 195
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 198
    invoke-virtual {p1, p0, p4, p3, p5}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 157
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    return-void
.end method

.method public final createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    .line 75
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 76
    invoke-virtual {p2, v2}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 77
    invoke-interface {p2, p1, v0, v1}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object p1

    .line 78
    new-instance p2, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    invoke-direct {p2, p0, p1, v0, v1}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V

    return-object p2
.end method

.method public final detachWithViolence()V
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 165
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, p0, v1, v1, v2}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final finishRequest()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 95
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 97
    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 98
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 99
    throw v0
.end method

.method public final flushRequest()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 84
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 86
    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 87
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 88
    throw v0
.end method

.method public final getCall$okhttp()Lokhttp3/internal/connection/RealCall;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    return-object v0
.end method

.method public final getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public final getEventListener$okhttp()Lokhttp3/EventListener;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    return-object v0
.end method

.method public final getFinder$okhttp()Lokhttp3/internal/connection/ExchangeFinder;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    return-object v0
.end method

.method public final getHasFailure$okhttp()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->hasFailure:Z

    return v0
.end method

.method public final isCoalescedConnection$okhttp()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 57
    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->getAddress$okhttp()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isDuplex$okhttp()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    return v0
.end method

.method public final newWebSocketStreams()Lokhttp3/internal/ws/RealWebSocket$Streams;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 144
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit()V

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 145
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/RealConnection;->newWebSocketStreams$okhttp(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v0

    return-object v0
.end method

.method public final noNewExchangesOnConnection()V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 153
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    return-void
.end method

.method public final noRequestBody()V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 202
    invoke-virtual {v0, p0, v3, v1, v2}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 127
    invoke-static {p1, v0, v2, v1, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 128
    invoke-interface {v1, p1}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/Response;)J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 129
    invoke-interface {v3, p1}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/Response;)Lokio/Source;

    move-result-object p1

    .line 130
    new-instance v3, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    invoke-direct {v3, p0, p1, v1, v2}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V

    .line 131
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 133
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 134
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 135
    throw p1
.end method

.method public final readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 110
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Lokhttp3/Response$Builder;->initExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 114
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 115
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 116
    throw p1
.end method

.method public final responseHeadersEnd(Lokhttp3/Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 121
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public final responseHeadersStart()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 104
    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    return-void
.end method

.method public final webSocketUpgradeFailed()V
    .locals 6

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 149
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final writeRequestHeaders(Lokhttp3/Request;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 62
    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    .line 63
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 64
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 66
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 67
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 68
    throw p1
.end method
