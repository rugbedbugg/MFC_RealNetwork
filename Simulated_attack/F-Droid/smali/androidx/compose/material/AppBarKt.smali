.class public abstract Landroidx/compose/material/AppBarKt;
.super Ljava/lang/Object;
.source "AppBar.kt"


# static fields
.field private static final AppBarHeight:F

.field private static final AppBarHorizontalPadding:F

.field private static final BottomAppBarCutoutOffset:F

.field private static final BottomAppBarRoundedEdgeRadius:F

.field private static final TitleIconModifier:Landroidx/compose/ui/Modifier;

.field private static final TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x38

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .line 538
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v3, 0x10

    int-to-float v3, v3

    .line 154
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sub-float/2addr v3, v1

    .line 58
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 538
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sput-object v3, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 540
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v3, 0x48

    int-to-float v3, v3

    .line 154
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sub-float/2addr v3, v1

    .line 58
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 541
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    const/16 v1, 0x8

    int-to-float v1, v1

    .line 154
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    return-void
.end method

.method private static final AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p10

    const v0, -0x4a7c9d94

    move-object/from16 v1, p9

    .line 513
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v10, 0x6

    move v4, v2

    move-wide/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    move-wide/from16 v2, p0

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_2
    move-wide/from16 v2, p0

    move v4, v10

    :goto_1
    and-int/lit8 v5, p11, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    move-wide/from16 v7, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v10, 0x70

    move-wide/from16 v7, p2

    if-nez v5, :cond_5

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p11, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move/from16 v5, p4

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v10, 0x380

    if-nez v5, :cond_6

    move/from16 v5, p4

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v4, v11

    :goto_5
    and-int/lit8 v11, p11, 0x8

    if-eqz v11, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v10, 0x1c00

    if-nez v11, :cond_b

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v4, v11

    :cond_b
    :goto_7
    and-int/lit8 v11, p11, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v4, v4, 0x6000

    move-object/from16 v15, p6

    goto :goto_9

    :cond_c
    const v11, 0xe000

    and-int/2addr v11, v10

    move-object/from16 v15, p6

    if-nez v11, :cond_e

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v4, v11

    :cond_e
    :goto_9
    and-int/lit8 v11, p11, 0x20

    const/high16 v12, 0x70000

    if-eqz v11, :cond_10

    const/high16 v13, 0x30000

    or-int/2addr v4, v13

    :cond_f
    move-object/from16 v13, p7

    goto :goto_b

    :cond_10
    and-int v13, v10, v12

    if-nez v13, :cond_f

    move-object/from16 v13, p7

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v4, v14

    :goto_b
    and-int/lit8 v14, p11, 0x40

    const/high16 v16, 0x180000

    if-eqz v14, :cond_12

    or-int v4, v4, v16

    goto :goto_d

    :cond_12
    const/high16 v14, 0x380000

    and-int/2addr v14, v10

    if-nez v14, :cond_14

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v14, 0x80000

    :goto_c
    or-int/2addr v4, v14

    :cond_14
    :goto_d
    const v14, 0x2db6db

    and-int/2addr v14, v4

    const v12, 0x92492

    if-ne v14, v12, :cond_16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_15

    goto :goto_e

    .line 532
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v23, v13

    goto :goto_10

    :cond_16
    :goto_e
    if-eqz v11, :cond_17

    .line 511
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v23, v11

    goto :goto_f

    :cond_17
    move-object/from16 v23, v13

    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material.AppBar (AppBar.kt:504)"

    .line 513
    invoke-static {v0, v4, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    const/16 v17, 0x0

    .line 520
    new-instance v0, Landroidx/compose/material/AppBarKt$AppBar$1;

    invoke-direct {v0, v6, v9, v4}, Landroidx/compose/material/AppBarKt$AppBar$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V

    const v11, -0x3d437250

    const/4 v12, 0x1

    invoke-static {v1, v11, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v19

    shr-int/lit8 v0, v4, 0xf

    and-int/lit8 v0, v0, 0xe

    or-int v0, v0, v16

    shr-int/lit8 v11, v4, 0x9

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v0, v11

    shl-int/lit8 v11, v4, 0x6

    and-int/lit16 v12, v11, 0x380

    or-int/2addr v0, v12

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v0, v11

    shl-int/lit8 v4, v4, 0x9

    const/high16 v11, 0x70000

    and-int/2addr v4, v11

    or-int v21, v0, v4

    const/16 v22, 0x10

    move-object/from16 v11, v23

    move-object/from16 v12, p6

    move-wide/from16 v13, p0

    move-wide/from16 v15, p2

    move/from16 v18, p4

    move-object/from16 v20, v1

    .line 514
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 532
    :cond_19
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_1a

    goto :goto_11

    :cond_1a
    new-instance v13, Landroidx/compose/material/AppBarKt$AppBar$2;

    move-object v0, v13

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, v23

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$AppBar$2;-><init>(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_11
    return-void
.end method

.method public static final TopAppBar-xWeB9-s(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFLandroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v10, p10

    const-string v0, "title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x7c70822b

    move-object/from16 v2, p9

    .line 85
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v10, 0x70

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, p11, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v10, 0x380

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    :goto_5
    and-int/lit8 v8, p11, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v10, 0x1c00

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    :goto_7
    const v11, 0xe000

    and-int/2addr v11, v10

    if-nez v11, :cond_e

    and-int/lit8 v11, p11, 0x10

    if-nez v11, :cond_c

    move-wide/from16 v11, p4

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v11, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v3, v13

    goto :goto_9

    :cond_e
    move-wide/from16 v11, p4

    :goto_9
    const/high16 v13, 0x70000

    and-int v14, v10, v13

    if-nez v14, :cond_11

    and-int/lit8 v14, p11, 0x20

    if-nez v14, :cond_f

    move-wide/from16 v14, p6

    invoke-interface {v2, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v14, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v3, v3, v16

    goto :goto_b

    :cond_11
    move-wide/from16 v14, p6

    :goto_b
    and-int/lit8 v16, p11, 0x40

    if-eqz v16, :cond_12

    const/high16 v17, 0x180000

    or-int v3, v3, v17

    move/from16 v13, p8

    goto :goto_d

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v10, v17

    move/from16 v13, p8

    if-nez v17, :cond_14

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v3, v3, v17

    :cond_14
    :goto_d
    const v17, 0x2db6db

    and-int v0, v3, v17

    const v5, 0x92492

    if-ne v0, v5, :cond_16

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 126
    :cond_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object v4, v7

    move-object v6, v9

    move-wide v7, v11

    move v9, v13

    move-wide/from16 v23, v14

    goto/16 :goto_16

    .line 85
    :cond_16
    :goto_e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    const v5, -0x70001

    const v17, -0xe001

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 84
    :cond_17
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_18

    and-int v3, v3, v17

    :cond_18
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_19

    and-int/2addr v3, v5

    :cond_19
    move-object/from16 v0, p1

    move-object v4, v7

    move-object v6, v9

    move-wide v7, v11

    move v5, v13

    move-wide/from16 v23, v14

    goto :goto_15

    :cond_1a
    :goto_f
    if-eqz v4, :cond_1b

    .line 79
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_10

    :cond_1b
    move-object/from16 v0, p1

    :goto_10
    if-eqz v6, :cond_1c

    const/4 v4, 0x0

    goto :goto_11

    :cond_1c
    move-object v4, v7

    :goto_11
    if-eqz v8, :cond_1d

    .line 80
    sget-object v6, Landroidx/compose/material/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$AppBarKt;

    invoke-virtual {v6}, Landroidx/compose/material/ComposableSingletons$AppBarKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    goto :goto_12

    :cond_1d
    move-object v6, v9

    :goto_12
    and-int/lit8 v7, p11, 0x10

    if-eqz v7, :cond_1e

    .line 82
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v2, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v7

    and-int v3, v3, v17

    goto :goto_13

    :cond_1e
    move-wide v7, v11

    :goto_13
    and-int/lit8 v9, p11, 0x20

    if-eqz v9, :cond_1f

    shr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0xe

    .line 83
    invoke-static {v7, v8, v2, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    and-int/2addr v3, v5

    goto :goto_14

    :cond_1f
    move-wide v11, v14

    :goto_14
    if-eqz v16, :cond_20

    .line 84
    sget-object v5, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v5}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    move-result v5

    move-wide/from16 v23, v11

    goto :goto_15

    :cond_20
    move-wide/from16 v23, v11

    move v5, v13

    :goto_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_21

    const/4 v9, -0x1

    const-string v11, "androidx.compose.material.TopAppBar (AppBar.kt:76)"

    const v12, -0x7c70822b

    .line 85
    invoke-static {v12, v3, v9, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 90
    :cond_21
    sget-object v9, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v9}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v16

    .line 91
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v17

    .line 93
    new-instance v9, Landroidx/compose/material/AppBarKt$TopAppBar$1;

    invoke-direct {v9, v4, v3, v1, v6}, Landroidx/compose/material/AppBarKt$TopAppBar$1;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    const v11, -0x58753a7e

    const/4 v12, 0x1

    invoke-static {v2, v11, v12, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v19

    shr-int/lit8 v9, v3, 0xc

    and-int/lit8 v11, v9, 0xe

    const v12, 0x186c00

    or-int/2addr v11, v12

    and-int/lit8 v12, v9, 0x70

    or-int/2addr v11, v12

    and-int/lit16 v9, v9, 0x380

    or-int/2addr v9, v11

    shl-int/lit8 v3, v3, 0xc

    const/high16 v11, 0x70000

    and-int/2addr v3, v11

    or-int v21, v9, v3

    const/16 v22, 0x0

    move-wide v11, v7

    move-wide/from16 v13, v23

    move v15, v5

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    .line 86
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/AppBarKt;->AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    move-object v3, v0

    move v9, v5

    .line 126
    :goto_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_23

    goto :goto_17

    :cond_23
    new-instance v13, Landroidx/compose/material/AppBarKt$TopAppBar$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-wide v5, v7

    move-wide/from16 v7, v23

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$TopAppBar$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFII)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_17
    return-void
.end method

.method public static final synthetic access$AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Landroidx/compose/material/AppBarKt;->AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$getAppBarHeight$p()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    return v0
.end method

.method public static final synthetic access$getAppBarHorizontalPadding$p()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getTitleIconModifier$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final synthetic access$getTitleInsetWithoutIcon$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    return-object v0
.end method
