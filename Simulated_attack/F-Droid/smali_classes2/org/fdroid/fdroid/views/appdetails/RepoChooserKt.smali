.class public final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;
.super Ljava/lang/Object;
.source "RepoChooser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a]\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u001a\r\u0010\u000e\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\r\u0010\u0010\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\r\u0010\u0011\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\'\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0003\u00a2\u0006\u0002\u0010\u0016\u001a\u001d\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0003\u00a2\u0006\u0002\u0010\u0019\u001aH\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001d2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d\u00a8\u0006\u001e\u00b2\u0006\n\u0010\u001f\u001a\u00020\u0015X\u008a\u008e\u0002"
    }
    d2 = {
        "RepoChooser",
        "",
        "repos",
        "",
        "Lorg/fdroid/database/Repository;",
        "currentRepoId",
        "",
        "preferredRepoId",
        "onRepoChanged",
        "Lkotlin/Function1;",
        "onPreferredRepoChanged",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "RepoChooserNightPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "RepoChooserPreview",
        "RepoChooserSingleRepoPreview",
        "RepoItem",
        "repo",
        "isPreferred",
        "",
        "(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "getRepoString",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "(Lorg/fdroid/database/Repository;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/AnnotatedString;",
        "setContentRepoChooser",
        "composeView",
        "Landroidx/compose/ui/platform/ComposeView;",
        "Landroidx/core/util/Consumer;",
        "app_fullRelease",
        "expanded"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final RepoChooser(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;JJ",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p6

    const-string v0, "repos"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRepoChanged"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPreferredRepoChanged"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x32c4ba24

    move-object/from16 v1, p8

    .line 83
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    and-int/lit8 v1, p10, 0x20

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object/from16 v14, p7

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid.views.appdetails.RepoChooser (RepoChooser.kt:82)"

    move/from16 v15, p9

    .line 83
    invoke-static {v0, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v15, p9

    .line 84
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v12, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v14

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;-><init>(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3
    return-void

    :cond_4
    const v0, 0xec1bbc7

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1098
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    .line 85
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 1100
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_5
    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 86
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/fdroid/database/Repository;

    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v9

    cmp-long v5, v9, p1

    if-nez v5, :cond_6

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    move-object v5, v1

    check-cast v5, Lorg/fdroid/database/Repository;

    if-eqz v5, :cond_19

    .line 88
    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    cmp-long v0, v0, p3

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_8

    move v0, v10

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    const/4 v11, 0x0

    .line 90
    invoke-static {v14, v11, v10, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v12, -0x1cd0f17e

    .line 89
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 72
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v12

    .line 73
    sget-object v57, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v57 .. v57}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v13

    .line 76
    invoke-static {v12, v13, v4, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    const v13, -0x4ee9b9da

    .line 77
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 79
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 81
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    .line 88
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v9

    .line 456
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 459
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 461
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_4
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v2, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v2, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .line 4145
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 4146
    :cond_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11, v10}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_c
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v2, v4, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    .line 465
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    sget-object v10, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const v9, 0x2bb5b5d7

    .line 92
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 65
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 66
    invoke-virtual/range {v57 .. v57}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v9

    .line 70
    invoke-static {v9, v1, v4, v1}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .line 71
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 79
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 81
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    .line 88
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    .line 456
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 459
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 461
    :cond_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_5
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v2, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v2, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .line 4145
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 4146
    :cond_f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_10
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v2, v4, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 465
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 72
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz v0, :cond_11

    const v1, 0x9ab69e6

    .line 93
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v1, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 94
    invoke-static {v1, v4, v8}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    .line 93
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_6
    move-wide/from16 v44, v1

    goto :goto_7

    :cond_11
    const v1, 0x9ab6a4d

    .line 95
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 96
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 76
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v19

    .line 96
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 76
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    .line 96
    invoke-static/range {v19 .. v26}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    .line 95
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_6

    .line 99
    :goto_7
    new-instance v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 102
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x1

    if-le v2, v12, :cond_12

    if-eqz v0, :cond_12

    move v2, v12

    goto :goto_8

    :cond_12
    move v2, v8

    :goto_8
    const/16 v13, 0x8

    .line 100
    invoke-static {v5, v2, v4, v13}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->getRepoString(Lorg/fdroid/database/Repository;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v20

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    const/16 v25, 0x0

    move-object/from16 v19, v1

    .line 99
    invoke-direct/range {v19 .. v25}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    sget v9, Landroidx/compose/material/MaterialTheme;->$stable:I

    invoke-virtual {v2, v4, v9}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v58

    .line 130
    sget-object v16, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    move v8, v9

    move-object/from16 v9, v16

    .line 132
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 76
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v19

    .line 132
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 76
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    .line 132
    invoke-static/range {v19 .. v26}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    const/16 v18, 0x1

    move-wide/from16 v12, v16

    .line 135
    invoke-virtual {v2, v4, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v30

    const-wide/16 v16, 0x0

    move-object/from16 v59, v10

    move-object/from16 v60, v11

    move/from16 v8, v18

    const/4 v2, 0x0

    move-wide/from16 v10, v16

    move-object/from16 v61, v14

    move-wide/from16 v14, v16

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x30

    const v56, 0x1dfb7d

    move-wide/from16 v24, v44

    move-object/from16 v52, v4

    .line 130
    invoke-virtual/range {v9 .. v56}, Landroidx/compose/material/TextFieldDefaults;->outlinedTextFieldColors-dx8h9Zs(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v28

    const v9, 0x9ab7220

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v14, v60

    const/4 v9, 0x0

    .line 138
    invoke-static {v14, v2, v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    const v2, 0x9ab723e

    .line 139
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 140
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v2, 0x260b8a8a

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1098
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_13

    .line 140
    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$1$1$1;

    invoke-direct {v2, v3}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1100
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    :cond_13
    move-object/from16 v19, v2

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v20, 0x7

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v11, v2

    goto :goto_9

    :cond_14
    move-object v11, v15

    :goto_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 139
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    sget-object v10, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$2;->INSTANCE:Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$2;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 107
    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$3;

    invoke-direct {v2, v6}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$3;-><init>(Ljava/util/List;)V

    const v9, 0x12c61372

    invoke-static {v4, v9, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v15

    const/16 v16, 0x0

    .line 114
    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$4;

    invoke-direct {v2, v5}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$4;-><init>(Lorg/fdroid/database/Repository;)V

    const v9, -0x609dbf50

    invoke-static {v4, v9, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v17

    .line 117
    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$5;

    invoke-direct {v2, v6, v0}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$5;-><init>(Ljava/util/List;Z)V

    const v9, 0x65b0574f

    invoke-static {v4, v9, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v30, 0x36180c30

    const/16 v31, 0x6000

    const v32, 0x7bc90

    move-object v9, v1

    move-object v2, v14

    move-object/from16 v14, v58

    move-object/from16 v29, v4

    .line 98
    invoke-static/range {v9 .. v32}, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V

    .line 144
    invoke-static {v3}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v9

    const v1, 0x9ab730d

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1098
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v1, v10, :cond_15

    .line 145
    new-instance v1, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$6$1;

    invoke-direct {v1, v3}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$6$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1100
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 145
    :cond_15
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 146
    new-instance v1, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;

    move/from16 v20, v0

    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p0

    move-object/from16 v62, v2

    move-object/from16 v2, p5

    move-object v14, v4

    move-object/from16 v63, v5

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;J)V

    const v0, -0x6cc01c35

    invoke-static {v14, v0, v8, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    const v18, 0x180030

    const/16 v19, 0x3c

    move-object v0, v14

    const/4 v1, 0x0

    move-object v14, v1

    const/4 v1, 0x0

    move-object v15, v1

    move-object/from16 v17, v0

    .line 143
    invoke-static/range {v9 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 467
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v1, 0xec1c7d2

    .line 76
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-nez v20, :cond_16

    .line 158
    sget-object v9, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_details_repository_button_prefer:I

    const/4 v2, 0x0

    .line 159
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    .line 158
    new-instance v11, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$2;

    move-object/from16 v1, v63

    invoke-direct {v11, v7, v1}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/database/Repository;)V

    .line 161
    invoke-virtual/range {v57 .. v57}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    move-object/from16 v2, v59

    move-object/from16 v3, v62

    invoke-interface {v2, v3, v1}, Landroidx/compose/foundation/layout/ColumnScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v1, 0x8

    int-to-float v1, v1

    .line 154
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/16 v18, 0x0

    .line 161
    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v15, 0x6000

    const/16 v16, 0x8

    move-object v14, v0

    .line 158
    invoke-virtual/range {v9 .. v16}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidOutlineButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;II)V

    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 467
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 82
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_18

    new-instance v12, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, v61

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$3;-><init>(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void

    .line 86
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current repoId not in list"

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final RepoChooser$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            ")Z"
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final RepoChooser$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Z)V"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 107
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final RepoChooserNightPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 56

    move/from16 v0, p1

    const v1, 0x21676cdb

    move-object/from16 v2, p0

    .line 215
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 215
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "org.fdroid.fdroid.views.appdetails.RepoChooserNightPreview (RepoChooser.kt:214)"

    invoke-static {v1, v0, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 216
    :cond_2
    new-instance v1, Lorg/fdroid/database/Repository;

    move-object v5, v1

    const-wide/16 v6, 0x1

    const-string v8, "1"

    const-wide/16 v9, 0x1

    sget-object v11, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    move-object/from16 v45, v11

    move-object/from16 v28, v11

    const-string v12, "null"

    const-wide/16 v13, 0x1

    const/4 v15, 0x1

    const-wide/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x300

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    new-instance v3, Lorg/fdroid/database/Repository;

    move-object/from16 v22, v3

    const-wide/16 v23, 0x2

    const-string v25, "2"

    const-wide/16 v26, 0x2

    const-string v29, "null"

    const-wide/16 v30, 0x2

    const/16 v32, 0x2

    const-wide/16 v33, 0x2

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x300

    const/16 v38, 0x0

    invoke-direct/range {v22 .. v38}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 218
    new-instance v4, Lorg/fdroid/database/Repository;

    move-object/from16 v39, v4

    const-wide/16 v40, 0x3

    const-string v42, "2"

    const-wide/16 v43, 0x3

    const-string v46, "null"

    const-wide/16 v47, 0x3

    const/16 v49, 0x3

    const-wide/16 v50, 0x3

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x300

    const/16 v55, 0x0

    invoke-direct/range {v39 .. v55}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    sget-object v5, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v6, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserNightPreview$1;

    invoke-direct {v6, v1, v3, v4}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserNightPreview$1;-><init>(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V

    const v1, -0x3b50bfdd

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/16 v3, 0x36

    invoke-virtual {v5, v1, v2, v3}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 222
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserNightPreview$2;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserNightPreview$2;-><init>(I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final RepoChooserPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 56

    move/from16 v0, p1

    const v1, -0x3e1a2e07

    move-object/from16 v2, p0

    .line 204
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 204
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "org.fdroid.fdroid.views.appdetails.RepoChooserPreview (RepoChooser.kt:203)"

    invoke-static {v1, v0, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 205
    :cond_2
    new-instance v1, Lorg/fdroid/database/Repository;

    move-object v5, v1

    const-wide/16 v6, 0x1

    const-string v8, "1"

    const-wide/16 v9, 0x1

    sget-object v11, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    move-object/from16 v45, v11

    move-object/from16 v28, v11

    const-string v12, "null"

    const-wide/16 v13, 0x1

    const/4 v15, 0x1

    const-wide/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x300

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 206
    new-instance v3, Lorg/fdroid/database/Repository;

    move-object/from16 v22, v3

    const-wide/16 v23, 0x2

    const-string v25, "2"

    const-wide/16 v26, 0x2

    const-string v29, "null"

    const-wide/16 v30, 0x2

    const/16 v32, 0x2

    const-wide/16 v33, 0x2

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x300

    const/16 v38, 0x0

    invoke-direct/range {v22 .. v38}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    new-instance v4, Lorg/fdroid/database/Repository;

    move-object/from16 v39, v4

    const-wide/16 v40, 0x3

    const-string v42, "2"

    const-wide/16 v43, 0x3

    const-string v46, "null"

    const-wide/16 v47, 0x3

    const/16 v49, 0x3

    const-wide/16 v50, 0x3

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x300

    const/16 v55, 0x0

    invoke-direct/range {v39 .. v55}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 208
    sget-object v5, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v6, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;

    invoke-direct {v6, v1, v3, v4}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;-><init>(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V

    const v1, 0xfc911b1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/16 v3, 0x36

    invoke-virtual {v5, v1, v2, v3}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 211
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$2;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$2;-><init>(I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final RepoChooserSingleRepoPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move/from16 v0, p1

    const v1, 0x6dd0f633

    move-object/from16 v2, p0

    .line 195
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 195
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "org.fdroid.fdroid.views.appdetails.RepoChooserSingleRepoPreview (RepoChooser.kt:194)"

    invoke-static {v1, v0, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 196
    :cond_2
    new-instance v1, Lorg/fdroid/database/Repository;

    move-object v5, v1

    const-wide/16 v6, 0x1

    const-string v8, "1"

    const-wide/16 v9, 0x1

    sget-object v11, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    const-string v12, "null"

    const-wide/16 v13, 0x1

    const/4 v15, 0x1

    const-wide/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x300

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    sget-object v3, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v4, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserSingleRepoPreview$1;

    invoke-direct {v4, v1}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserSingleRepoPreview$1;-><init>(Lorg/fdroid/database/Repository;)V

    const v1, 0x4851efeb

    const/4 v5, 0x1

    invoke-static {v2, v1, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/16 v4, 0x36

    invoke-virtual {v3, v1, v2, v4}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 200
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserSingleRepoPreview$2;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserSingleRepoPreview$2;-><init>(I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method private static final RepoItem(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v4, p4

    const v0, 0x34cefe46

    move-object/from16 v2, p3

    .line 168
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    const-string v6, "org.fdroid.fdroid.views.appdetails.RepoItem (RepoChooser.kt:167)"

    invoke-static {v0, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 170
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v5, 0x8

    int-to-float v6, v5

    .line 154
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 170
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    .line 171
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0xe

    or-int/lit16 v7, v7, 0x1b0

    const v8, 0x2952b718

    .line 169
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 v8, v7, 0x3

    and-int/lit8 v9, v8, 0xe

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v8, v9

    .line 77
    invoke-static {v0, v6, v2, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    shl-int/lit8 v6, v7, 0x3

    and-int/lit8 v6, v6, 0x70

    const v7, -0x4ee9b9da

    .line 78
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v7, 0x0

    .line 78
    invoke-static {v2, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v8

    .line 79
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 81
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 88
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    shl-int/lit8 v6, v6, 0x9

    and-int/lit16 v6, v6, 0x1c00

    or-int/lit8 v6, v6, 0x6

    .line 456
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 459
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 461
    :cond_3
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_1
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .line 83
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v11, v0, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 4145
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 4146
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_5
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v0, v2, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 465
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 79
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 174
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v6, 0x18

    int-to-float v6, v6

    .line 154
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 174
    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v6, 0x38

    invoke-static {v1, v0, v2, v6, v7}, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt;->RepoIcon(Lorg/fdroid/database/Repository;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    and-int/lit8 v0, v4, 0x70

    or-int/2addr v0, v5

    move/from16 v14, p1

    .line 176
    invoke-static {v1, v14, v2, v0}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->getRepoString(Lorg/fdroid/database/Repository;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-wide v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 177
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    sget v6, Landroidx/compose/material/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v6}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x1fffe

    move-object/from16 v27, v2

    const/4 v6, 0x0

    .line 175
    invoke-static/range {v5 .. v30}, Landroidx/compose/material/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 467
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v7, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoItem$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoItem$2;-><init>(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;II)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_7
    return-void
.end method

.method public static final synthetic access$RepoChooser$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$RepoItem(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoItem(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method private static final getRepoString(Lorg/fdroid/database/Repository;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/AnnotatedString;
    .locals 28

    move-object/from16 v0, p2

    const v1, -0x77a2aa18

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "org.fdroid.fdroid.views.appdetails.getRepoString (RepoChooser.kt:182)"

    move/from16 v4, p3

    .line 183
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1098
    :cond_0
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    const-string v3, "getDefault(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Unknown Repository"

    :cond_1
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    const v2, 0x7a41ebe4

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-eqz p1, :cond_2

    const-string v2, " "

    .line 186
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 187
    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    move-object v5, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xfffb

    const/16 v27, 0x0

    invoke-direct/range {v5 .. v27}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 188
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details_repository_preferred:I

    .line 189
    invoke-static {v2, v0, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1098
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 183
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final setContentRepoChooser(Landroidx/compose/ui/platform/ComposeView;Ljava/util/List;JJLandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/ComposeView;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;JJ",
            "Landroidx/core/util/Consumer;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "composeView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "repos"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onRepoChanged"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onPreferredRepoChanged"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;

    move-object v2, v1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v9}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;-><init>(Ljava/util/List;JJLandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V

    const v2, -0x20a050f

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
