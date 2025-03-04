.class public final Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;
.super Ljava/lang/Object;
.source "AnchoredDraggable.kt"

# interfaces
.implements Landroidx/compose/material/AnchoredDragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
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

    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragTo(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 387
    invoke-static {v0, p1}, Landroidx/compose/material/AnchoredDraggableState;->access$setOffset(Landroidx/compose/material/AnchoredDraggableState;F)V

    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;->this$0:Landroidx/compose/material/AnchoredDraggableState;

    .line 388
    invoke-static {p1, p2}, Landroidx/compose/material/AnchoredDraggableState;->access$setLastVelocity(Landroidx/compose/material/AnchoredDraggableState;F)V

    return-void
.end method
