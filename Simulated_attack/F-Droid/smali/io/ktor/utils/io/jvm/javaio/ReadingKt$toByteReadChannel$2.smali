.class final Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Reading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/ReadingKt;->toByteReadChannelWithArrayPool(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/ObjectPool;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pool:Lio/ktor/utils/io/pool/ObjectPool;

.field final synthetic $this_toByteReadChannel:Ljava/io/InputStream;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$this_toByteReadChannel:Ljava/io/InputStream;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;

    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$this_toByteReadChannel:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;-><init>(Lio/ktor/utils/io/pool/ObjectPool;Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->L$1:Ljava/lang/Object;

    .line 82
    check-cast v1, [B

    iget-object v3, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/WriterScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 83
    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, p1

    :goto_0
    move-object p1, p0

    :cond_2
    :try_start_1
    iget-object v4, p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 86
    array-length v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_3

    if-eqz v4, :cond_2

    .line 90
    invoke-interface {v3}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v5

    iput-object v3, p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->L$1:Ljava/lang/Object;

    iput v2, p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->label:I

    invoke-interface {v5, v1, v6, v4, p1}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v0, :cond_2

    return-object v0

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 95
    invoke-interface {v0, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    iget-object p1, p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 96
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 93
    :goto_2
    :try_start_2
    invoke-interface {v3}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 95
    invoke-interface {p1, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$this_toByteReadChannel:Ljava/io/InputStream;

    goto :goto_1

    .line 98
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception p1

    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 95
    invoke-interface {v2, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    iget-object v0, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 96
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
