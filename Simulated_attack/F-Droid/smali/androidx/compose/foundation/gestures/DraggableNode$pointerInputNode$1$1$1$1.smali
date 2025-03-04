.class final Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lkotlin/jvm/internal/Ref$ObjectRef;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->$event:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->$event:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/foundation/gestures/DragScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->invoke(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 309
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/DragScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/DragScope;

    move-object v3, p1

    move-object p1, p0

    :goto_0
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->$event:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 310
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    if-nez v4, :cond_5

    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    if-nez v4, :cond_5

    .line 311
    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    if-eqz v4, :cond_2

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->getDelta-F1C5BW0()J

    move-result-wide v5

    invoke-static {v4}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v1

    invoke-interface {v3, v1}, Landroidx/compose/foundation/gestures/DragScope;->dragBy(F)V

    :cond_3
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->$event:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 312
    invoke-static {v4}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    iput-object v3, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->L$1:Ljava/lang/Object;

    iput v2, p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;->label:I

    invoke-interface {v4, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v7, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v7

    :goto_2
    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object p1, v0

    move-object v0, v1

    move-object v3, v4

    goto :goto_0

    .line 314
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
