.class final Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterExitTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/EnterExitTransitionKt;->shrinkExpand(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $expand:Landroidx/compose/runtime/State;

.field final synthetic $labelPrefix:Ljava/lang/String;

.field final synthetic $shrink:Landroidx/compose/runtime/State;

.field final synthetic $transition:Landroidx/compose/animation/core/Transition;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$labelPrefix:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1035
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 107
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const-string v2, "$this$composed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x861e7e5

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "androidx.compose.animation.shrinkExpand.<anonymous> (EnterExitTransition.kt:1030)"

    move/from16 v5, p3

    .line 1035
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    const v9, 0x44faf204

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 1097
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    if-nez v2, :cond_1

    .line 1098
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_2

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    .line 1035
    invoke-static {v2, v10, v3, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 1100
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1035
    check-cast v3, Landroidx/compose/runtime/MutableState;

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 1036
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1037
    invoke-static {v3, v12}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_0

    :cond_3
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    .line 1039
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1040
    :cond_4
    invoke-static {v3, v11}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 1044
    :cond_5
    :goto_0
    invoke-static {v3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 1046
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    .line 1047
    sget-object v3, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    sget-object v4, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    invoke-interface {v2, v3, v4}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_8

    .line 1050
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ChangeSize;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ChangeSize;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v2, v10

    goto :goto_1

    .line 1052
    :cond_8
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ChangeSize;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ChangeSize;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v2

    .line 1045
    :cond_a
    :goto_1
    invoke-static {v2, v8, v12}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v19

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 1057
    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$labelPrefix:Ljava/lang/String;

    const v13, -0x1d58f75c

    .line 1058
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1098
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_b

    .line 1058
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shrink/expand"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1100
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x1c0

    const/4 v7, 0x0

    move-object/from16 v5, p2

    .line 1056
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v15

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 1060
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_c

    goto :goto_2

    :cond_c
    move v11, v12

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, -0x5c9428f9

    invoke-interface {v8, v3, v2}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 1062
    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$labelPrefix:Ljava/lang/String;

    .line 1063
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1098
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_d

    .line 1063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " InterruptionHandlingOffset"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1100
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x1c0

    const/4 v7, 0x0

    move-object/from16 v5, p2

    .line 1061
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    iget-object v5, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    .line 1067
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 1097
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_e

    .line 1098
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_f

    .line 1068
    :cond_e
    new-instance v6, Landroidx/compose/animation/ExpandShrinkModifier;

    move-object v13, v6

    move-object v14, v15

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v19

    invoke-direct/range {v13 .. v18}, Landroidx/compose/animation/ExpandShrinkModifier;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 1100
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_f
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1067
    check-cast v6, Landroidx/compose/animation/ExpandShrinkModifier;

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 1077
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_10

    .line 1078
    invoke-virtual {v6, v10}, Landroidx/compose/animation/ExpandShrinkModifier;->setCurrentAlignment(Landroidx/compose/ui/Alignment;)V

    goto :goto_3

    .line 1079
    :cond_10
    invoke-virtual {v6}, Landroidx/compose/animation/ExpandShrinkModifier;->getCurrentAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v2

    if-nez v2, :cond_12

    .line 1080
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Alignment;

    if-nez v2, :cond_11

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v2

    :cond_11
    invoke-virtual {v6, v2}, Landroidx/compose/animation/ExpandShrinkModifier;->setCurrentAlignment(Landroidx/compose/ui/Alignment;)V

    :cond_12
    :goto_3
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    .line 1082
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ChangeSize;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->getClip()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_4

    :cond_13
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ChangeSize;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->getClip()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1083
    :goto_4
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_5

    :cond_14
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_5
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1084
    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1044
    :cond_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1031
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
