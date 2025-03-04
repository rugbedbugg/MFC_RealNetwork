.class public final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;
.super Ljava/lang/Object;
.source "RepoPreviewScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a+\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a+\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\r\u0010\r\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\r\u0010\u000f\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\r\u0010\u0010\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\r\u0010\u0011\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\r\u0010\u0012\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000e\u001a)\u0010\u0013\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "RepoPreviewHeader",
        "",
        "state",
        "Lorg/fdroid/repo/Fetching;",
        "onAddRepo",
        "Lkotlin/Function0;",
        "localeList",
        "Landroidx/core/os/LocaleListCompat;",
        "(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V",
        "RepoPreviewScreen",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "RepoPreviewScreenExistingMirrorPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "RepoPreviewScreenExistingRepoPreview",
        "RepoPreviewScreenFetchingPreview",
        "RepoPreviewScreenNewMirrorPreview",
        "RepoPreviewScreenNewRepoAndNewMirrorPreview",
        "RepoPreviewApp",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "app",
        "Lorg/fdroid/database/MinimalApp;",
        "(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V",
        "app_fullRelease"
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
.method public static final RepoPreviewApp(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeList"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x197e03b9

    move-object/from16 v5, p4

    .line 218
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    const-string v6, "org.fdroid.fdroid.views.repos.RepoPreviewApp (RepoPreviewScreen.kt:217)"

    move/from16 v14, p5

    invoke-static {v0, v14, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v14, p5

    .line 219
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 221
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 222
    invoke-static {v1, v5, v6, v7, v6}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->animateItemPlacement$default(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v8, 0x0

    .line 223
    invoke-static {v5, v8, v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 224
    new-instance v13, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$1;

    invoke-direct {v13, v0, v2, v3, v4}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$1;-><init>(ZLorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;)V

    const v0, -0x1f7c8a0a

    invoke-static {v15, v0, v7, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    const/high16 v0, 0x180000

    const/16 v16, 0x3e

    move-wide v7, v8

    move-wide v9, v10

    move-object v11, v12

    const/4 v12, 0x0

    move-object v14, v15

    move-object/from16 v17, v15

    move v15, v0

    .line 220
    invoke-static/range {v5 .. v16}, Landroidx/compose/material/CardKt;->Card-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;-><init>(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method public static final RepoPreviewHeader(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/repo/Fetching;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/core/os/LocaleListCompat;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "state"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onAddRepo"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "localeList"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x7e193a94

    move-object/from16 v5, p3

    .line 109
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    const-string v7, "org.fdroid.fdroid.views.repos.RepoPreviewHeader (RepoPreviewScreen.kt:108)"

    invoke-static {v4, v3, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getReceivedRepo()Lorg/fdroid/database/Repository;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 111
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    .line 76
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 111
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 112
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    .line 76
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 112
    check-cast v6, Landroid/content/Context;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v7

    .line 115
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsNewRepository;

    const-string v9, "Unexpected fetch state: "

    const/4 v14, 0x0

    if-eqz v8, :cond_1

    const v7, -0x20776c97

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v7, Lorg/fdroid/fdroid/R$string;->repo_add_new_title:I

    invoke-static {v7, v5, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_0
    move-object/from16 v31, v7

    goto :goto_2

    .line 116
    :cond_1
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    if-eqz v8, :cond_2

    const v7, -0x20776c47

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v7, Lorg/fdroid/fdroid/R$string;->repo_add_repo_and_mirror:I

    invoke-static {v7, v5, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_0

    .line 117
    :cond_2
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsNewMirror;

    if-eqz v8, :cond_3

    const v7, -0x20776bfb

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v7, Lorg/fdroid/fdroid/R$string;->repo_add_mirror:I

    invoke-static {v7, v5, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_0

    .line 118
    :cond_3
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsExistingRepository;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    instance-of v7, v7, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    if-eqz v7, :cond_25

    :goto_1
    const v7, -0x20776b9a

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v7, Lorg/fdroid/fdroid/R$string;->repo_view_repo:I

    invoke-static {v7, v5, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_0

    .line 121
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v7

    .line 122
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsNewRepository;

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsNewMirror;

    if-eqz v8, :cond_7

    :goto_3
    move-object/from16 v32, v1

    goto :goto_5

    .line 124
    :cond_7
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsExistingRepository;

    if-eqz v8, :cond_8

    .line 121
    new-instance v8, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$1;

    invoke-direct {v8, v7, v6}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$1;-><init>(Lorg/fdroid/repo/FetchResult;Landroid/content/Context;)V

    :goto_4
    move-object/from16 v32, v8

    goto :goto_5

    .line 129
    :cond_8
    instance-of v8, v7, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    if-eqz v8, :cond_24

    .line 121
    new-instance v8, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;

    invoke-direct {v8, v7, v6}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;-><init>(Lorg/fdroid/repo/FetchResult;Landroid/content/Context;)V

    goto :goto_4

    .line 137
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v6

    .line 138
    instance-of v7, v6, Lorg/fdroid/repo/FetchResult$IsNewRepository;

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v7, :cond_9

    const v6, 0x118a58a0

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v33, v15

    goto :goto_7

    .line 139
    :cond_9
    instance-of v7, v6, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    const/16 v8, 0x40

    if-eqz v7, :cond_a

    const v6, -0x20776856

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v6, Lorg/fdroid/fdroid/R$string;->repo_and_mirror_add_both_info:I

    new-array v7, v13, [Ljava/lang/Object;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v14

    .line 139
    invoke-static {v6, v7, v5, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_6
    move-object/from16 v33, v6

    goto :goto_7

    .line 144
    :cond_a
    instance-of v7, v6, Lorg/fdroid/repo/FetchResult$IsNewMirror;

    if-eqz v7, :cond_b

    const v6, -0x207767d2

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v6, Lorg/fdroid/fdroid/R$string;->repo_mirror_add_info:I

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v14

    invoke-static {v6, v7, v5, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_6

    .line 145
    :cond_b
    instance-of v7, v6, Lorg/fdroid/repo/FetchResult$IsExistingRepository;

    if-eqz v7, :cond_c

    const v6, -0x20776771

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v6, Lorg/fdroid/fdroid/R$string;->repo_exists:I

    invoke-static {v6, v5, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_6

    .line 146
    :cond_c
    instance-of v6, v6, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    if-eqz v6, :cond_23

    const v6, -0x2077672d

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v6, Lorg/fdroid/fdroid/R$string;->repo_mirror_exists:I

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v14

    invoke-static {v6, v7, v5, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_6

    .line 151
    :goto_7
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v7, 0x10

    int-to-float v7, v7

    .line 154
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 151
    invoke-virtual {v6, v8}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v8

    .line 152
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v9, 0x0

    invoke-static {v11, v9, v13, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v12, -0x1cd0f17e

    .line 150
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 73
    sget-object v34, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v9

    const/4 v15, 0x6

    .line 76
    invoke-static {v8, v9, v5, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const v9, -0x4ee9b9da

    .line 77
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    invoke-static {v5, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v17

    .line 79
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 81
    sget-object v35, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 88
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 456
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 459
    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 461
    :cond_e
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_8
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 83
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v12, v8, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .line 4145
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 4146
    :cond_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_10
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v8, v5, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v15, 0x7ab4aae9

    .line 465
    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    sget-object v13, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 154
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 155
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v7

    .line 156
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v8

    const v10, 0x2952b718

    .line 154
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/16 v10, 0x36

    .line 77
    invoke-static {v7, v8, v5, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .line 78
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    invoke-static {v5, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v8

    .line 79
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 81
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 88
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v9

    .line 456
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_11
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 459
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 461
    :cond_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_9
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 83
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v12, v7, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 4145
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 4146
    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_14
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v7, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7ab4aae9

    .line 465
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 79
    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/16 v7, 0x30

    int-to-float v8, v7

    .line 154
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 158
    invoke-static {v11, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v4, v8, v5, v9, v14}, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt;->RepoIcon(Lorg/fdroid/database/Repository;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 159
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v8

    const v9, -0x1cd0f17e

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 72
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v6

    .line 76
    invoke-static {v6, v8, v5, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    const v9, -0x4ee9b9da

    .line 77
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    invoke-static {v5, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v7

    .line 79
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 81
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    .line 88
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    .line 456
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_15
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 459
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    .line 461
    :cond_16
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_a
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .line 83
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v10, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v10, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .line 4145
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 4146
    :cond_17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_18
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v15, 0x7ab4aae9

    .line 465
    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 161
    invoke-virtual {v4, v2}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19

    const-string v6, "Unknown Repository"

    :cond_19
    move-object/from16 v26, v6

    .line 163
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    .line 164
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    sget v7, Landroidx/compose/material/MaterialTheme;->$stable:I

    invoke-virtual {v10, v5, v7}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Typography;->getBody1()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    const/4 v6, 0x0

    const-wide/16 v20, 0x0

    move/from16 v36, v7

    move-wide/from16 v7, v20

    move-object/from16 v37, v10

    move-wide/from16 v9, v20

    const/16 v17, 0x0

    move-object/from16 v38, v11

    move-object/from16 v11, v17

    move-object/from16 v39, v13

    move-object/from16 v13, v17

    const-wide/16 v17, 0x0

    move-wide/from16 v14, v17

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v27, 0x30000

    const/16 v28, 0xc00

    const v29, 0xdfde

    move-object/from16 p3, v5

    move-object/from16 v5, v26

    move-object/from16 v26, p3

    .line 160
    invoke-static/range {v5 .. v29}, Landroidx/compose/material/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 167
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v40

    const-string v41, "https://"

    const-string v42, ""

    const/16 v43, 0x0

    const/16 v44, 0x4

    const/16 v45, 0x0

    invoke-static/range {v40 .. v45}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, p3

    move/from16 v13, v36

    move-object/from16 v15, v37

    .line 168
    invoke-virtual {v15, v14, v13}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 169
    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    sget v7, Landroidx/compose/material/ContentAlpha;->$stable:I

    invoke-virtual {v6, v14, v7}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    move-object/from16 v12, v38

    invoke-static {v12, v6}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v46, v12

    move-object/from16 v12, v16

    move/from16 v47, v13

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-object/from16 v48, v15

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xfffc

    .line 166
    invoke-static/range {v5 .. v29}, Landroidx/compose/material/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 172
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    move-object/from16 v14, p3

    .line 76
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 172
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/fdroid/fdroid/Utils;->formatLastUpdated(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string v7, "formatLastUpdated(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v6, v14

    move-wide v14, v15

    const/16 v16, 0x0

    move/from16 v8, v47

    move-object/from16 v7, v48

    .line 173
    invoke-virtual {v7, v6, v8}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    const v29, 0xfffe

    move-object/from16 v26, v6

    move-object/from16 v36, v6

    move-object v0, v7

    move v1, v8

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 171
    invoke-static/range {v5 .. v29}, Landroidx/compose/material/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 467
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 467
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v5, -0x59daee4b

    move-object/from16 v14, v36

    .line 83
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-eqz v33, :cond_1e

    move-object/from16 v15, v46

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-static {v15, v7, v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget v5, Lorg/fdroid/fdroid/R$color;->warning:I

    const/4 v6, 0x0

    .line 181
    invoke-static {v5, v14, v6}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 182
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v7

    const v8, 0x2bb5b5d7

    .line 178
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v8, 0x6

    .line 70
    invoke-static {v7, v6, v14, v8}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    const v9, -0x4ee9b9da

    .line 71
    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 78
    invoke-static {v14, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 79
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 81
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 88
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v5

    .line 456
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_1a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 459
    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 461
    :cond_1b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_b
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .line 83
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v11, v7, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 4145
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 4146
    :cond_1c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4147
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    :cond_1d
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v14, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7ab4aae9

    .line 465
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 72
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/16 v5, 0x8

    int-to-float v5, v5

    .line 154
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 186
    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 188
    sget-object v5, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v5

    .line 189
    invoke-virtual {v0, v14, v1}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    const v7, 0x106000b

    .line 190
    invoke-static {v7, v14, v8}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 p3, v14

    move-object/from16 v49, v15

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    .line 188
    invoke-static {v5}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v17

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x30

    const/16 v28, 0x0

    const v29, 0xfdf8

    move-object/from16 v5, v33

    move-object/from16 v26, p3

    .line 184
    invoke-static/range {v5 .. v29}, Landroidx/compose/material/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 467
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_c

    :cond_1e
    move-object/from16 p3, v14

    move-object/from16 v49, v46

    .line 76
    :goto_c
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 194
    sget-object v5, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    .line 197
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    move-object/from16 v8, v39

    move-object/from16 v7, v49

    invoke-interface {v8, v7, v6}, Landroidx/compose/foundation/layout/ColumnScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v11, 0x6000

    const/16 v12, 0x8

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v10, p3

    .line 194
    invoke-virtual/range {v5 .. v12}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;II)V

    if-eqz v30, :cond_1f

    .line 201
    new-instance v4, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;

    const/16 v5, 0x2a

    invoke-direct {v4, v5}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;-><init>(I)V

    invoke-virtual {v4}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->getValues()Lkotlin/sequences/Sequence;

    move-result-object v6

    const-string v7, " "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_d
    move-object v5, v4

    goto :goto_e

    .line 203
    :cond_1f
    invoke-virtual {v4, v2}, Lorg/fdroid/database/Repository;->getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :goto_e
    const v4, -0x20775f18

    move-object/from16 v14, p3

    .line 200
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-eqz v5, :cond_20

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v4, v14

    move-wide v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 207
    invoke-virtual {v0, v4, v1}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xfffe

    move-object/from16 v26, v4

    .line 205
    invoke-static/range {v5 .. v29}, Landroidx/compose/material/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_f

    :cond_20
    move-object v4, v14

    :goto_f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 467
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 468
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 469
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 82
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_21
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$2;

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    invoke-direct {v1, v5, v4, v2, v3}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$2;-><init>(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void

    :cond_23
    move-object v4, v5

    move-object v5, v0

    const v0, -0x207766e1

    .line 147
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object v5, v0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v4, v5

    move-object v5, v0

    const v0, -0x20776b62

    .line 119
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "repo was null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final RepoPreviewScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lorg/fdroid/repo/Fetching;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "paddingValues"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "state"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onAddRepo"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x72c25ad6

    move-object/from16 v5, p3

    .line 64
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    const-string v6, "org.fdroid.fdroid.views.repos.RepoPreviewScreen (RepoPreviewScreen.kt:63)"

    invoke-static {v4, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 65
    :cond_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v4

    const-string v5, "getDefault(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x10

    int-to-float v5, v5

    .line 154
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 67
    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v7

    .line 68
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v6, 0x8

    int-to-float v6, v6

    .line 154
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 68
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v9

    .line 69
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 70
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 71
    invoke-static {v5, v10, v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 66
    new-instance v13, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;

    invoke-direct {v13, v1, v2, v4}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;-><init>(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;)V

    const/16 v15, 0x6180

    const/16 v16, 0xea

    move-object/from16 v14, v17

    invoke-static/range {v5 .. v16}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$2;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$2;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method public static final RepoPreviewScreenExistingMirrorPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, 0x6bc8eeed

    .line 332
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 332
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.RepoPreviewScreenExistingMirrorPreview (RepoPreviewScreen.kt:331)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-string v0, "https://example.org"

    const-string v1, "foo bar"

    .line 333
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    .line 334
    sget-object v1, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v2, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1;-><init>(Lorg/fdroid/database/Repository;)V

    const v0, 0x52d13235

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {v1, v0, p0, v2}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 340
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$2;-><init>(I)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final RepoPreviewScreenExistingRepoPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, -0x33369326

    .line 319
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 319
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.RepoPreviewScreenExistingRepoPreview (RepoPreviewScreen.kt:318)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-string v0, "foo bar"

    const-string v1, "https://example.org"

    .line 321
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    .line 322
    sget-object v2, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v3, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingRepoPreview$1;

    invoke-direct {v3, v1, v0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingRepoPreview$1;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;)V

    const v0, -0x39e61dde

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v2, v0, p0, v1}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 328
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingRepoPreview$2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingRepoPreview$2;-><init>(I)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final RepoPreviewScreenFetchingPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const v0, -0xe4d4811

    .line 258
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.RepoPreviewScreenFetchingPreview (RepoPreviewScreen.kt:257)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-string v4, "https://example.org"

    const-string v0, "foo bar"

    .line 260
    invoke-static {v4, v0}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v5

    .line 261
    new-instance v6, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;

    invoke-direct {v6}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;-><init>()V

    .line 268
    new-instance v7, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;

    invoke-direct {v7}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;-><init>()V

    .line 277
    new-instance v8, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;

    invoke-direct {v8}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;-><init>()V

    .line 285
    sget-object v0, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;)V

    const v2, -0x381eeec9

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/16 v2, 0x36

    invoke-virtual {v0, v1, p0, v2}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 291
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$2;-><init>(I)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final RepoPreviewScreenNewMirrorPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, -0x117325e0

    .line 295
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 295
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.RepoPreviewScreenNewMirrorPreview (RepoPreviewScreen.kt:294)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-string v0, "https://example.org"

    const-string v1, "foo bar"

    .line 296
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    .line 297
    sget-object v1, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v2, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewMirrorPreview$1;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewMirrorPreview$1;-><init>(Lorg/fdroid/database/Repository;)V

    const v0, -0x21d65628

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {v1, v0, p0, v2}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 303
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewMirrorPreview$2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewMirrorPreview$2;-><init>(I)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final RepoPreviewScreenNewRepoAndNewMirrorPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, -0x34bb36bb    # -1.2896581E7f

    .line 307
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 307
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.RepoPreviewScreenNewRepoAndNewMirrorPreview (RepoPreviewScreen.kt:306)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-string v0, "https://example.org"

    const-string v1, "foo bar"

    .line 308
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    .line 309
    sget-object v1, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v2, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewRepoAndNewMirrorPreview$1;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewRepoAndNewMirrorPreview$1;-><init>(Lorg/fdroid/database/Repository;)V

    const v0, -0x2734ad03

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {v1, v0, p0, v2}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 315
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewRepoAndNewMirrorPreview$2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenNewRepoAndNewMirrorPreview$2;-><init>(I)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method
