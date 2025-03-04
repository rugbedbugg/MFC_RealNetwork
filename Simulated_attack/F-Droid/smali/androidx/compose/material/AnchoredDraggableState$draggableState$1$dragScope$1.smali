.class public final Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;
.super Ljava/lang/Object;
.source "AnchoredDraggable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AnchoredDraggableState$draggableState$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material/AnchoredDraggableState;


# direct methods
.method constructor <init>(Landroidx/compose/material/AnchoredDraggableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy(F)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 139
    invoke-static {v0}, Landroidx/compose/material/AnchoredDraggableState;->access$getAnchoredDragScope$p(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/material/AnchoredDragScope;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 140
    invoke-virtual {v1, p1}, Landroidx/compose/material/AnchoredDraggableState;->newOffsetForDelta$material_release(F)F

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/material/AnchoredDragScope$-CC;->dragTo$default(Landroidx/compose/material/AnchoredDragScope;FFILjava/lang/Object;)V

    return-void
.end method
