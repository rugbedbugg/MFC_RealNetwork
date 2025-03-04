.class final Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
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
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->label:I

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_0

    iget v9, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->I$0:I

    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$2:Ljava/lang/Object;

    .line 326
    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroidx/compose/foundation/gestures/DraggableNode;

    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    move-object v14, v1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move v5, v9

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v14, v1

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    move-object v14, v1

    :goto_0
    move-object v15, v2

    move-object v2, v0

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    move-object v15, v1

    :goto_1
    iget-object v9, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 327
    invoke-static {v9}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 329
    invoke-static {v9}, Landroidx/compose/foundation/gestures/DraggableNode;->access$get_canDrag$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function1;

    move-result-object v10

    iget-object v9, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 330
    invoke-static {v9}, Landroidx/compose/foundation/gestures/DraggableNode;->access$get_startDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;

    move-result-object v11

    iget-object v9, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 331
    invoke-static {v9}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v12

    iget-object v9, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 332
    invoke-static {v9}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v13

    iput-object v0, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    iput-object v8, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$1:Ljava/lang/Object;

    iput-object v8, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$2:Ljava/lang/Object;

    iput v7, v15, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->label:I

    move-object v9, v0

    move-object v14, v15

    .line 328
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_3

    return-object v2

    :cond_3
    move-object v14, v15

    goto :goto_0

    .line 326
    :goto_2
    check-cast v9, Lkotlin/Pair;

    if-eqz v9, :cond_a

    iget-object v12, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iget-object v13, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 337
    :try_start_1
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 338
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v16

    .line 339
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    .line 340
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v9

    .line 341
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z

    move-result v18

    .line 342
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v19

    iput-object v2, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    iput-object v12, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$1:Ljava/lang/Object;

    iput-object v13, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$2:Ljava/lang/Object;

    iput v5, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->I$0:I

    iput v6, v14, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->label:I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-wide/from16 v12, v16

    move-object/from16 v22, v14

    move-object v14, v0

    move-object v3, v15

    move-object v15, v9

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    .line 336
    :try_start_2
    invoke-static/range {v10 .. v18}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    move-object v12, v2

    move-object v2, v3

    move v9, v5

    move-object/from16 v11, v20

    move-object/from16 v10, v21

    move-object/from16 v14, v22

    :goto_3
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 349
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-9UxMQ8M()J

    move-result-wide v9

    .line 350
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 351
    new-instance v0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    invoke-static {v9, v10, v3}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide v9

    invoke-direct {v0, v9, v10, v8}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 355
    :goto_5
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    invoke-interface {v3, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v12

    move-object v15, v14

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move-object/from16 v11, v20

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v12, v2

    move-object v2, v3

    move-object/from16 v11, v20

    move-object/from16 v10, v21

    move-object/from16 v14, v22

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v3, v15

    move-object v12, v2

    move-object v2, v3

    move-object/from16 v11, v20

    move-object/from16 v10, v21

    .line 346
    :goto_7
    :try_start_4
    invoke-static {v10}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_7

    .line 353
    :cond_6
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    goto :goto_5

    .line 346
    :cond_7
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v5, :cond_9

    .line 349
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-9UxMQ8M()J

    move-result-wide v2

    .line 350
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 351
    new-instance v5, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_9
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide v2

    invoke-direct {v5, v2, v3, v8}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    .line 353
    :cond_9
    sget-object v5, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 355
    :goto_a
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    invoke-interface {v2, v5}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_a
    move-object/from16 v22, v14

    move-object v3, v15

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v15, v22

    goto/16 :goto_1

    .line 359
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
