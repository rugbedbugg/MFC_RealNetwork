.class public final Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;
.super Lokhttp3/WebSocketListener;
.source "OkHttpWebsocketSession.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field private final _closeReason:Lkotlinx/coroutines/CompletableDeferred;

.field private final _incoming:Lkotlinx/coroutines/channels/Channel;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final engine:Lokhttp3/OkHttpClient;

.field private final originResponse:Lkotlinx/coroutines/CompletableDeferred;

.field private final outgoing:Lkotlinx/coroutines/channels/SendChannel;

.field private final self:Lkotlinx/coroutines/CompletableDeferred;

.field private final webSocketFactory:Lokhttp3/WebSocket$Factory;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/WebSocket$Factory;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;)V
    .locals 8

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webSocketFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->engine:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    iput-object p4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 24
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p4

    iput-object p4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->self:Lkotlinx/coroutines/CompletableDeferred;

    .line 26
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p4

    iput-object p4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->originResponse:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p4, 0x0

    const/4 v0, 0x7

    .line 46
    invoke-static {p4, p1, p1, v0, p1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p4

    iput-object p4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_incoming:Lkotlinx/coroutines/channels/Channel;

    .line 47
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_closeReason:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 61
    new-instance v5, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;

    invoke-direct {v5, p0, p3, p1}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->outgoing:Lkotlinx/coroutines/channels/SendChannel;

    return-void
.end method

.method public static final synthetic access$getSelf$p(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->self:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getWebSocketFactory$p(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;)Lokhttp3/WebSocket$Factory;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    return-object p0
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getOriginResponse$ktor_client_okhttp()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->originResponse:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public getOutgoing()Lkotlinx/coroutines/channels/SendChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->outgoing:Lkotlinx/coroutines/channels/SendChannel;

    return-object v0
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 3

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_closeReason:Lkotlinx/coroutines/CompletableDeferred;

    .line 111
    new-instance v0, Lio/ktor/websocket/CloseReason;

    int-to-short v1, p2

    invoke-direct {v0, v1, p3}, Lio/ktor/websocket/CloseReason;-><init>(SLjava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_incoming:Lkotlinx/coroutines/channels/Channel;

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 112
    invoke-static {p1, p3, v0, p3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    .line 114
    new-instance p3, Ljava/util/concurrent/CancellationException;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocket session closed with code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/ktor/websocket/CloseReason$Codes;->Companion:Lio/ktor/websocket/CloseReason$Codes$Companion;

    invoke-virtual {v2, v1}, Lio/ktor/websocket/CloseReason$Codes$Companion;->byCode(S)Lio/ktor/websocket/CloseReason$Codes;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-direct {p3, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-interface {p1, p3}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_closeReason:Lkotlinx/coroutines/CompletableDeferred;

    .line 123
    new-instance v0, Lio/ktor/websocket/CloseReason;

    int-to-short p2, p2

    invoke-direct {v0, p2, p3}, Lio/ktor/websocket/CloseReason;-><init>(SLjava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    new-instance v0, Lio/ktor/websocket/Frame$Close;

    new-instance v1, Lio/ktor/websocket/CloseReason;

    invoke-direct {v1, p2, p3}, Lio/ktor/websocket/CloseReason;-><init>(SLjava/lang/String;)V

    invoke-direct {v0, v1}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/websocket/CloseReason;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_incoming:Lkotlinx/coroutines/channels/Channel;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 128
    invoke-static {p1, p3, p2, p3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_closeReason:Lkotlinx/coroutines/CompletableDeferred;

    .line 134
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->originResponse:Lkotlinx/coroutines/CompletableDeferred;

    .line 135
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_incoming:Lkotlinx/coroutines/channels/Channel;

    .line 136
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    .line 137
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 2

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_incoming:Lkotlinx/coroutines/channels/Channel;

    .line 105
    new-instance v0, Lio/ktor/websocket/Frame$Text;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "getBytes(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lio/ktor/websocket/Frame$Text;-><init>(Z[B)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 2

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->_incoming:Lkotlinx/coroutines/channels/Channel;

    .line 100
    new-instance v0, Lio/ktor/websocket/Frame$Binary;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lio/ktor/websocket/Frame$Binary;-><init>(Z[B)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->originResponse:Lkotlinx/coroutines/CompletableDeferred;

    .line 95
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->self:Lkotlinx/coroutines/CompletableDeferred;

    .line 147
    invoke-interface {v0, p0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
