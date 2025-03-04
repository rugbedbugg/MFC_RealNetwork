.class public final Lcom/bumptech/glide/integration/compose/SizeObserver;
.super Ljava/lang/Object;
.source "Sizes.kt"


# instance fields
.field private final size:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/compose/SizeObserver;->size:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final getSize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/SizeObserver;->size:Lkotlinx/coroutines/CompletableDeferred;

    .line 21
    invoke-interface {v0, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setSize(Lcom/bumptech/glide/integration/ktx/Size;)V
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/SizeObserver;->size:Lkotlinx/coroutines/CompletableDeferred;

    .line 17
    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
