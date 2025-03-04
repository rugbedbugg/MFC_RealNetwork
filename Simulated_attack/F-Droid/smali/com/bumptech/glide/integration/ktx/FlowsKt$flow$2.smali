.class final Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Flows.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/ktx/FlowsKt;->flow(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $requestBuilder:Lcom/bumptech/glide/RequestBuilder;

.field final synthetic $requestManager:Lcom/bumptech/glide/RequestManager;

.field final synthetic $size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/RequestManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    iput-object p2, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    iput-object p3, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$requestManager:Lcom/bumptech/glide/RequestManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 0
    new-instance v0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    iget-object v2, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;-><init>(Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/RequestManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 225
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 226
    new-instance v1, Lcom/bumptech/glide/integration/ktx/FlowTarget;

    iget-object v3, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    invoke-direct {v1, p1, v3}, Lcom/bumptech/glide/integration/ktx/FlowTarget;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)V

    iget-object v3, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 227
    invoke-static {v3, v1}, Lcom/bumptech/glide/GlideIntegrationKt;->intoDirect(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/target/Target;)V

    .line 228
    new-instance v3, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;

    iget-object v4, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->$requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-direct {v3, v4, v1}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/integration/ktx/FlowTarget;)V

    iput v2, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 229
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
