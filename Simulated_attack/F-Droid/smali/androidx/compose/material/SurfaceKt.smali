.class public abstract Landroidx/compose/material/SurfaceKt;
.super Ljava/lang/Object;
.source "Surface.kt"


# direct methods
.method public static final Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v10, p8

    move/from16 v11, p10

    const-string v0, "content"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x542c837a

    move-object/from16 v1, p9

    .line 113
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v3, v11, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v11

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v11

    :goto_1
    and-int/lit8 v5, p11, 0x2

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v11, 0x70

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :goto_3
    and-int/lit16 v7, v11, 0x380

    if-nez v7, :cond_8

    and-int/lit8 v7, p11, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p2

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p2

    :goto_5
    and-int/lit16 v9, v11, 0x1c00

    if-nez v9, :cond_a

    and-int/lit8 v9, p11, 0x8

    move-wide/from16 v13, p4

    if-nez v9, :cond_9

    invoke-interface {v12, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v4, v9

    goto :goto_7

    :cond_a
    move-wide/from16 v13, p4

    :goto_7
    and-int/lit8 v9, p11, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v4, v4, 0x6000

    :cond_b
    move-object/from16 v15, p6

    goto :goto_9

    :cond_c
    const v15, 0xe000

    and-int/2addr v15, v11

    if-nez v15, :cond_b

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v4, v4, v16

    :goto_9
    and-int/lit8 v16, p11, 0x20

    if-eqz v16, :cond_e

    const/high16 v17, 0x30000

    or-int v4, v4, v17

    move/from16 v2, p7

    goto :goto_b

    :cond_e
    const/high16 v17, 0x70000

    and-int v17, v11, v17

    move/from16 v2, p7

    if-nez v17, :cond_10

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v4, v4, v17

    :cond_10
    :goto_b
    and-int/lit8 v17, p11, 0x40

    if-eqz v17, :cond_11

    const/high16 v17, 0x180000

    :goto_c
    or-int v4, v4, v17

    goto :goto_d

    :cond_11
    const/high16 v17, 0x380000

    and-int v17, v11, v17

    if-nez v17, :cond_13

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    goto :goto_c

    :cond_13
    :goto_d
    const v17, 0x2db6db

    and-int v0, v4, v17

    const v2, 0x92492

    if-ne v0, v2, :cond_15

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_e

    .line 141
    :cond_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v1, v3

    move-object v2, v6

    move-wide v3, v7

    move-wide v5, v13

    move-object v7, v15

    move/from16 v8, p7

    goto/16 :goto_14

    .line 113
    :cond_15
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_10

    .line 154
    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_17

    and-int/lit16 v4, v4, -0x381

    :cond_17
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v0, v4, -0x1c01

    move/from16 v20, p7

    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    move-object v13, v3

    move-object v14, v6

    move-wide v15, v7

    move v6, v0

    goto :goto_13

    :cond_18
    move/from16 v20, p7

    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    move-object v13, v3

    :goto_f
    move-object v14, v6

    move-wide v15, v7

    move v6, v4

    goto :goto_13

    :cond_19
    :goto_10
    if-eqz v1, :cond_1a

    .line 106
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_11

    :cond_1a
    move-object v0, v3

    :goto_11
    if-eqz v5, :cond_1b

    .line 107
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    move-object v6, v1

    :cond_1b
    and-int/lit8 v1, p11, 0x4

    if-eqz v1, :cond_1c

    .line 108
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v1, v12, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int/lit16 v4, v4, -0x381

    :cond_1c
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_1d

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0xe

    .line 109
    invoke-static {v7, v8, v12, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v13

    and-int/lit16 v4, v4, -0x1c01

    :cond_1d
    if-eqz v9, :cond_1e

    const/4 v1, 0x0

    move-object v15, v1

    :cond_1e
    if-eqz v16, :cond_1f

    int-to-float v1, v2

    .line 154
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move/from16 v20, v1

    :goto_12
    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    move-object v13, v0

    goto :goto_f

    :cond_1f
    move/from16 v20, p7

    goto :goto_12

    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.Surface (Surface.kt:104)"

    const v3, 0x542c837a

    .line 113
    invoke-static {v3, v6, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 114
    :cond_20
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v20

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v9, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 116
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    aput-object v0, v9, v2

    .line 117
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v9, v8

    .line 118
    new-instance v7, Landroidx/compose/material/SurfaceKt$Surface$1;

    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-object v10, v7

    move-object/from16 v7, v17

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;)V

    const v0, -0x6c9bf7c6

    invoke-static {v12, v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v21

    .line 115
    invoke-static {v2, v0, v12, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_21
    move-object v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-object/from16 v7, v17

    move-wide/from16 v5, v18

    move/from16 v8, v20

    .line 141
    :goto_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_22

    goto :goto_15

    :cond_22
    new-instance v13, Landroidx/compose/material/SurfaceKt$Surface$2;

    move-object v0, v13

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;II)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_15
    return-void
.end method

.method public static final Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v13, p0

    move-object/from16 v14, p11

    move/from16 v15, p13

    move/from16 v12, p14

    const-string v0, "onClick"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d0914cd

    move-object/from16 v1, p12

    .line 223
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v15, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_2
    move v1, v15

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v15, 0x70

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :goto_3
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_6

    move/from16 v6, p2

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    :goto_5
    and-int/lit8 v7, v12, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_6

    :cond_b
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    :goto_7
    const v9, 0xe000

    and-int/2addr v9, v15

    if-nez v9, :cond_e

    and-int/lit8 v9, v12, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v9, p4

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v9, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_e
    move-wide/from16 v9, p4

    :goto_9
    const/high16 v16, 0x70000

    and-int v16, v15, v16

    if-nez v16, :cond_11

    and-int/lit8 v16, v12, 0x20

    if-nez v16, :cond_f

    move/from16 v16, v3

    move-wide/from16 v2, p6

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    move/from16 v16, v3

    move-wide/from16 v2, p6

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_11
    move/from16 v16, v3

    move-wide/from16 v2, p6

    :goto_b
    and-int/lit8 v17, v12, 0x40

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    const/high16 v18, 0x380000

    and-int v18, v15, v18

    move-object/from16 v0, p8

    if-nez v18, :cond_14

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v1, v1, v19

    :cond_14
    :goto_d
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v19, 0xc00000

    or-int v1, v1, v19

    move/from16 v2, p9

    goto :goto_f

    :cond_15
    const/high16 v19, 0x1c00000

    and-int v19, v15, v19

    move/from16 v2, p9

    if-nez v19, :cond_17

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_16

    const/high16 v3, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v3, 0x400000

    :goto_e
    or-int/2addr v1, v3

    :cond_17
    :goto_f
    and-int/lit16 v3, v12, 0x100

    if-eqz v3, :cond_18

    const/high16 v19, 0x6000000

    or-int v1, v1, v19

    move-object/from16 v2, p10

    goto :goto_11

    :cond_18
    const/high16 v19, 0xe000000

    and-int v19, v15, v19

    move-object/from16 v2, p10

    if-nez v19, :cond_1a

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v19, 0x2000000

    :goto_10
    or-int v1, v1, v19

    :cond_1a
    :goto_11
    and-int/lit16 v2, v12, 0x200

    if-eqz v2, :cond_1b

    const/high16 v2, 0x30000000

    :goto_12
    or-int/2addr v1, v2

    goto :goto_13

    :cond_1b
    const/high16 v2, 0x70000000

    and-int/2addr v2, v15

    if-nez v2, :cond_1d

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/high16 v2, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v2, 0x10000000

    goto :goto_12

    :cond_1d
    :goto_13
    const v2, 0x5b6db6db

    and-int/2addr v2, v1

    const v4, 0x12492492

    if-ne v2, v4, :cond_1f

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_14

    .line 253
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move v3, v6

    move-object v4, v8

    move-wide v5, v9

    move-object v15, v11

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    goto/16 :goto_1e

    .line 223
    :cond_1f
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const v19, -0x70001

    const v20, -0xe001

    if-eqz v2, :cond_23

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_15

    .line 25
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_21

    and-int v1, v1, v20

    :cond_21
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_22

    and-int v0, v1, v19

    move-object/from16 v16, p1

    move-wide/from16 v23, p6

    move-object/from16 v25, p8

    move/from16 v26, p9

    move-object/from16 v27, p10

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move v6, v0

    goto/16 :goto_1d

    :cond_22
    move-object/from16 v16, p1

    move-wide/from16 v23, p6

    move-object/from16 v25, p8

    move/from16 v26, p9

    move-object/from16 v27, p10

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move v6, v1

    goto/16 :goto_1d

    :cond_23
    :goto_15
    if-eqz v16, :cond_24

    .line 214
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_24
    move-object/from16 v2, p1

    :goto_16
    if-eqz v5, :cond_25

    const/4 v6, 0x1

    :cond_25
    if-eqz v7, :cond_26

    .line 216
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    goto :goto_17

    :cond_26
    move-object v5, v8

    :goto_17
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_27

    .line 217
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v11, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int v1, v1, v20

    goto :goto_18

    :cond_27
    move-wide v7, v9

    :goto_18
    and-int/lit8 v9, v12, 0x20

    if-eqz v9, :cond_28

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0xe

    .line 218
    invoke-static {v7, v8, v11, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int v1, v1, v19

    goto :goto_19

    :cond_28
    move-wide/from16 v9, p6

    :goto_19
    if-eqz v17, :cond_29

    const/16 v16, 0x0

    goto :goto_1a

    :cond_29
    move-object/from16 v16, p8

    :goto_1a
    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    int-to-float v4, v0

    .line 154
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_1b

    :cond_2a
    move/from16 v0, p9

    :goto_1b
    if-eqz v3, :cond_2c

    const v3, -0x1d58f75c

    .line 221
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 1098
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2b

    .line 221
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 1100
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_2b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v26, v0

    move-object/from16 v27, v3

    :goto_1c
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    move-wide/from16 v23, v9

    move-object/from16 v25, v16

    move v6, v1

    move-object/from16 v16, v2

    goto :goto_1d

    :cond_2c
    move-object/from16 v27, p10

    move/from16 v26, v0

    goto :goto_1c

    :goto_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.Surface (Surface.kt:211)"

    const v2, 0x5d0914cd

    .line 223
    invoke-static {v2, v6, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 224
    :cond_2d
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v26

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v10, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 226
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    .line 227
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v10, v3

    .line 228
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$4;

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move v8, v3

    move-wide/from16 v3, v21

    move-object/from16 v7, v25

    move v13, v8

    move/from16 v8, v26

    move-object v14, v9

    move-object/from16 v9, v27

    move-object/from16 v28, v10

    move/from16 v10, v19

    move-object v15, v11

    move-object/from16 v11, p0

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/SurfaceKt$Surface$4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x7916180d

    invoke-static {v15, v0, v13, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v28

    .line 225
    invoke-static {v2, v0, v15, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2e
    move-object/from16 v2, v16

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-wide/from16 v5, v21

    move-wide/from16 v7, v23

    move-object/from16 v9, v25

    move/from16 v10, v26

    move-object/from16 v11, v27

    .line 253
    :goto_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2f

    goto :goto_1f

    :cond_2f
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v29, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v29

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1f
    return-void
.end method

.method public static final synthetic access$surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p5

    move-object v2, p1

    .line 625
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 626
    sget-object p5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p5, p4, p1}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p4

    goto :goto_0

    :cond_0
    sget-object p4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_0
    invoke-interface {p0, p4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 627
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 628
    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 7

    const v0, 0x5d144bf8

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.surfaceColorAtElevation (Surface.kt:630)"

    .line 635
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 636
    :cond_0
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    and-int/lit8 v0, p5, 0xe

    shr-int/lit8 v1, p5, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p5, p5, 0x380

    or-int v6, v0, p5

    move-object v1, p2

    move-wide v2, p0

    move v4, p3

    move-object v5, p4

    .line 637
    invoke-interface/range {v1 .. v6}, Landroidx/compose/material/ElevationOverlay;->apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    .line 636
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide p0
.end method
