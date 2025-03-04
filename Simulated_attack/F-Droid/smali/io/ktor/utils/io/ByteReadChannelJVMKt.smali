.class public abstract Lio/ktor/utils/io/ByteReadChannelJVMKt;
.super Ljava/lang/Object;
.source "ByteReadChannelJVM.kt"


# direct methods
.method public static final synthetic access$copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    if-eq p0, p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 284
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 287
    :cond_0
    instance-of v0, p0, Lio/ktor/utils/io/ByteBufferChannel;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lio/ktor/utils/io/ByteBufferChannel;

    if-eqz v0, :cond_1

    .line 288
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/ByteBufferChannel;

    move-object v2, p0

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v5, 0x0

    move-wide v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/ktor/utils/io/ByteBufferChannel;->copyDirect$ktor_io(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/JoiningState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 293
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 281
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    iget v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 296
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-ne v3, v6, :cond_1

    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$1:I

    iget-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    iget v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    iget-wide v11, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    iget-object v13, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v14, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v15, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/ByteReadChannel;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    move v4, v3

    move-object v1, v14

    move-object v0, v15

    move/from16 v17, v10

    move-object v10, v2

    move-wide v2, v11

    move/from16 v11, v17

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    iget-wide v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    move-object v13, v12

    check-cast v13, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    move-object v14, v12

    check-cast v14, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 298
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 299
    invoke-interface/range {p1 .. p1}, Lio/ktor/utils/io/ByteWriteChannel;->getAutoFlush()Z

    move-result v3

    xor-int/2addr v3, v7

    move-object v13, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-wide v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    :goto_1
    sub-long v14, v2, v11

    cmp-long v16, v14, v4

    if-eqz v16, :cond_8

    .line 307
    :try_start_2
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v13, v4}, Lio/ktor/utils/io/core/Buffer;->resetForWrite(I)V

    .line 309
    iput-object v0, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    iput-object v1, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    iput-object v13, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    iput-wide v2, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    iput v10, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    iput-wide v11, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    iput v7, v8, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    invoke-interface {v0, v13, v8}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v4, v9, :cond_4

    return-object v9

    :cond_4
    move-object v14, v1

    move-object v1, v8

    move-wide/from16 v17, v11

    move-object v12, v0

    move-object v0, v4

    move-wide/from16 v19, v2

    move-object v2, v9

    move v3, v10

    move-wide/from16 v8, v17

    move-wide/from16 v10, v19

    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 312
    iput-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    iput v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    iput-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    iput v0, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$1:I

    iput v6, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    invoke-interface {v14, v13, v1}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v2, :cond_5

    return-object v2

    :cond_5
    move v4, v0

    move-object v5, v1

    move-object v0, v12

    move-object v1, v14

    move-wide/from16 v17, v10

    move-object v10, v2

    move v11, v3

    move-wide/from16 v2, v17

    :goto_3
    int-to-long v14, v4

    add-long/2addr v8, v14

    if-eqz v11, :cond_6

    .line 315
    :try_start_4
    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v4

    if-nez v4, :cond_6

    .line 316
    invoke-interface {v1}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v14, v1

    goto :goto_6

    :cond_6
    :goto_4
    move-wide/from16 v17, v8

    move-object v8, v5

    move-object v9, v10

    move v10, v11

    const-wide/16 v4, 0x0

    move-wide/from16 v11, v17

    goto :goto_1

    :cond_7
    move-wide v11, v8

    goto :goto_5

    :cond_8
    move-object v14, v1

    .line 319
    :goto_5
    :try_start_5
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-virtual {v13, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-object v0

    .line 321
    :goto_6
    :try_start_6
    invoke-interface {v14, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 322
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 325
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-virtual {v13, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    throw v0
.end method
