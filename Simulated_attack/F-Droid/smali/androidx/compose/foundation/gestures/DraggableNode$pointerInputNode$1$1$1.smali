.class final Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-direct {v0, v1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 303
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :goto_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :goto_1
    move-object v3, p0

    goto/16 :goto_9

    :pswitch_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    goto :goto_0

    :goto_2
    move-object p1, v1

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v3

    move-object v3, p0

    goto/16 :goto_7

    :catch_1
    move-object v1, v3

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, p0

    goto :goto_6

    :pswitch_5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, p0

    goto :goto_5

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    :goto_3
    move-object v1, p0

    .line 304
    :goto_4
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 305
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {v4}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    iput-object p1, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    invoke-interface {v4, v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    return-object v0

    :cond_0
    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    .line 303
    :goto_5
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 306
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    if-eqz v1, :cond_6

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 307
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iput-object v4, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    invoke-static {v1, v4, p1, v3}, Landroidx/compose/foundation/gestures/DraggableNode;->access$processDragStart(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, v5

    :goto_6
    :try_start_2
    iget-object p1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 309
    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getState$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object p1

    sget-object v5, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v6, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;

    iget-object v7, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-direct {v6, v1, v7, v2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    invoke-interface {p1, v5, v6, v3}, Landroidx/compose/foundation/gestures/DraggableState;->drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p1, v4

    .line 315
    :goto_7
    :try_start_3
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const-string v5, "null cannot be cast to non-null type androidx.compose.foundation.gestures.DragEvent.DragStopped"

    .line 316
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iput-object p1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    invoke-static {v4, p1, v1, v3}, Landroidx/compose/foundation/gestures/DraggableNode;->access$processDragStop(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :catch_2
    move-object v1, p1

    goto :goto_9

    .line 317
    :cond_3
    instance-of v1, v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    if-eqz v1, :cond_4

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iput-object p1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    .line 318
    invoke-static {v1, p1, v3}, Landroidx/compose/foundation/gestures/DraggableNode;->access$processDragCancel(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_8
    move-object v1, v3

    goto/16 :goto_4

    :catch_3
    move-object v1, v4

    :goto_9
    iget-object p1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iput-object v1, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v3, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$1;->label:I

    .line 321
    invoke-static {p1, v1, v3}, Landroidx/compose/foundation/gestures/DraggableNode;->access$processDragCancel(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object p1, v1

    goto :goto_8

    :cond_6
    move-object v1, v3

    move-object p1, v4

    goto/16 :goto_4

    .line 324
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
