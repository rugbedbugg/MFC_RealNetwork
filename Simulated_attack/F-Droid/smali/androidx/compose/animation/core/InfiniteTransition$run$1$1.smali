.class final Landroidx/compose/animation/core/InfiniteTransition$run$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InfiniteTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/InfiniteTransition$run$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $toolingOverride:Landroidx/compose/runtime/MutableState;

.field final synthetic this$0:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 181
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->invoke(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    .line 182
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 183
    invoke-static {v2}, Landroidx/compose/animation/core/InfiniteTransition;->access$getStartTimeNanos$p(Landroidx/compose/animation/core/InfiniteTransition;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 184
    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/animation/core/SuspendAnimationKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v4

    cmpg-float v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 186
    invoke-static {v2, p1, p2}, Landroidx/compose/animation/core/InfiniteTransition;->access$setStartTimeNanos$p(Landroidx/compose/animation/core/InfiniteTransition;J)V

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 187
    invoke-static {p1}, Landroidx/compose/animation/core/InfiniteTransition;->access$get_animations$p(Landroidx/compose/animation/core/InfiniteTransition;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    if-lez p2, :cond_3

    .line 464
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    move v2, v3

    .line 466
    :cond_2
    aget-object v4, p1, v2

    check-cast v4, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 188
    invoke-virtual {v4}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->reset$animation_core_release()V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_2

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    .line 190
    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/animation/core/SuspendAnimationKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result p2

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :goto_1
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 192
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 194
    invoke-static {p1}, Landroidx/compose/animation/core/InfiniteTransition;->access$get_animations$p(Landroidx/compose/animation/core/InfiniteTransition;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    if-lez p2, :cond_6

    .line 464
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    .line 466
    :cond_4
    aget-object v0, p1, v3

    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 195
    invoke-virtual {v0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->skipToEnd$animation_core_release()V

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p2, :cond_4

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 198
    invoke-static {p1}, Landroidx/compose/animation/core/InfiniteTransition;->access$getStartTimeNanos$p(Landroidx/compose/animation/core/InfiniteTransition;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-float p1, v0

    iget-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 199
    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr p1, p2

    float-to-long p1, p1

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 200
    invoke-static {v0, p1, p2}, Landroidx/compose/animation/core/InfiniteTransition;->access$onFrame(Landroidx/compose/animation/core/InfiniteTransition;J)V

    :cond_6
    :goto_2
    return-void
.end method
