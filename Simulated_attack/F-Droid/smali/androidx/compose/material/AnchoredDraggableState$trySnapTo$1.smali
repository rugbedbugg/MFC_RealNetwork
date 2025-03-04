.class final Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnchoredDraggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AnchoredDraggableState;->trySnapTo$material_release(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $targetValue:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/material/AnchoredDraggableState;


# direct methods
.method constructor <init>(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;->$targetValue:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 484
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 485
    invoke-static {v0}, Landroidx/compose/material/AnchoredDraggableState;->access$getAnchoredDragScope$p(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/material/AnchoredDragScope;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState$trySnapTo$1;->$targetValue:Ljava/lang/Object;

    .line 486
    invoke-virtual {v1}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 488
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Landroidx/compose/material/AnchoredDragScope$-CC;->dragTo$default(Landroidx/compose/material/AnchoredDragScope;FFILjava/lang/Object;)V

    .line 489
    invoke-static {v1, v6}, Landroidx/compose/material/AnchoredDraggableState;->access$setAnimationTarget(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    .line 491
    :cond_0
    invoke-static {v1, v2}, Landroidx/compose/material/AnchoredDraggableState;->access$setCurrentValue(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;)V

    return-void
.end method
