.class final Landroidx/compose/foundation/gestures/MouseWheelScrollNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# instance fields
.field private mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

.field private final pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private scrollingLogicState:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollConfig;)V
    .locals 1

    const-string v0, "scrollingLogicState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mouseWheelScrollConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollingLogicState:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 335
    new-instance p1, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$pointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    return-void
.end method


# virtual methods
.method public final getMouseWheelScrollConfig()Landroidx/compose/foundation/gestures/ScrollConfig;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    return-object v0
.end method

.method public final getScrollingLogicState()Landroidx/compose/runtime/State;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollingLogicState:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public synthetic interceptOutOfBoundsChildEvents()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$interceptOutOfBoundsChildEvents(Landroidx/compose/ui/node/PointerInputModifierNode;)Z

    move-result v0

    return v0
.end method

.method public onCancelPointerInput()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 364
    invoke-interface {v0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    return-void
.end method

.method public synthetic onDensityChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$onDensityChange(Landroidx/compose/ui/node/PointerInputModifierNode;)V

    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 360
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public synthetic onViewConfigurationChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$onViewConfigurationChange(Landroidx/compose/ui/node/PointerInputModifierNode;)V

    return-void
.end method

.method public final setMouseWheelScrollConfig(Landroidx/compose/foundation/gestures/ScrollConfig;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    return-void
.end method

.method public final setScrollingLogicState(Landroidx/compose/runtime/State;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollingLogicState:Landroidx/compose/runtime/State;

    return-void
.end method

.method public synthetic sharePointerInputWithSiblings()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$sharePointerInputWithSiblings(Landroidx/compose/ui/node/PointerInputModifierNode;)Z

    move-result v0

    return v0
.end method
