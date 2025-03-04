.class final Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt;->pointerScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

.field final synthetic $scrollLogic:Landroidx/compose/runtime/State;

.field synthetic J$0:J

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->$nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->$scrollLogic:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, v0, v1, p3}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->invoke-LuvzFrg(Lkotlinx/coroutines/CoroutineScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-LuvzFrg(Lkotlinx/coroutines/CoroutineScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->$nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->$scrollLogic:Landroidx/compose/runtime/State;

    invoke-direct {p1, v0, v1, p4}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-wide p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->J$0:J

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->label:I

    if-nez v0, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->J$0:J

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->$nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

    .line 285
    invoke-interface {p1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1$1;

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1;->$scrollLogic:Landroidx/compose/runtime/State;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, v1, v6}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3$1$1;-><init>(Landroidx/compose/runtime/State;JLkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 288
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 65535
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
