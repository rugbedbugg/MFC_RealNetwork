.class public abstract Landroidx/compose/material/ButtonKt;
.super Ljava/lang/Object;
.source "Button.kt"


# direct methods
.method public static final Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move-object/from16 v15, p0

    move-object/from16 v14, p9

    move/from16 v13, p11

    move/from16 v12, p12

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x7e21a258

    move-object/from16 v1, p10

    .line 105
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move/from16 v5, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_6

    move/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_4

    :cond_8
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    :goto_5
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move-object/from16 v7, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_6

    :cond_b
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    :goto_7
    const v8, 0xe000

    and-int/2addr v8, v13

    if-nez v8, :cond_e

    and-int/lit8 v8, v12, 0x10

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v8, p4

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    const/high16 v9, 0x70000

    and-int/2addr v9, v13

    if-nez v9, :cond_10

    and-int/lit8 v9, v12, 0x20

    move-object/from16 v10, p5

    if-nez v9, :cond_f

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v1, v9

    goto :goto_b

    :cond_10
    move-object/from16 v10, p5

    :goto_b
    and-int/lit8 v16, v12, 0x40

    const/high16 v28, 0x380000

    if-eqz v16, :cond_12

    const/high16 v9, 0x180000

    or-int/2addr v1, v9

    :cond_11
    move-object/from16 v9, p6

    goto :goto_d

    :cond_12
    and-int v9, v13, v28

    if-nez v9, :cond_11

    move-object/from16 v9, p6

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    :goto_d
    const/high16 v17, 0x1c00000

    and-int v17, v13, v17

    if-nez v17, :cond_16

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_14

    move-object/from16 v0, p7

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p7

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    goto :goto_f

    :cond_16
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v9, v12, 0x100

    const/high16 v29, 0xe000000

    if-eqz v9, :cond_18

    const/high16 v17, 0x6000000

    or-int v1, v1, v17

    :cond_17
    move/from16 v17, v9

    move-object/from16 v9, p8

    goto :goto_11

    :cond_18
    and-int v17, v13, v29

    if-nez v17, :cond_17

    move/from16 v17, v9

    move-object/from16 v9, p8

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v30, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v30

    :cond_1a
    :goto_12
    move v0, v1

    goto :goto_14

    :cond_1b
    const/high16 v0, 0x70000000

    and-int/2addr v0, v13

    if-nez v0, :cond_1a

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v0, 0x10000000

    :goto_13
    or-int/2addr v1, v0

    goto :goto_12

    :goto_14
    const v1, 0x5b6db6db

    and-int/2addr v1, v0

    const v3, 0x12492492

    if-ne v1, v3, :cond_1e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_15

    .line 136
    :cond_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v21, v11

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    goto/16 :goto_22

    .line 105
    :cond_1e
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v13, 0x1

    const v31, -0x1c00001

    const v18, -0x70001

    const v19, -0xe001

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_23

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_16

    .line 103
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_20

    and-int v0, v0, v19

    :cond_20
    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_21

    and-int v0, v0, v18

    :cond_21
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_22

    and-int v0, v0, v31

    :cond_22
    move-object/from16 v17, p6

    move-object/from16 v4, p7

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v16, v10

    move v8, v5

    move v10, v9

    move-object/from16 v9, p1

    move-object/from16 v5, p8

    goto/16 :goto_1e

    :cond_23
    :goto_16
    if-eqz v2, :cond_24

    .line 96
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v32, v1

    goto :goto_17

    :cond_24
    move-object/from16 v32, p1

    :goto_17
    if-eqz v4, :cond_25

    move/from16 v33, v9

    goto :goto_18

    :cond_25
    move/from16 v33, v5

    :goto_18
    if-eqz v6, :cond_27

    const v1, -0x1d58f75c

    .line 98
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1098
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_26

    .line 98
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 1100
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_26
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v34, v1

    goto :goto_19

    :cond_27
    move-object/from16 v34, v7

    :goto_19
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_28

    .line 99
    sget-object v1, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x30000

    const/16 v20, 0x1f

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v11

    move v10, v9

    move/from16 v35, v17

    move/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material/ButtonDefaults;->elevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonElevation;

    move-result-object v1

    and-int v0, v0, v19

    move-object v8, v1

    goto :goto_1a

    :cond_28
    move v10, v9

    move/from16 v35, v17

    :goto_1a
    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_29

    .line 100
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v1, v11, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v1

    and-int v0, v0, v18

    goto :goto_1b

    :cond_29
    move-object/from16 v1, p5

    :goto_1b
    if-eqz v16, :cond_2a

    const/4 v2, 0x0

    goto :goto_1c

    :cond_2a
    move-object/from16 v2, p6

    :goto_1c
    and-int/lit16 v3, v12, 0x80

    if-eqz v3, :cond_2b

    .line 102
    sget-object v16, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x6000

    const/16 v27, 0xf

    move-object/from16 v25, v11

    invoke-virtual/range {v16 .. v27}, Landroidx/compose/material/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;

    move-result-object v3

    and-int v0, v0, v31

    goto :goto_1d

    :cond_2b
    move-object/from16 v3, p7

    :goto_1d
    if-eqz v35, :cond_2c

    .line 103
    sget-object v4, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/ButtonDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v5, v4

    move-object v7, v8

    move-object/from16 v9, v32

    move/from16 v8, v33

    move-object/from16 v6, v34

    move-object v4, v3

    goto :goto_1e

    :cond_2c
    move-object/from16 v5, p8

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v4, v3

    move-object v7, v8

    move-object/from16 v9, v32

    move/from16 v8, v33

    move-object/from16 v6, v34

    :goto_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.Button (Button.kt:93)"

    const v3, -0x7e21a258

    .line 105
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v2, v1, 0xe

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v2

    .line 106
    invoke-interface {v4, v8, v11, v3}, Landroidx/compose/material/ButtonColors;->contentColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    sget-object v12, Landroidx/compose/material/ButtonKt$Button$2;->INSTANCE:Landroidx/compose/material/ButtonKt$Button$2;

    const/4 v13, 0x0

    move/from16 v19, v0

    const/4 v0, 0x1

    const/4 v15, 0x0

    .line 109
    invoke-static {v9, v13, v12, v0, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 112
    invoke-interface {v4, v8, v11, v3}, Landroidx/compose/material/ButtonColors;->backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v20

    .line 113
    invoke-static {v10}, Landroidx/compose/material/ButtonKt;->Button$lambda$1(Landroidx/compose/runtime/State;)J

    move-result-wide v22

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xe

    const/16 v27, 0x0

    move-wide/from16 p1, v22

    move/from16 p3, v0

    move/from16 p4, v3

    move/from16 p5, v24

    move/from16 p6, v25

    move/from16 p7, v26

    move-object/from16 p8, v27

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v22

    const v0, -0x193de688

    .line 115
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-nez v7, :cond_2e

    move-object v3, v15

    goto :goto_1f

    :cond_2e
    and-int/lit8 v0, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    invoke-interface {v7, v8, v6, v11, v0}, Landroidx/compose/material/ButtonElevation;->elevation(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    :goto_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v3, :cond_2f

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    :goto_20
    move v13, v0

    goto :goto_21

    :cond_2f
    int-to-float v0, v13

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_20

    .line 117
    :goto_21
    new-instance v0, Landroidx/compose/material/ButtonKt$Button$3;

    move/from16 v2, v19

    invoke-direct {v0, v10, v5, v14, v2}, Landroidx/compose/material/ButtonKt$Button$3;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V

    const v3, 0x72cfaf

    const/4 v10, 0x1

    invoke-static {v11, v3, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v15

    and-int/lit8 v0, v2, 0xe

    or-int v0, v0, v30

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    and-int v1, v2, v28

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0xf

    and-int v1, v1, v29

    or-int v18, v0, v1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v8

    move-object/from16 v3, v16

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-wide/from16 v4, v20

    move-object/from16 v34, v6

    move-object/from16 v20, v7

    move-wide/from16 v6, v22

    move/from16 v33, v8

    move-object/from16 v8, v17

    move-object/from16 v32, v9

    move v9, v13

    move-object/from16 v10, v34

    move-object/from16 v21, v11

    move-object v11, v15

    move-object/from16 v12, v21

    move/from16 v13, v18

    move/from16 v14, v19

    .line 107
    invoke-static/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt;->Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_30
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    .line 136
    :goto_22
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_31

    goto :goto_23

    :cond_31
    new-instance v14, Landroidx/compose/material/ButtonKt$Button$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/ButtonKt$Button$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_23
    return-void
.end method

.method private static final Button$lambda$1(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v13, p10

    move/from16 v10, p11

    move/from16 v11, p12

    const-string v0, "onClick"

    move-object/from16 v12, p0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v14, p9

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v15, -0x69dda8d6

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p1

    :goto_0
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_1

    :cond_1
    move/from16 v17, p2

    :goto_1
    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_3

    const v0, -0x1d58f75c

    .line 172
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1098
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 172
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 1100
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_2
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v18, v0

    goto :goto_2

    :cond_3
    move-object/from16 v18, p3

    :goto_2
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object/from16 v19, v0

    goto :goto_3

    :cond_4
    move-object/from16 v19, p4

    :goto_3
    and-int/lit8 v0, v11, 0x20

    const/4 v1, 0x6

    if-eqz v0, :cond_5

    .line 174
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v0, v13, v1}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_4

    :cond_5
    move-object/from16 v20, p5

    :goto_4
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_6

    .line 175
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    invoke-virtual {v0, v13, v1}, Landroidx/compose/material/ButtonDefaults;->getOutlinedBorder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/BorderStroke;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_5

    :cond_6
    move-object/from16 v21, p6

    :goto_5
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_7

    .line 176
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v8, 0xc00

    const/4 v9, 0x7

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material/ButtonDefaults;->outlinedButtonColors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;

    move-result-object v0

    move-object v7, v0

    goto :goto_6

    :cond_7
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_8

    .line 177
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/ButtonDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object v8, v0

    goto :goto_7

    :cond_8
    move-object/from16 v8, p8

    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.OutlinedButton (Button.kt:167)"

    .line 179
    invoke-static {v15, v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    and-int/lit8 v0, v10, 0xe

    and-int/lit8 v1, v10, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int/2addr v1, v10

    or-int v11, v0, v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move v12, v15

    invoke-static/range {v0 .. v12}, Landroidx/compose/material/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v13, p10

    move/from16 v10, p11

    move/from16 v11, p12

    const-string v0, "onClick"

    move-object/from16 v12, p0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v14, p9

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v15, 0x1136b375

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p1

    :goto_0
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_1

    :cond_1
    move/from16 v17, p2

    :goto_1
    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_3

    const v0, -0x1d58f75c

    .line 226
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1098
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 226
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 1100
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_2
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v18, v0

    goto :goto_2

    :cond_3
    move-object/from16 v18, p3

    :goto_2
    and-int/lit8 v0, v11, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object/from16 v19, v1

    goto :goto_3

    :cond_4
    move-object/from16 v19, p4

    :goto_3
    and-int/lit8 v0, v11, 0x20

    if-eqz v0, :cond_5

    .line 228
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v0, v13, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_4

    :cond_5
    move-object/from16 v20, p5

    :goto_4
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_6

    move-object/from16 v21, v1

    goto :goto_5

    :cond_6
    move-object/from16 v21, p6

    :goto_5
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_7

    .line 230
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v8, 0xc00

    const/4 v9, 0x7

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material/ButtonDefaults;->textButtonColors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;

    move-result-object v0

    move-object v7, v0

    goto :goto_6

    :cond_7
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_8

    .line 231
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/ButtonDefaults;->getTextButtonContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object v8, v0

    goto :goto_7

    :cond_8
    move-object/from16 v8, p8

    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.TextButton (Button.kt:221)"

    .line 233
    invoke-static {v15, v10, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    and-int/lit8 v0, v10, 0xe

    and-int/lit8 v1, v10, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int/2addr v1, v10

    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int/2addr v1, v10

    or-int v11, v0, v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move v12, v15

    invoke-static/range {v0 .. v12}, Landroidx/compose/material/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final synthetic access$Button$lambda$1(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ButtonKt;->Button$lambda$1(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    return-wide v0
.end method
