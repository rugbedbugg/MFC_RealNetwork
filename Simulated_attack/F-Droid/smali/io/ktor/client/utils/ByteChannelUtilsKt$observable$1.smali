.class final Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannelUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/utils/ByteChannelUtilsKt;->observable(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lkotlin/jvm/functions/Function3;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $contentLength:Ljava/lang/Long;

.field final synthetic $listener:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_observable:Lio/ktor/utils/io/ByteReadChannel;

.field I$0:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Long;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$contentLength:Ljava/lang/Long;

    iput-object p2, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$this_observable:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p3, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$listener:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 0
    new-instance v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    iget-object v1, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$contentLength:Ljava/lang/Long;

    iget-object v2, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$this_observable:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v3, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$listener:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;-><init>(Ljava/lang/Long;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iget-object v0, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    .line 18
    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$1:J

    iget-wide v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iget-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iget-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function3;

    iget-object v15, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/WriterScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v17, v9

    move-object v10, v1

    move-object v1, v2

    move v9, v6

    move-wide/from16 v6, v17

    move-object v2, v13

    move-object/from16 v19, v14

    move-object v14, v3

    move-object v3, v5

    move-wide v4, v11

    move-object/from16 v11, v19

    move-object v12, v15

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v5

    move-object v2, v13

    goto/16 :goto_6

    :cond_2
    iget v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iget-wide v3, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$1:J

    iget-wide v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iget-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iget-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v15, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/WriterScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v7, v9

    move-object v6, v14

    move-object v14, v15

    move-object v10, v1

    move-object v15, v13

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v11

    move-object v3, v14

    goto/16 :goto_6

    :cond_3
    iget-wide v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$1:J

    iget-wide v4, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iget-object v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v10, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iget-object v11, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function3;

    iget-object v12, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v13, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v14, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/WriterScope;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v8, p1

    move-wide v6, v2

    move-object v2, v10

    move-object v3, v13

    move-object v10, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v10

    move-object v3, v13

    goto/16 :goto_6

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/WriterScope;

    .line 19
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    iget-object v4, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$contentLength:Ljava/lang/Long;

    iget-object v5, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$this_observable:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v9, v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$listener:Lkotlin/jvm/functions/Function3;

    .line 159
    invoke-interface {v3}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v10

    .line 161
    :try_start_4
    move-object v11, v10

    check-cast v11, [B

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object v2, v10

    goto/16 :goto_6

    :cond_5
    const-wide/16 v12, -0x1

    :goto_0
    move-object v14, v2

    move-object v2, v10

    const-wide/16 v6, 0x0

    move-object v10, v1

    move-wide/from16 v17, v12

    move-object v12, v5

    move-wide/from16 v4, v17

    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, v19

    .line 22
    :goto_1
    :try_start_5
    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v16

    if-nez v16, :cond_9

    iput-object v14, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v3, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v12, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v11, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v2, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-wide v4, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iput-wide v6, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$1:J

    iput v8, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    .line 23
    invoke-static {v12, v9, v10}, Lio/ktor/utils/io/ByteReadChannelKt;->readAvailable(Lio/ktor/utils/io/ByteReadChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 24
    invoke-interface {v14}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v13

    iput-object v14, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v3, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v12, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v11, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v2, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-wide v4, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iput-wide v6, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$1:J

    iput v8, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    const/4 v15, 0x2

    iput v15, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    const/4 v15, 0x0

    invoke-interface {v13, v9, v15, v8, v10}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v13, v0, :cond_7

    return-object v0

    :cond_7
    move-object v15, v12

    move-object v12, v11

    move-object v11, v2

    move v2, v8

    move-wide/from16 v17, v6

    move-object v6, v3

    move-wide v7, v4

    move-wide/from16 v3, v17

    move-object v5, v9

    :goto_3
    int-to-long v1, v2

    add-long/2addr v1, v3

    .line 26
    :try_start_6
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v14, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v6, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v15, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v12, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v11, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v5, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-wide v7, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iput-wide v1, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$1:J

    const/4 v9, 0x3

    iput v9, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    invoke-interface {v12, v3, v4, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v3, v0, :cond_8

    return-object v0

    :cond_8
    move-object v3, v6

    move-wide/from16 v17, v1

    move-object v1, v5

    move-wide v4, v7

    move-object v2, v11

    move-object v11, v12

    move-object v12, v15

    move-wide/from16 v6, v17

    :goto_4
    move-object v9, v1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v3, v6

    move-object v2, v11

    goto :goto_6

    .line 28
    :cond_9
    :try_start_7
    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 29
    invoke-interface {v14}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v8

    invoke-interface {v8, v1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    if-nez v1, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_a

    .line 31
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v3, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v5, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v5, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v5, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v10, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    invoke-interface {v11, v1, v4, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    .line 33
    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    invoke-interface {v3, v2}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 163
    :goto_6
    invoke-interface {v3, v2}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0
.end method
