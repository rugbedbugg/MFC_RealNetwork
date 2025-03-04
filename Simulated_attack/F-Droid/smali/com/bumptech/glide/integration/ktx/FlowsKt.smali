.class public abstract Lcom/bumptech/glide/integration/ktx/FlowsKt;
.super Ljava/lang/Object;
.source "Flows.kt"


# direct methods
.method private static final flow(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 224
    invoke-static {p0}, Lcom/bumptech/glide/GlideIntegrationKt;->requestManager(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;-><init>(Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/RequestManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final flowResolvable(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {p0, p1}, Lcom/bumptech/glide/integration/ktx/FlowsKt;->flow(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final isValidGlideDimension(I)Z
    .locals 0

    .line 392
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result p0

    return p0
.end method
