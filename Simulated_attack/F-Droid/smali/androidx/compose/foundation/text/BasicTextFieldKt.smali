.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "BasicTextField.kt"


# direct methods
.method public static final BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 37

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6b8eb362

    move-object/from16 v1, p16

    .line 287
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v13, 0x380

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    :goto_5
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move/from16 v2, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_9

    move/from16 v2, p3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v18

    goto :goto_6

    :cond_b
    move/from16 v19, v17

    :goto_6
    or-int v1, v1, v19

    :goto_7
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v3, p4

    goto :goto_9

    :cond_c
    and-int v23, v13, v22

    move/from16 v3, p4

    if-nez v23, :cond_e

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v21

    goto :goto_8

    :cond_d
    move/from16 v24, v20

    :goto_8
    or-int v1, v1, v24

    :cond_e
    :goto_9
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v1, v1, v26

    move-object/from16 v5, p5

    goto :goto_b

    :cond_f
    and-int v26, v13, v25

    move-object/from16 v5, p5

    if-nez v26, :cond_11

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v27, 0x10000

    :goto_a
    or-int v1, v1, v27

    :cond_11
    :goto_b
    and-int/lit8 v27, v11, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v1, v1, v28

    move-object/from16 v6, p6

    goto :goto_d

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v13, v28

    move-object/from16 v6, p6

    if-nez v28, :cond_14

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v29, 0x80000

    :goto_c
    or-int v1, v1, v29

    :cond_14
    :goto_d
    and-int/lit16 v7, v11, 0x80

    if-eqz v7, :cond_15

    const/high16 v30, 0xc00000

    or-int v1, v1, v30

    move-object/from16 v8, p7

    goto :goto_f

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v13, v30

    move-object/from16 v8, p7

    if-nez v30, :cond_17

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v31, 0x400000

    :goto_e
    or-int v1, v1, v31

    :cond_17
    :goto_f
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v32, 0x6000000

    or-int v1, v1, v32

    move/from16 v2, p8

    goto :goto_11

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v13, v32

    move/from16 v2, p8

    if-nez v32, :cond_1a

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v32, 0x2000000

    :goto_10
    or-int v1, v1, v32

    :cond_1a
    :goto_11
    const/high16 v32, 0x70000000

    and-int v32, v13, v32

    if-nez v32, :cond_1d

    and-int/lit16 v2, v11, 0x200

    if-nez v2, :cond_1b

    move/from16 v2, p9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_12

    :cond_1b
    move/from16 v2, p9

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_12
    or-int v1, v1, v32

    goto :goto_13

    :cond_1d
    move/from16 v2, p9

    :goto_13
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_1e

    or-int/lit8 v23, v12, 0x6

    move/from16 v3, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v32, v12, 0xe

    move/from16 v3, p10

    if-nez v32, :cond_20

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v23, 0x4

    goto :goto_14

    :cond_1f
    const/16 v23, 0x2

    :goto_14
    or-int v23, v12, v23

    goto :goto_15

    :cond_20
    move/from16 v23, v12

    :goto_15
    and-int/lit16 v3, v11, 0x800

    if-eqz v3, :cond_22

    or-int/lit8 v23, v23, 0x30

    :cond_21
    :goto_16
    move/from16 v5, v23

    goto :goto_18

    :cond_22
    and-int/lit8 v32, v12, 0x70

    move-object/from16 v5, p11

    if-nez v32, :cond_21

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_23

    const/16 v28, 0x20

    goto :goto_17

    :cond_23
    const/16 v28, 0x10

    :goto_17
    or-int v23, v23, v28

    goto :goto_16

    :goto_18
    and-int/lit16 v6, v11, 0x1000

    if-eqz v6, :cond_25

    or-int/lit16 v5, v5, 0x180

    :cond_24
    move-object/from16 v8, p12

    goto :goto_1a

    :cond_25
    and-int/lit16 v8, v12, 0x380

    if-nez v8, :cond_24

    move-object/from16 v8, p12

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26

    const/16 v29, 0x100

    goto :goto_19

    :cond_26
    const/16 v29, 0x80

    :goto_19
    or-int v5, v5, v29

    :goto_1a
    and-int/lit16 v8, v11, 0x2000

    if-eqz v8, :cond_28

    or-int/lit16 v5, v5, 0xc00

    :cond_27
    move-object/from16 v9, p13

    goto :goto_1b

    :cond_28
    and-int/lit16 v9, v12, 0x1c00

    if-nez v9, :cond_27

    move-object/from16 v9, p13

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29

    move/from16 v17, v18

    :cond_29
    or-int v5, v5, v17

    :goto_1b
    and-int/lit16 v9, v11, 0x4000

    if-eqz v9, :cond_2a

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v14, p14

    goto :goto_1c

    :cond_2a
    and-int v17, v12, v22

    move-object/from16 v14, p14

    if-nez v17, :cond_2c

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move/from16 v20, v21

    :cond_2b
    or-int v5, v5, v20

    :cond_2c
    :goto_1c
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_2d

    const/high16 v18, 0x30000

    or-int v5, v5, v18

    move-object/from16 v12, p15

    goto :goto_1e

    :cond_2d
    and-int v18, v12, v25

    move-object/from16 v12, p15

    if-nez v18, :cond_2f

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    const/high16 v18, 0x20000

    goto :goto_1d

    :cond_2e
    const/high16 v18, 0x10000

    :goto_1d
    or-int v5, v5, v18

    :cond_2f
    :goto_1e
    const v18, 0x5b6db6db

    and-int v12, v1, v18

    const v14, 0x12492492

    if-ne v12, v14, :cond_31

    const v12, 0x5b6db

    and-int/2addr v12, v5

    const v14, 0x12492

    if-ne v12, v14, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_30

    goto :goto_1f

    .line 310
    :cond_30
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v22, v10

    move/from16 v10, p9

    goto/16 :goto_32

    .line 287
    :cond_31
    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_34

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_20

    .line 284
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_33

    const v0, -0x70000001

    and-int/2addr v1, v0

    :cond_33
    move-object/from16 v20, p2

    move/from16 v21, p3

    move/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v14, p6

    move-object/from16 v26, p7

    move/from16 v12, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, p11

    move-object/from16 v30, p12

    move-object/from16 v32, p13

    move-object/from16 v33, p14

    move-object/from16 v34, p15

    move v0, v1

    goto/16 :goto_2f

    :cond_34
    :goto_20
    if-eqz v4, :cond_35

    .line 272
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_21

    :cond_35
    move-object/from16 v4, p2

    :goto_21
    if-eqz v16, :cond_36

    const/4 v12, 0x1

    goto :goto_22

    :cond_36
    move/from16 v12, p3

    :goto_22
    if-eqz v19, :cond_37

    const/16 v16, 0x0

    goto :goto_23

    :cond_37
    move/from16 v16, p4

    :goto_23
    if-eqz v24, :cond_38

    .line 275
    sget-object v18, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v18

    goto :goto_24

    :cond_38
    move-object/from16 v18, p5

    :goto_24
    if-eqz v27, :cond_39

    .line 276
    sget-object v19, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v19

    goto :goto_25

    :cond_39
    move-object/from16 v19, p6

    :goto_25
    if-eqz v7, :cond_3a

    .line 277
    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v7

    goto :goto_26

    :cond_3a
    move-object/from16 v7, p7

    :goto_26
    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_27

    :cond_3b
    move/from16 v0, p8

    :goto_27
    and-int/lit16 v14, v11, 0x200

    if-eqz v14, :cond_3d

    if-eqz v0, :cond_3c

    const/4 v14, 0x1

    goto :goto_28

    :cond_3c
    const v14, 0x7fffffff

    :goto_28
    const v20, -0x70000001

    and-int v1, v1, v20

    goto :goto_29

    :cond_3d
    move/from16 v14, p9

    :goto_29
    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_2a

    :cond_3e
    move/from16 v2, p10

    :goto_2a
    if-eqz v3, :cond_3f

    .line 281
    sget-object v3, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v3

    goto :goto_2b

    :cond_3f
    move-object/from16 v3, p11

    :goto_2b
    if-eqz v6, :cond_40

    .line 282
    sget-object v6, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;

    goto :goto_2c

    :cond_40
    move-object/from16 v6, p12

    :goto_2c
    if-eqz v8, :cond_42

    const v8, -0x1d58f75c

    .line 283
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 1098
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_41

    .line 283
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v8

    .line 1100
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_41
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_2d

    :cond_42
    move/from16 p2, v0

    move-object/from16 v0, p13

    :goto_2d
    if-eqz v9, :cond_43

    .line 284
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p4, v0

    move/from16 p3, v1

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v0

    const/4 v9, 0x0

    invoke-direct {v8, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2e

    :cond_43
    move-object/from16 p4, v0

    move/from16 p3, v1

    move-object/from16 v8, p14

    :goto_2e
    if-eqz v17, :cond_44

    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-2$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    move-object/from16 v32, p4

    move-object/from16 v34, v0

    move/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v20, v4

    move-object/from16 v30, v6

    move-object/from16 v26, v7

    move-object/from16 v33, v8

    move/from16 v21, v12

    move/from16 v27, v14

    move/from16 v23, v16

    move-object/from16 v24, v18

    move-object/from16 v14, v19

    move/from16 v12, p2

    move/from16 v0, p3

    goto :goto_2f

    :cond_44
    move/from16 v0, p3

    move-object/from16 v32, p4

    move-object/from16 v34, p15

    move/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v20, v4

    move-object/from16 v30, v6

    move-object/from16 v26, v7

    move-object/from16 v33, v8

    move/from16 v21, v12

    move/from16 v27, v14

    move/from16 v23, v16

    move-object/from16 v24, v18

    move-object/from16 v14, v19

    move/from16 v12, p2

    :goto_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:268)"

    const v2, 0x6b8eb362

    .line 287
    invoke-static {v2, v0, v5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 301
    :cond_45
    invoke-virtual {v14, v12}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v16

    xor-int/lit8 v8, v12, 0x1

    if-eqz v12, :cond_46

    const/16 v31, 0x1

    goto :goto_30

    :cond_46
    move/from16 v31, v28

    :goto_30
    if-eqz v12, :cond_47

    const/4 v9, 0x1

    goto :goto_31

    :cond_47
    move/from16 v9, v27

    :goto_31
    and-int/lit8 v2, v0, 0xe

    const v1, 0x1e7b2b64

    .line 290
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v7, p1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1097
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_48

    .line 1098
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_49

    .line 290
    :cond_48
    new-instance v3, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;

    invoke-direct {v3, v15, v7}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V

    .line 1100
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_49
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x9

    and-int v4, v3, v22

    or-int/2addr v2, v4

    and-int v4, v3, v25

    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int v17, v2, v3

    shr-int/lit8 v2, v0, 0xf

    and-int/lit16 v2, v2, 0x380

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v2, v3

    and-int v0, v0, v22

    or-int/2addr v0, v2

    and-int v2, v5, v25

    or-int v18, v0, v2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v22, v10

    move/from16 v10, v31

    move-object/from16 v11, v16

    move/from16 v25, v12

    move-object/from16 v12, v26

    move/from16 v13, v21

    move-object/from16 v31, v14

    move/from16 v14, v23

    move-object/from16 v15, v34

    move-object/from16 v16, v22

    .line 288
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4a
    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v9, v25

    move-object/from16 v8, v26

    move/from16 v10, v27

    move/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v7, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move-object/from16 v16, v34

    .line 310
    :goto_32
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_4b

    goto :goto_33

    :cond_4b
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;

    move-object v0, v1

    move-object/from16 v35, v1

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object/from16 v2, p1

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v35

    move-object/from16 v0, v36

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_33
    return-void
.end method
