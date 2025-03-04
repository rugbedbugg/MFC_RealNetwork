.class final Lcom/bumptech/glide/integration/ktx/FlowTarget$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Flows.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/ktx/FlowTarget;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bumptech/glide/integration/ktx/FlowTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/ktx/FlowTarget;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->this$0:Lcom/bumptech/glide/integration/ktx/FlowTarget;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->this$0:Lcom/bumptech/glide/integration/ktx/FlowTarget;

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;-><init>(Lcom/bumptech/glide/integration/ktx/FlowTarget;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->L$0:Ljava/lang/Object;

    .line 278
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 289
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->this$0:Lcom/bumptech/glide/integration/ktx/FlowTarget;

    .line 279
    invoke-static {v1}, Lcom/bumptech/glide/integration/ktx/FlowTarget;->access$getSize$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;)Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/integration/ktx/AsyncGlideSize;

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/ktx/AsyncGlideSize;->getAsyncSize()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->label:I

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 278
    :goto_0
    check-cast p1, Lcom/bumptech/glide/integration/ktx/Size;

    .line 280
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;->this$0:Lcom/bumptech/glide/integration/ktx/FlowTarget;

    .line 281
    monitor-enter v0

    .line 282
    :try_start_0
    invoke-static {v2, p1}, Lcom/bumptech/glide/integration/ktx/FlowTarget;->access$setResolvedSize$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;Lcom/bumptech/glide/integration/ktx/Size;)V

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/bumptech/glide/integration/ktx/FlowTarget;->access$getSizeReadyCallbacks$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 284
    invoke-static {v2}, Lcom/bumptech/glide/integration/ktx/FlowTarget;->access$getSizeReadyCallbacks$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 285
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit v0

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 286
    check-cast v0, Ljava/lang/Iterable;

    .line 394
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 287
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/ktx/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/bumptech/glide/integration/ktx/Size;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_1

    .line 289
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 281
    monitor-exit v0

    throw p1
.end method
