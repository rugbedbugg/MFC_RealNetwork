.class final Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic;->onDragStopped-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field synthetic J$0:J

.field J$1:J

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {v0, v1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->invoke-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    .line 462
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v0

    move-object v0, p1

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    move-wide v7, v4

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 463
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getNestedScrollDispatcher()Landroidx/compose/runtime/State;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-wide v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iput v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    invoke-virtual {v0, v4, v5, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    return-object v6

    :cond_4
    move-wide v3, v4

    :goto_0
    check-cast v0, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v7

    .line 465
    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v7

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-wide v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iput-wide v7, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    .line 466
    invoke-virtual {v0, v7, v8, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_5

    return-object v6

    :cond_5
    move-wide v11, v3

    move-wide v2, v7

    move-wide v7, v11

    :goto_1
    check-cast v0, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v9

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 468
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getNestedScrollDispatcher()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 469
    invoke-static {v2, v3, v9, v10}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v2

    iput-wide v7, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iput-wide v9, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iput v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    move-wide v1, v2

    move-wide v3, v9

    move-object v5, p0

    .line 468
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_6

    return-object v6

    :cond_6
    move-wide v2, v7

    :goto_2
    check-cast v0, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    .line 472
    invoke-static {v9, v10, v0, v1}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v0

    .line 473
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0
.end method
