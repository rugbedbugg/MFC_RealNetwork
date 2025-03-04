.class final Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OkHttpWebsocketSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/WebSocket$Factory;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $engineRequest:Lokhttp3/Request;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->this$0:Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;

    iput-object p2, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->$engineRequest:Lokhttp3/Request;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;

    iget-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->this$0:Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;

    iget-object v2, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->$engineRequest:Lokhttp3/Request;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$2:Ljava/lang/Object;

    .line 61
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/websocket/CloseReason;

    iget-object v4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lokhttp3/WebSocket;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Request;

    iget-object v3, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lokhttp3/WebSocket$Factory;

    iget-object v4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ActorScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/channels/ActorScope;

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->this$0:Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;

    .line 62
    invoke-static {p1}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->access$getWebSocketFactory$p(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;)Lokhttp3/WebSocket$Factory;

    move-result-object p1

    iget-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->$engineRequest:Lokhttp3/Request;

    iget-object v5, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->this$0:Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;

    invoke-static {v5}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;->access$getSelf$p(Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    iput-object v4, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->label:I

    invoke-interface {v5, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    :goto_0
    check-cast p1, Lokhttp3/WebSocketListener;

    invoke-interface {v3, v1, p1}, Lokhttp3/WebSocket$Factory;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object p1

    .line 63
    invoke-static {}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSessionKt;->access$getDEFAULT_CLOSE_REASON_ERROR$p()Lio/ktor/websocket/CloseReason;

    move-result-object v3

    .line 66
    :try_start_1
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ActorScope;->getChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v4, p1

    move-object p1, p0

    :goto_1
    :try_start_2
    iput-object v4, p1, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$0:Ljava/lang/Object;

    iput-object v3, p1, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$1:Ljava/lang/Object;

    iput-object v1, p1, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->L$2:Ljava/lang/Object;

    iput v2, p1, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSession$outgoing$1;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move-object v9, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v9

    :goto_2
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/websocket/Frame;

    .line 68
    instance-of v6, p1, Lio/ktor/websocket/Frame$Binary;

    if-eqz v6, :cond_5

    sget-object v6, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object v7

    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object p1

    array-length p1, p1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p1}, Lokio/ByteString$Companion;->of([BII)Lokio/ByteString;

    move-result-object p1

    invoke-interface {v5, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v4

    :goto_3
    move-object v4, v5

    goto :goto_6

    .line 69
    :cond_5
    instance-of v6, p1, Lio/ktor/websocket/Frame$Text;

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object p1

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v5, v6}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    :goto_4
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_1

    .line 70
    :cond_6
    instance-of v0, p1, Lio/ktor/websocket/Frame$Close;

    if-eqz v0, :cond_8

    .line 71
    check-cast p1, Lio/ktor/websocket/Frame$Close;

    invoke-static {p1}, Lio/ktor/websocket/FrameCommonKt;->readReason(Lio/ktor/websocket/Frame$Close;)Lio/ktor/websocket/CloseReason;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {p1}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSessionKt;->access$isReserved(Lio/ktor/websocket/CloseReason;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_7

    move-object v3, p1

    goto :goto_5

    :cond_7
    move-object v3, v4

    .line 75
    :goto_5
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 82
    :try_start_5
    invoke-virtual {v3}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result v0

    invoke-virtual {v3}, Lio/ktor/websocket/CloseReason;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object p1

    :catchall_2
    move-exception p1

    .line 84
    invoke-interface {v5}, Lokhttp3/WebSocket;->cancel()V

    .line 85
    throw p1

    :catchall_3
    move-exception p1

    goto :goto_3

    .line 77
    :cond_8
    :try_start_6
    new-instance v0, Lio/ktor/client/engine/okhttp/UnsupportedFrameTypeException;

    invoke-direct {v0, p1}, Lio/ktor/client/engine/okhttp/UnsupportedFrameTypeException;-><init>(Lio/ktor/websocket/Frame;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 82
    :cond_9
    :try_start_7
    invoke-virtual {v4}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result p1

    invoke-virtual {v4}, Lio/ktor/websocket/CloseReason;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_4
    move-exception p1

    .line 84
    invoke-interface {v5}, Lokhttp3/WebSocket;->cancel()V

    .line 85
    throw p1

    :catchall_5
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 82
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result v0

    invoke-virtual {v3}, Lio/ktor/websocket/CloseReason;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 85
    throw p1

    :catchall_6
    move-exception p1

    .line 84
    invoke-interface {v4}, Lokhttp3/WebSocket;->cancel()V

    .line 85
    throw p1
.end method
