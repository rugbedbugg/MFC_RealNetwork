.class final Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OkHttpEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->toChannel(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $requestData:Lio/ktor/client/request/HttpRequestData;

.field final synthetic $this_toChannel:Lokio/BufferedSource;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$this_toChannel:Lokio/BufferedSource;

    iput-object p2, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$context:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$requestData:Lio/ktor/client/request/HttpRequestData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;

    iget-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$this_toChannel:Lokio/BufferedSource;

    iget-object v2, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$context:Lkotlin/coroutines/CoroutineContext;

    iget-object v3, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$requestData:Lio/ktor/client/request/HttpRequestData;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;-><init>(Lokio/BufferedSource;Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$5:Ljava/lang/Object;

    .line 151
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lokio/BufferedSource;

    iget-object v6, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lio/ktor/client/request/HttpRequestData;

    iget-object v7, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    iget-object v8, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/io/Closeable;

    iget-object v9, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/WriterScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/WriterScope;

    iget-object v8, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$this_toChannel:Lokio/BufferedSource;

    iget-object v5, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$context:Lkotlin/coroutines/CoroutineContext;

    iget-object v6, v1, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->$requestData:Lio/ktor/client/request/HttpRequestData;

    .line 153
    :try_start_1
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v15, v1

    move-object v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v8

    .line 154
    :goto_0
    invoke-interface {v5}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v7}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ltz v10, :cond_3

    .line 155
    invoke-interface {v9}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;

    invoke-direct {v12, v2, v5, v6}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lokio/BufferedSource;Lio/ktor/client/request/HttpRequestData;)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    iput-object v9, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v8, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v7, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput-object v6, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$3:Ljava/lang/Object;

    iput-object v5, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$4:Ljava/lang/Object;

    iput-object v2, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->L$5:Ljava/lang/Object;

    iput v4, v15, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->label:I

    move-object v13, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/ByteWriteChannel$DefaultImpls;->write$default(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_2

    return-object v0

    :cond_2
    move-object/from16 v15, v17

    .line 162
    :goto_1
    invoke-interface {v9}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v10

    invoke-interface {v10}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    goto :goto_0

    .line 164
    :cond_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_5

    .line 61
    :try_start_2
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :goto_2
    if-eqz v8, :cond_4

    :try_start_3
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 66
    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :cond_5
    :goto_4
    if-nez v3, :cond_6

    .line 72
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 165
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 71
    :cond_6
    throw v3
.end method
