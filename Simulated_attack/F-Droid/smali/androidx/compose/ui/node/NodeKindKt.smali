.class public abstract Landroidx/compose/ui/node/NodeKindKt;
.super Ljava/lang/Object;
.source "NodeKind.kt"


# direct methods
.method public static final autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 223
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 2

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_0

    .line 237
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getSelfKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    invoke-static {p0, v1, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V

    .line 238
    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getSelfKindSet$ui_release()I

    move-result p0

    not-int p0, p0

    and-int/2addr p0, p1

    .line 234
    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 240
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 237
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v0

    and-int/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V

    :cond_1
    return-void
.end method

.method private static final autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 3

    if-nez p2, :cond_0

    .line 251
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getShouldAutoInvalidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 72
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 252
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_1

    .line 253
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-ne p2, v0, :cond_1

    .line 72
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 255
    invoke-static {p0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->onRelease()V

    :cond_1
    const/16 v1, 0x100

    .line 86
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 259
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_2

    .line 260
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_2
    const/4 v1, 0x4

    .line 74
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 262
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_3

    .line 263
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_3
    const/16 v1, 0x8

    .line 76
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 265
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_4

    .line 266
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_4
    const/16 v1, 0x40

    .line 82
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_5

    .line 268
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_5

    .line 269
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/ParentDataModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/ParentDataModifierNodeKt;->invalidateParentData(Landroidx/compose/ui/node/ParentDataModifierNode;)V

    :cond_5
    const/16 v1, 0x400

    .line 90
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    .line 271
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_7

    if-ne p2, v0, :cond_6

    .line 275
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->onReset()V

    goto :goto_0

    .line 276
    :cond_6
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_7
    :goto_0
    const/16 v1, 0x800

    .line 92
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    .line 281
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_9

    .line 282
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne p2, v0, :cond_8

    .line 285
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    goto :goto_1

    .line 286
    :cond_8
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusPropertiesModifierNodeKt;->invalidateFocusProperties(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    :cond_9
    :goto_1
    const/16 p2, 0x1000

    .line 94
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_a

    .line 289
    instance-of p1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz p1, :cond_a

    .line 290
    check-cast p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    :cond_a
    return-void
.end method

.method public static final autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 218
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 228
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I
    .locals 2

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 110
    instance-of v1, p0, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 72
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 113
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/draw/DrawModifier;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 74
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 116
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 76
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 123
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-nez v1, :cond_3

    .line 124
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v1, :cond_4

    :cond_3
    const/16 v1, 0x20

    .line 80
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 136
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz v1, :cond_5

    const/16 v1, 0x100

    .line 86
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 143
    :cond_5
    instance-of v1, p0, Landroidx/compose/ui/layout/OnPlacedModifier;

    if-nez v1, :cond_6

    .line 144
    instance-of p0, p0, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    if-eqz p0, :cond_7

    :cond_6
    const/16 p0, 0x80

    .line 84
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_7
    return v0
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 158
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 72
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 161
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 74
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 164
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    .line 76
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 167
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 78
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 170
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    .line 80
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 173
    :cond_5
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_6

    const/16 v1, 0x40

    .line 82
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 176
    :cond_6
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v1, :cond_7

    const/16 v1, 0x80

    .line 84
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 179
    :cond_7
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_8

    const/16 v1, 0x100

    .line 86
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 185
    :cond_8
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    .line 90
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 188
    :cond_9
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    .line 92
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 191
    :cond_a
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v1, :cond_b

    const/16 v1, 0x1000

    .line 94
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 194
    :cond_b
    instance-of v1, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v1, :cond_c

    const/16 v1, 0x2000

    .line 96
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 197
    :cond_c
    instance-of v1, p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v1, :cond_d

    const/16 v1, 0x4000

    .line 98
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 200
    :cond_d
    instance-of p0, p0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    if-eqz p0, :cond_e

    const p0, 0x8000

    .line 101
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_e
    return v0
.end method

.method public static final calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_0

    .line 328
    check-cast p0, Landroidx/compose/ui/node/DelegatingNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/DelegatingNode;->getSelfKindSet$ui_release()I

    move-result v0

    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 330
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v1

    or-int/2addr v0, v1

    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    .line 334
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static final getIncludeSelfInTraversal-H91voCI(I)Z
    .locals 1

    const/16 v0, 0x80

    .line 84
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 10

    const/16 v0, 0x400

    .line 90
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 133
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1162
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 135
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_0

    .line 137
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    .line 141
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 142
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-nez v5, :cond_2

    .line 143
    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_1

    .line 149
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-eqz p0, :cond_1

    .line 386
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_3

    .line 387
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 298
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->invalidateFocusTarget(Landroidx/compose/ui/focus/FocusTargetNode;)V

    goto :goto_5

    .line 261
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_9

    .line 388
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_9

    .line 394
    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 234
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v4

    :goto_3
    if-eqz v7, :cond_8

    .line 261
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_4

    move-object p0, v7

    goto :goto_4

    :cond_4
    if-nez v6, :cond_5

    .line 1162
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz p0, :cond_6

    .line 405
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-object p0, v5

    .line 408
    :cond_6
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_7
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_3

    :cond_8
    if-ne v8, v3, :cond_9

    goto :goto_2

    .line 417
    :cond_9
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_2

    .line 153
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_1

    :cond_b
    return-void

    .line 133
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitChildren called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z
    .locals 1

    .line 312
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->reset()V

    .line 313
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 314
    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->isCanFocusSet()Z

    move-result p0

    return p0
.end method
