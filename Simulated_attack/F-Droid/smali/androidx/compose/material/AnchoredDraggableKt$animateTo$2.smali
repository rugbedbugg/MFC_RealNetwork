.class final Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AnchoredDraggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AnchoredDraggableKt;->animateTo(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $targetValue:Ljava/lang/Object;

.field final synthetic $this_animateTo:Landroidx/compose/material/AnchoredDraggableState;

.field final synthetic $velocity:F

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/material/AnchoredDraggableState;FLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$targetValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$this_animateTo:Landroidx/compose/material/AnchoredDraggableState;

    iput p3, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$velocity:F

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/material/AnchoredDragScope;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 0
    new-instance v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$targetValue:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$this_animateTo:Landroidx/compose/material/AnchoredDraggableState;

    iget v3, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$velocity:F

    invoke-direct {v0, v1, v2, v3, p3}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/AnchoredDraggableState;FLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/material/AnchoredDragScope;

    check-cast p2, Ljava/util/Map;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->invoke(Landroidx/compose/material/AnchoredDragScope;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 582
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material/AnchoredDragScope;

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$targetValue:Ljava/lang/Object;

    .line 583
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 585
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v4, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$this_animateTo:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v4}, Landroidx/compose/material/AnchoredDraggableState;->getOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$this_animateTo:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v4}, Landroidx/compose/material/AnchoredDraggableState;->getOffset()F

    move-result v4

    goto :goto_0

    :goto_1
    iput v5, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 586
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$velocity:F

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->$this_animateTo:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v1}, Landroidx/compose/material/AnchoredDraggableState;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v8

    new-instance v9, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;

    invoke-direct {v9, p1, v3}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;-><init>(Landroidx/compose/material/AnchoredDragScope;Lkotlin/jvm/internal/Ref$FloatRef;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->label:I

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->animate(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 595
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
