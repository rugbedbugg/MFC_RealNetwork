.class final Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableNode;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DraggableNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 296
    invoke-static {v0}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getStartDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 296
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
