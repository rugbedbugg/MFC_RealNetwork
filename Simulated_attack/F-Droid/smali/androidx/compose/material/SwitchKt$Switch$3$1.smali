.class final Landroidx/compose/material/SwitchKt$Switch$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Switch.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

.field final synthetic $currentChecked$delegate:Landroidx/compose/runtime/State;

.field final synthetic $currentOnCheckedChange$delegate:Landroidx/compose/runtime/State;

.field final synthetic $forceAnimationCheck$delegate:Landroidx/compose/runtime/MutableState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    iput-object p2, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$currentChecked$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$currentOnCheckedChange$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$forceAnimationCheck$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 0
    new-instance p1, Landroidx/compose/material/SwitchKt$Switch$3$1;

    iget-object v1, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    iget-object v2, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$currentChecked$delegate:Landroidx/compose/runtime/State;

    iget-object v3, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$currentOnCheckedChange$delegate:Landroidx/compose/runtime/State;

    iget-object v4, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$forceAnimationCheck$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SwitchKt$Switch$3$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwitchKt$Switch$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwitchKt$Switch$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SwitchKt$Switch$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SwitchKt$Switch$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    new-instance p1, Landroidx/compose/material/SwitchKt$Switch$3$1$1;

    iget-object v1, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-direct {p1, v1}, Landroidx/compose/material/SwitchKt$Switch$3$1$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 126
    new-instance v1, Landroidx/compose/material/SwitchKt$Switch$3$1$2;

    iget-object v3, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$currentChecked$delegate:Landroidx/compose/runtime/State;

    iget-object v4, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$currentOnCheckedChange$delegate:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->$forceAnimationCheck$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Landroidx/compose/material/SwitchKt$Switch$3$1$2;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Landroidx/compose/material/SwitchKt$Switch$3$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 132
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
