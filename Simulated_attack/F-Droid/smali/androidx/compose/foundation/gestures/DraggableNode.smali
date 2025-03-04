.class public final Landroidx/compose/foundation/gestures/DraggableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# instance fields
.field private final _canDrag:Lkotlin/jvm/functions/Function1;

.field private final _startDragImmediately:Lkotlin/jvm/functions/Function0;

.field private canDrag:Lkotlin/jvm/functions/Function1;

.field private final channel:Lkotlinx/coroutines/channels/Channel;

.field private dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field private enabled:Z

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private onDragStarted:Lkotlin/jvm/functions/Function3;

.field private onDragStopped:Lkotlin/jvm/functions/Function3;

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private reverseDirection:Z

.field private startDragImmediately:Lkotlin/jvm/functions/Function0;

.field private state:Landroidx/compose/foundation/gestures/DraggableState;

.field private final velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canDrag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDragImmediately"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStarted"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStopped"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    .line 295
    new-instance p1, Landroidx/compose/foundation/gestures/DraggableNode$_canDrag$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DraggableNode$_canDrag$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    .line 296
    new-instance p1, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 297
    new-instance p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 299
    new-instance p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    const p1, 0x7fffffff

    const/4 p3, 0x6

    .line 368
    invoke-static {p1, p2, p2, p3, p2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public static final synthetic access$getCanDrag$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getEnabled$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    return p0
.end method

.method public static final synthetic access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public static final synthetic access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    return p0
.end method

.method public static final synthetic access$getStartDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    return-object p0
.end method

.method public static final synthetic access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    return-object p0
.end method

.method public static final synthetic access$get_canDrag$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$get_startDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$processDragCancel(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode;->processDragCancel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processDragStart(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DraggableNode;->processDragStart(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processDragStop(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DraggableNode;->processDragStop(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final disposeInteractionSource()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    .line 459
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    invoke-interface {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_1
    return-void
.end method

.method private final processDragCancel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 449
    iget v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_4

    .line 451
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v6, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 452
    :goto_1
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    goto :goto_2

    :cond_5
    move-object v2, p0

    .line 454
    :goto_2
    iget-object p2, v2, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    sget-object v2, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v2

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    invoke-interface {p2, p1, v2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 455
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final processDragStart(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 431
    iget v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p3, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_5

    .line 433
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v6, p3}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 435
    :goto_1
    new-instance p3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {p3}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 436
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v5, :cond_7

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    invoke-interface {v5, p3, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, v2

    move-object v2, p1

    move-object p1, p3

    :goto_2
    move-object p3, p1

    move-object p1, v2

    move-object v2, v4

    .line 437
    :cond_7
    iput-object p3, v2, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 438
    iget-object p3, v2, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->getStartPoint-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p2

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 439
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final processDragStop(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 441
    iget v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p3, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_4

    .line 443
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v6, p3}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 444
    :goto_1
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    goto :goto_2

    :cond_5
    move-object v2, p0

    .line 446
    :goto_2
    iget-object p3, v2, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->getVelocity-9UxMQ8M()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p2

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 447
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public synthetic interceptOutOfBoundsChildEvents()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$interceptOutOfBoundsChildEvents(Landroidx/compose/ui/node/PointerInputModifierNode;)Z

    move-result v0

    return v0
.end method

.method public onCancelPointerInput()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 384
    invoke-interface {v0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    return-void
.end method

.method public synthetic onDensityChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$onDensityChange(Landroidx/compose/ui/node/PointerInputModifierNode;)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 372
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 380
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public synthetic onViewConfigurationChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$onViewConfigurationChange(Landroidx/compose/ui/node/PointerInputModifierNode;)V

    return-void
.end method

.method public synthetic sharePointerInputWithSiblings()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$sharePointerInputWithSiblings(Landroidx/compose/ui/node/PointerInputModifierNode;)Z

    move-result v0

    return v0
.end method

.method public final update(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canDrag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDragImmediately"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStarted"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStopped"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 399
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p2, p3, :cond_1

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move p1, v1

    :cond_1
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    if-eq p2, p4, :cond_2

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    if-nez p4, :cond_3

    .line 411
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    goto :goto_1

    :cond_2
    move v1, p1

    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 415
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 416
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :cond_4
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    if-eq p1, p9, :cond_5

    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    :goto_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 427
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    :cond_6
    return-void
.end method
