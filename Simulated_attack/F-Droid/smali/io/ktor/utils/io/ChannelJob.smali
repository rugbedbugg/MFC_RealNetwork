.class final Lio/ktor/utils/io/ChannelJob;
.super Ljava/lang/Object;
.source "Coroutines.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;
.implements Lio/ktor/utils/io/WriterJob;


# instance fields
.field private final channel:Lio/ktor/utils/io/ByteChannel;

.field private final delegate:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteChannel;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Lio/ktor/utils/io/ChannelJob;->channel:Lio/ktor/utils/io/ByteChannel;

    return-void
.end method


# virtual methods
.method public attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;
    .locals 1

    .line 0
    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;

    move-result-object p1

    return-object p1
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/CoroutineContext$Element;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1

    .line 0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext$Element;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lio/ktor/utils/io/ByteChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->channel:Lio/ktor/utils/io/ByteChannel;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lio/ktor/utils/io/ChannelJob;->getChannel()Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lkotlinx/coroutines/Job;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 0
    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 0
    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/Job;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public isActive()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    return v0
.end method

.method public join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext$Element;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public start()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelJob["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/utils/io/ChannelJob;->delegate:Lkotlinx/coroutines/Job;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
