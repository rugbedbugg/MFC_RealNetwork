.class final Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/MouseWheelScrollNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollNode;

    invoke-direct {v0, v1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->L$0:Ljava/lang/Object;

    .line 336
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v1, p1, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->label:I

    .line 338
    invoke-static {v1, p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$awaitScrollEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v9, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v1

    move-object v1, v9

    .line 336
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 339
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_4

    .line 35
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 87
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 339
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    xor-int/2addr v8, v2

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollNode;

    .line 340
    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->getMouseWheelScrollConfig()Landroidx/compose/foundation/gestures/ScrollConfig;

    move-result-object v4

    iget-object v5, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollNode;

    .line 341
    invoke-interface {v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    move-result-wide v7

    invoke-interface {v4, v3, p1, v7, v8}, Landroidx/compose/foundation/gestures/ScrollConfig;->calculateMouseWheelScroll-8xgXZGE(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J

    move-result-wide v7

    .line 342
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->getScrollingLogicState()Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 343
    invoke-virtual {v4, v7, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result v5

    .line 344
    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getScrollableState()Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v4

    invoke-interface {v4, v5}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_5

    goto :goto_4

    .line 346
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v6, v4, :cond_6

    .line 35
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 346
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_0
.end method
