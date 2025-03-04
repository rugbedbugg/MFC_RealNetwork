.class public abstract Landroidx/compose/material/FloatingActionButtonKt;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"


# static fields
.field private static final ExtendedFabIconPadding:F

.field private static final ExtendedFabSize:F

.field private static final ExtendedFabTextPadding:F

.field private static final FabSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->FabSize:F

    const/16 v0, 0x30

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabSize:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabIconPadding:F

    const/16 v0, 0x14

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabTextPadding:F

    return-void
.end method

.method public static final FloatingActionButton-bogVsAg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v15, p0

    move-object/from16 v14, p9

    move/from16 v13, p11

    move/from16 v12, p12

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3d5511f0

    move-object/from16 v1, p10

    .line 91
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
    move-object/from16 v5, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_4

    :cond_8
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    :goto_5
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_b

    and-int/lit8 v6, v12, 0x8

    if-nez v6, :cond_9

    move-object/from16 v6, p3

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v6, p3

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    const v7, 0xe000

    and-int v8, v13, v7

    if-nez v8, :cond_e

    and-int/lit8 v8, v12, 0x10

    if-nez v8, :cond_c

    move-wide/from16 v8, p4

    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v8, p4

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v1, v10

    goto :goto_9

    :cond_e
    move-wide/from16 v8, p4

    :goto_9
    const/high16 v10, 0x70000

    and-int v16, v13, v10

    if-nez v16, :cond_10

    and-int/lit8 v16, v12, 0x20

    move-wide/from16 v7, p6

    if-nez v16, :cond_f

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

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
    move-wide/from16 v7, p6

    :goto_b
    const/high16 v9, 0x380000

    and-int/2addr v9, v13

    if-nez v9, :cond_13

    and-int/lit8 v9, v12, 0x40

    if-nez v9, :cond_11

    move-object/from16 v9, p8

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_11
    move-object/from16 v9, p8

    :cond_12
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_13
    move-object/from16 v9, p8

    :goto_d
    and-int/lit16 v10, v12, 0x80

    if-eqz v10, :cond_14

    const/high16 v10, 0xc00000

    :goto_e
    or-int/2addr v1, v10

    goto :goto_f

    :cond_14
    const/high16 v10, 0x1c00000

    and-int/2addr v10, v13

    if-nez v10, :cond_16

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/high16 v10, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v10, 0x400000

    goto :goto_e

    :cond_16
    :goto_f
    const v10, 0x16db6db

    and-int/2addr v10, v1

    const v0, 0x492492

    if-ne v10, v0, :cond_18

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    .line 111
    :cond_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object/from16 v27, v11

    move-wide/from16 v5, p4

    goto/16 :goto_15

    .line 91
    :cond_18
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v10, -0x380001

    const v18, -0x70001

    const v19, -0xe001

    if-eqz v0, :cond_1e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_12

    .line 89
    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_1a

    and-int/lit16 v1, v1, -0x1c01

    :cond_1a
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1b

    and-int v1, v1, v19

    :cond_1b
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1c

    and-int v1, v1, v18

    :cond_1c
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_1d

    and-int/2addr v1, v10

    :cond_1d
    move-wide/from16 v19, p4

    :goto_11
    move-object v10, v3

    move-object/from16 v18, v6

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v5

    goto/16 :goto_14

    :cond_1e
    :goto_12
    if-eqz v2, :cond_1f

    .line 84
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v3, v0

    :cond_1f
    if-eqz v4, :cond_21

    const v0, -0x1d58f75c

    .line 85
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1098
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_20

    .line 85
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 1100
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v5, v0

    :cond_21
    and-int/lit8 v0, v12, 0x8

    const/4 v2, 0x6

    if-eqz v0, :cond_22

    .line 86
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v0, v11, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    const/16 v4, 0x32

    invoke-static {v4}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    and-int/lit16 v1, v1, -0x1c01

    move-object v6, v0

    :cond_22
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_23

    .line 87
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v0, v11, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    move-result-wide v20

    and-int v1, v1, v19

    move v2, v1

    move-wide/from16 v0, v20

    goto :goto_13

    :cond_23
    move v2, v1

    move-wide/from16 v0, p4

    :goto_13
    and-int/lit8 v4, v12, 0x20

    if-eqz v4, :cond_24

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xe

    .line 88
    invoke-static {v0, v1, v11, v4}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v2, v2, v18

    :cond_24
    and-int/lit8 v4, v12, 0x40

    if-eqz v4, :cond_25

    .line 89
    sget-object v4, Landroidx/compose/material/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6000

    const/16 v22, 0xf

    move-object/from16 p1, v4

    move/from16 p2, v9

    move/from16 p3, v18

    move/from16 p4, v19

    move/from16 p5, v20

    move-object/from16 p6, v11

    move/from16 p7, v21

    move/from16 p8, v22

    invoke-virtual/range {p1 .. p8}, Landroidx/compose/material/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;

    move-result-object v4

    and-int/2addr v2, v10

    move-wide/from16 v19, v0

    move v1, v2

    move-object v10, v3

    move-object v9, v5

    move-object/from16 v18, v6

    move-wide v6, v7

    move-object v8, v4

    goto :goto_14

    :cond_25
    move-wide/from16 v19, v0

    move v1, v2

    goto/16 :goto_11

    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material.FloatingActionButton (FloatingActionButton.kt:81)"

    const v3, 0x3d5511f0

    .line 91
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_26
    sget-object v0, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2;->INSTANCE:Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 94
    invoke-static {v10, v3, v0, v4, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v17, 0x0

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v5, v1, 0xf

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v0, v5

    .line 98
    invoke-interface {v8, v9, v11, v0}, Landroidx/compose/material/FloatingActionButtonElevation;->elevation(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v21

    .line 100
    new-instance v0, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$3;

    invoke-direct {v0, v6, v7, v14, v1}, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$3;-><init>(JLkotlin/jvm/functions/Function2;I)V

    const v5, 0x7597a2b7

    invoke-static {v11, v5, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v22

    and-int/lit8 v0, v1, 0xe

    const/high16 v4, 0x30000000

    or-int/2addr v0, v4

    and-int/lit16 v4, v1, 0x1c00

    or-int/2addr v0, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x12

    const/high16 v4, 0xe000000

    and-int/2addr v1, v4

    or-int v16, v0, v1

    const/16 v23, 0x44

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move/from16 v9, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    move-object/from16 v27, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v27

    move/from16 v13, v16

    move/from16 v14, v23

    .line 92
    invoke-static/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt;->Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_27
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-object/from16 v2, v21

    move-wide/from16 v7, v24

    move-object/from16 v9, v26

    .line 111
    :goto_15
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_28

    goto :goto_16

    :cond_28
    new-instance v14, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_16
    return-void
.end method

.method public static final synthetic access$getFabSize$p()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/FloatingActionButtonKt;->FabSize:F

    return v0
.end method
