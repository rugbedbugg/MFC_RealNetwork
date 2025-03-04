.class final Lcom/bumptech/glide/integration/ktx/FlowTarget;
.super Ljava/lang/Object;
.source "Flows.kt"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field private volatile currentRequest:Lcom/bumptech/glide/request/Request;

.field private volatile lastResource:Ljava/lang/Object;

.field private volatile resolvedSize:Lcom/bumptech/glide/integration/ktx/Size;

.field private final scope:Lkotlinx/coroutines/channels/ProducerScope;

.field private final size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

.field private final sizeReadyCallbacks:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)V
    .locals 6

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->sizeReadyCallbacks:Ljava/util/List;

    .line 272
    instance-of v0, p2, Lcom/bumptech/glide/integration/ktx/ImmediateGlideSize;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/bumptech/glide/integration/ktx/ImmediateGlideSize;

    invoke-virtual {p2}, Lcom/bumptech/glide/integration/ktx/ImmediateGlideSize;->getSize()Lcom/bumptech/glide/integration/ktx/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->resolvedSize:Lcom/bumptech/glide/integration/ktx/Size;

    goto :goto_0

    .line 277
    :cond_0
    instance-of p2, p2, Lcom/bumptech/glide/integration/ktx/AsyncGlideSize;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 278
    new-instance v3, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p2}, Lcom/bumptech/glide/integration/ktx/FlowTarget$1;-><init>(Lcom/bumptech/glide/integration/ktx/FlowTarget;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic access$getSize$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;)Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    return-object p0
.end method

.method public static final synthetic access$getSizeReadyCallbacks$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;)Ljava/util/List;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->sizeReadyCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setResolvedSize$p(Lcom/bumptech/glide/integration/ktx/FlowTarget;Lcom/bumptech/glide/integration/ktx/Size;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->resolvedSize:Lcom/bumptech/glide/integration/ktx/Size;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->currentRequest:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->resolvedSize:Lcom/bumptech/glide/integration/ktx/Size;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/ktx/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/ktx/Size;->getHeight()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void

    .line 330
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->resolvedSize:Lcom/bumptech/glide/integration/ktx/Size;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/ktx/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/ktx/Size;->getHeight()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->sizeReadyCallbacks:Ljava/util/List;

    .line 335
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    .line 0
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->lastResource:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    .line 320
    new-instance v1, Lcom/bumptech/glide/integration/ktx/Placeholder;

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->CLEARED:Lcom/bumptech/glide/integration/ktx/Status;

    invoke-direct {v1, v2, p1}, Lcom/bumptech/glide/integration/ktx/Placeholder;-><init>(Lcom/bumptech/glide/integration/ktx/Status;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    .line 303
    new-instance v1, Lcom/bumptech/glide/integration/ktx/Placeholder;

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->FAILED:Lcom/bumptech/glide/integration/ktx/Status;

    invoke-direct {v1, v2, p1}, Lcom/bumptech/glide/integration/ktx/Placeholder;-><init>(Lcom/bumptech/glide/integration/ktx/Status;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->lastResource:Ljava/lang/Object;

    iget-object p2, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->currentRequest:Lcom/bumptech/glide/request/Request;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 360
    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    .line 361
    invoke-interface {p2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p2

    new-instance p3, Lcom/bumptech/glide/integration/ktx/Resource;

    sget-object p4, Lcom/bumptech/glide/integration/ktx/Status;->FAILED:Lcom/bumptech/glide/integration/ktx/Status;

    invoke-direct {p3, p4, p1}, Lcom/bumptech/glide/integration/ktx/Resource;-><init>(Lcom/bumptech/glide/integration/ktx/Status;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->lastResource:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    .line 299
    new-instance v1, Lcom/bumptech/glide/integration/ktx/Placeholder;

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->RUNNING:Lcom/bumptech/glide/integration/ktx/Status;

    invoke-direct {v1, v2, p1}, Lcom/bumptech/glide/integration/ktx/Placeholder;-><init>(Lcom/bumptech/glide/integration/ktx/Status;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->lastResource:Ljava/lang/Object;

    iget-object p2, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    .line 309
    new-instance v0, Lcom/bumptech/glide/integration/ktx/Resource;

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->currentRequest:Lcom/bumptech/glide/request/Request;

    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/bumptech/glide/integration/ktx/Status;->SUCCEEDED:Lcom/bumptech/glide/integration/ktx/Status;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/bumptech/glide/integration/ktx/Status;->RUNNING:Lcom/bumptech/glide/integration/ktx/Status;

    .line 309
    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/integration/ktx/Resource;-><init>(Lcom/bumptech/glide/integration/ktx/Status;Ljava/lang/Object;)V

    .line 308
    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 0
    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->sizeReadyCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowTarget;->currentRequest:Lcom/bumptech/glide/request/Request;

    return-void
.end method
