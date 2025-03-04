.class final Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1$1;
.super Ljava/lang/Object;
.source "GlidePainter.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/integration/compose/GlidePainter;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/compose/GlidePainter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1$1;->this$0:Lcom/bumptech/glide/integration/compose/GlidePainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/bumptech/glide/integration/ktx/GlideFlowInstant;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p2, p0, Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1$1;->this$0:Lcom/bumptech/glide/integration/compose/GlidePainter;

    .line 82
    instance-of v0, p1, Lcom/bumptech/glide/integration/ktx/Resource;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/integration/ktx/Resource;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/ktx/Resource;->getResource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 83
    :cond_0
    instance-of v0, p1, Lcom/bumptech/glide/integration/ktx/Placeholder;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/integration/ktx/Placeholder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/ktx/Placeholder;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    :goto_0
    invoke-static {p2, v0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->access$updateDelegate(Lcom/bumptech/glide/integration/compose/GlidePainter;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1$1;->this$0:Lcom/bumptech/glide/integration/compose/GlidePainter;

    .line 86
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/ktx/GlideFlowInstant;->getStatus()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/integration/compose/GlidePainter;->setStatus$compose_release(Lcom/bumptech/glide/integration/ktx/Status;)V

    .line 87
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 83
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Lcom/bumptech/glide/integration/ktx/GlideFlowInstant;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1$1;->emit(Lcom/bumptech/glide/integration/ktx/GlideFlowInstant;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
