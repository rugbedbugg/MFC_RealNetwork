.class final Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $bottomBar:Lkotlin/jvm/functions/Function2;

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $fab:Lkotlin/jvm/functions/Function2;

.field final synthetic $fabPosition:I

.field final synthetic $isFabDocked:Z

.field final synthetic $layoutHeight:I

.field final synthetic $layoutWidth:I

.field final synthetic $looseConstraints:J

.field final synthetic $snackbar:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field final synthetic $topBar:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IIZIJLkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p2, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    iput p5, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$fabPosition:I

    iput p6, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutWidth:I

    iput-boolean p7, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$isFabDocked:Z

    iput p8, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutHeight:I

    iput-wide p9, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$looseConstraints:J

    iput-object p11, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iput p12, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$$dirty:I

    iput-object p13, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 243
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 244
    sget-object v2, Landroidx/compose/material/ScaffoldLayoutContent;->TopBar:Landroidx/compose/material/ScaffoldLayoutContent;

    iget-object v3, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$looseConstraints:J

    .line 152
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x0

    move v5, v11

    :goto_0
    if-ge v5, v4, :cond_0

    .line 35
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 154
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 245
    invoke-interface {v6, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    .line 154
    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 173
    :cond_1
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 174
    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 248
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    .line 175
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v3, v5, :cond_3

    move v6, v3

    .line 176
    :goto_1
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 177
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 248
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    if-ge v4, v8, :cond_2

    move-object v1, v7

    move v4, v8

    :cond_2
    if-eq v6, v5, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v11

    :goto_3
    iget-object v4, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 250
    sget-object v5, Landroidx/compose/material/ScaffoldLayoutContent;->Snackbar:Landroidx/compose/material/ScaffoldLayoutContent;

    iget-object v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v4

    iget-wide v5, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$looseConstraints:J

    .line 152
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    move v8, v11

    :goto_4
    if-ge v8, v7, :cond_5

    .line 35
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 154
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 251
    invoke-interface {v13, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v13

    .line 154
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 172
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    .line 173
    :cond_6
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 174
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 254
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    .line 175
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-gt v3, v6, :cond_8

    move v7, v3

    .line 176
    :goto_5
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 177
    move-object v13, v8

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .line 254
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    if-ge v5, v13, :cond_7

    move-object v4, v8

    move v5, v13

    :cond_7
    if-eq v7, v6, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    goto :goto_7

    :cond_9
    move v4, v11

    :goto_7
    iget-object v5, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 257
    sget-object v6, Landroidx/compose/material/ScaffoldLayoutContent;->Fab:Landroidx/compose/material/ScaffoldLayoutContent;

    iget-object v7, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v5

    iget-wide v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$looseConstraints:J

    .line 152
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v14, v11

    :goto_8
    if-ge v14, v8, :cond_a

    .line 35
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 154
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 258
    invoke-interface {v15, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v15

    .line 154
    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 261
    :cond_a
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_15

    .line 172
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_a

    .line 173
    :cond_b
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 174
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 262
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    .line 175
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v3, v7, :cond_d

    move v8, v3

    .line 176
    :goto_9
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 177
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/Placeable;

    .line 262
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v15

    if-ge v6, v15, :cond_c

    move-object v5, v14

    move v6, v15

    :cond_c
    if-eq v8, v7, :cond_d

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    goto :goto_b

    :cond_e
    move v5, v11

    .line 172
    :goto_b
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    goto :goto_d

    .line 173
    :cond_f
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 174
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 263
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    .line 175
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v3, v8, :cond_11

    move v14, v3

    .line 176
    :goto_c
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 177
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/Placeable;

    .line 263
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    if-ge v7, v2, :cond_10

    move v7, v2

    move-object v6, v15

    :cond_10
    if-eq v14, v8, :cond_11

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_11
    :goto_d
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    goto :goto_e

    :cond_12
    move v2, v11

    :goto_e
    if-eqz v5, :cond_15

    if-eqz v2, :cond_15

    iget v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$fabPosition:I

    .line 266
    sget-object v7, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v7}, Landroidx/compose/material/FabPosition$Companion;->getEnd-5ygKITE()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/material/FabPosition;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 267
    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v6, v7, :cond_13

    iget v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutWidth:I

    iget-object v7, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 268
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v8

    invoke-interface {v7, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    goto :goto_f

    :cond_13
    iget-object v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 270
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v7

    invoke-interface {v6, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    goto :goto_f

    :cond_14
    iget v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutWidth:I

    sub-int/2addr v6, v5

    .line 273
    div-int/lit8 v6, v6, 0x2

    .line 276
    :goto_f
    new-instance v7, Landroidx/compose/material/FabPlacement;

    iget-boolean v8, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$isFabDocked:Z

    invoke-direct {v7, v8, v6, v5, v2}, Landroidx/compose/material/FabPlacement;-><init>(ZIII)V

    move-object v14, v7

    goto :goto_10

    :cond_15
    const/4 v14, 0x0

    :goto_10
    iget-object v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 289
    sget-object v5, Landroidx/compose/material/ScaffoldLayoutContent;->BottomBar:Landroidx/compose/material/ScaffoldLayoutContent;

    new-instance v6, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;

    iget-object v7, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iget v8, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$$dirty:I

    invoke-direct {v6, v14, v7, v8}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;-><init>(Landroidx/compose/material/FabPlacement;Lkotlin/jvm/functions/Function2;I)V

    const v7, 0x5b23c573

    invoke-static {v7, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    iget-wide v5, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$looseConstraints:J

    .line 152
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    move v8, v11

    :goto_11
    if-ge v8, v7, :cond_16

    .line 35
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 154
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 294
    invoke-interface {v3, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 154
    invoke-interface {v15, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    goto :goto_11

    .line 172
    :cond_16
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_13

    .line 173
    :cond_17
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 174
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 296
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 175
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v6, v5, :cond_19

    const/4 v6, 0x1

    .line 176
    :goto_12
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 177
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 296
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    if-ge v3, v8, :cond_18

    move-object v2, v7

    move v3, v8

    :cond_18
    if-eq v6, v5, :cond_19

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_19
    :goto_13
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    move v8, v2

    goto :goto_14

    :cond_1a
    move v8, v11

    :goto_14
    if-eqz v14, :cond_1d

    iget-object v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-boolean v3, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$isFabDocked:Z

    if-nez v8, :cond_1b

    .line 299
    invoke-virtual {v14}, Landroidx/compose/material/FabPlacement;->getHeight()I

    move-result v3

    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v5

    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_15
    add-int/2addr v3, v2

    goto :goto_16

    :cond_1b
    if-eqz v3, :cond_1c

    .line 303
    invoke-virtual {v14}, Landroidx/compose/material/FabPlacement;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v8, v2

    goto :goto_16

    .line 307
    :cond_1c
    invoke-virtual {v14}, Landroidx/compose/material/FabPlacement;->getHeight()I

    move-result v3

    add-int/2addr v3, v8

    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v5

    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_15

    .line 298
    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_17

    :cond_1d
    const/16 v17, 0x0

    :goto_17
    if-eqz v4, :cond_1f

    if-eqz v17, :cond_1e

    .line 313
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_18

    :cond_1e
    move v2, v8

    :goto_18
    add-int/2addr v4, v2

    move/from16 v16, v4

    goto :goto_19

    :cond_1f
    move/from16 v16, v11

    :goto_19
    iget v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutHeight:I

    sub-int/2addr v2, v1

    iget-object v3, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 320
    sget-object v4, Landroidx/compose/material/ScaffoldLayoutContent;->MainContent:Landroidx/compose/material/ScaffoldLayoutContent;

    new-instance v5, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bodyContentPlaceables$1;

    iget-object v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$content:Lkotlin/jvm/functions/Function3;

    iget v7, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$$dirty:I

    invoke-direct {v5, v3, v8, v6, v7}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bodyContentPlaceables$1;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;ILkotlin/jvm/functions/Function3;I)V

    const v6, -0x437ca2bc

    const/4 v7, 0x1

    invoke-static {v6, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    iget-wide v4, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$looseConstraints:J

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_1a
    if-ge v11, v6, :cond_20

    .line 35
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v26, v3

    .line 154
    move-object/from16 v3, v18

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x7

    const/16 v25, 0x0

    move-wide/from16 v18, v4

    move/from16 v23, v2

    move-wide/from16 v27, v4

    .line 323
    invoke-static/range {v18 .. v25}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 154
    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v26

    move-wide/from16 v4, v27

    goto :goto_1a

    .line 34
    :cond_20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v11, :cond_21

    .line 35
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move v5, v1

    move/from16 v21, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move-object/from16 v8, v20

    .line 328
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v7, v18

    move/from16 v8, v19

    goto :goto_1b

    :cond_21
    move/from16 v19, v8

    .line 34
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v1, :cond_22

    .line 35
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 331
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_22
    iget v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutHeight:I

    .line 34
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v10, :cond_23

    .line 35
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    const/4 v4, 0x0

    sub-int v5, v1, v16

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 334
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_23
    iget v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutHeight:I

    .line 34
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v10, :cond_24

    .line 35
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    const/4 v4, 0x0

    sub-int v5, v1, v19

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 338
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_24
    iget v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->$layoutHeight:I

    .line 34
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v10, :cond_27

    .line 35
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v14, :cond_25

    .line 342
    invoke-virtual {v14}, Landroidx/compose/material/FabPlacement;->getLeft()I

    move-result v2

    move v4, v2

    goto :goto_20

    :cond_25
    const/4 v4, 0x0

    :goto_20
    if-eqz v17, :cond_26

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_21

    :cond_26
    const/4 v2, 0x0

    :goto_21
    sub-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_27
    return-void
.end method
