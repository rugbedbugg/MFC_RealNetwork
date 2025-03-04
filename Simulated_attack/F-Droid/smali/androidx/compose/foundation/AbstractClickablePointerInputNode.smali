.class abstract Landroidx/compose/foundation/AbstractClickablePointerInputNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Clickable.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# instance fields
.field private final delayPressInteraction:Lkotlin/jvm/functions/Function0;

.field private enabled:Z

.field private final interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private onClick:Lkotlin/jvm/functions/Function0;

.field private final pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;


# direct methods
.method private constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;)V
    .locals 0

    .line 839
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->enabled:Z

    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->onClick:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 842
    new-instance p1, Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;-><init>(Landroidx/compose/foundation/AbstractClickablePointerInputNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->delayPressInteraction:Lkotlin/jvm/functions/Function0;

    .line 846
    new-instance p1, Landroidx/compose/foundation/AbstractClickablePointerInputNode$pointerInputNode$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/foundation/AbstractClickablePointerInputNode$pointerInputNode$1;-><init>(Landroidx/compose/foundation/AbstractClickablePointerInputNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;)V

    return-void
.end method


# virtual methods
.method public synthetic getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode$-CC;->$default$getCurrent(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final getEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->enabled:Z

    return v0
.end method

.method protected final getInteractionData()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    return-object v0
.end method

.method protected final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->onClick:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public synthetic getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode$-CC;->$default$getProvidedValues(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;)Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    return-object v0
.end method

.method protected final handlePressInteraction-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    iget-object v3, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    iget-object v5, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->delayPressInteraction:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-wide v1, p2

    move-object v6, p4

    .line 864
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt;->access$handlePressInteraction-EPk0efs(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 871
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
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

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 859
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

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 855
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public synthetic onViewConfigurationChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$onViewConfigurationChange(Landroidx/compose/ui/node/PointerInputModifierNode;)V

    return-void
.end method

.method protected abstract pointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method protected final setEnabled(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->enabled:Z

    return-void
.end method

.method protected final setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method

.method protected final setOnClick(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic sharePointerInputWithSiblings()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/PointerInputModifierNode$-CC;->$default$sharePointerInputWithSiblings(Landroidx/compose/ui/node/PointerInputModifierNode;)Z

    move-result v0

    return v0
.end method
