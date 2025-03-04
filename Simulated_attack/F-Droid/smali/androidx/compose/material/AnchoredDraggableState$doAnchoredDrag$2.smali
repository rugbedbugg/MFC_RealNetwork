.class final Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AnchoredDraggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AnchoredDraggableState;->doAnchoredDrag(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function3;

.field final synthetic $dragPriority:Landroidx/compose/foundation/MutatePriority;

.field final synthetic $targetValue:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/material/AnchoredDraggableState;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    iput-object p3, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$dragPriority:Landroidx/compose/foundation/MutatePriority;

    iput-object p4, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$block:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 0
    new-instance p1, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    iget-object v3, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$dragPriority:Landroidx/compose/foundation/MutatePriority;

    iget-object v4, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$block:Lkotlin/jvm/functions/Function3;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->label:I

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    .line 438
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 439
    invoke-virtual {p1}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 457
    invoke-virtual {p1}, Landroidx/compose/material/AnchoredDraggableState;->getConfirmValueChange$material_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    .line 458
    invoke-static {p1, v0}, Landroidx/compose/material/AnchoredDraggableState;->access$setCurrentValue(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    :try_start_1
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 441
    invoke-static {p1}, Landroidx/compose/material/AnchoredDraggableState;->access$getDragMutex$p(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/material/InternalMutatorMutex;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$dragPriority:Landroidx/compose/foundation/MutatePriority;

    new-instance v5, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2$1;

    iget-object v6, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    iget-object v7, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    iget-object v8, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$block:Lkotlin/jvm/functions/Function3;

    invoke-direct {v5, v6, v7, v8, v4}, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2$1;-><init>(Ljava/lang/Object;Landroidx/compose/material/AnchoredDraggableState;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->label:I

    invoke-virtual {p1, v1, v5, p0}, Landroidx/compose/material/InternalMutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 446
    invoke-static {p1, v4}, Landroidx/compose/material/AnchoredDraggableState;->access$setAnimationTarget(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 448
    invoke-virtual {p1}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object p1

    .line 449
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 288
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getOffset()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_6

    goto :goto_2

    :cond_7
    move-object v1, v4

    :goto_2
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_8

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_9

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 453
    invoke-virtual {p1}, Landroidx/compose/material/AnchoredDraggableState;->getConfirmValueChange$material_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 454
    invoke-static {p1, v4}, Landroidx/compose/material/AnchoredDraggableState;->access$setCurrentValue(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    .line 460
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_4
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->$targetValue:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 446
    invoke-static {v0, v4}, Landroidx/compose/material/AnchoredDraggableState;->access$setAnimationTarget(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 448
    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Landroidx/compose/material/AnchoredDraggableState;->getOffset()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_b

    goto :goto_5

    :cond_c
    move-object v3, v4

    :goto_5
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_d

    .line 451
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    :cond_d
    if-eqz v4, :cond_e

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 453
    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getConfirmValueChange$material_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$doAnchoredDrag$2;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 454
    invoke-static {v0, v4}, Landroidx/compose/material/AnchoredDraggableState;->access$setCurrentValue(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    :cond_e
    throw p1
.end method
