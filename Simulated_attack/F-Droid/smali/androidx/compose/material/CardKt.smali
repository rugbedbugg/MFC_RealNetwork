.class public abstract Landroidx/compose/material/CardKt;
.super Ljava/lang/Object;
.source "Card.kt"


# direct methods
.method public static final Card-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    move-object/from16 v12, p9

    move/from16 v0, p10

    const-string v1, "content"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x74a1b8b8

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    and-int/lit8 v3, p11, 0x2

    const/4 v4, 0x6

    if-eqz v3, :cond_1

    .line 61
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v12, v4}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Shapes;->getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    and-int/lit8 v5, p11, 0x4

    if-eqz v5, :cond_2

    .line 62
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v5, v12, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p2

    :goto_2
    and-int/lit8 v6, p11, 0x8

    if-eqz v6, :cond_3

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0xe

    .line 63
    invoke-static {v4, v5, v12, v6}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p4

    :goto_3
    and-int/lit8 v9, p11, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v10, p11, 0x20

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    int-to-float v10, v10

    .line 154
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, -0x1

    const-string v13, "androidx.compose.material.Card (Card.kt:58)"

    .line 67
    invoke-static {v1, v0, v11, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    and-int/lit8 v1, v0, 0xe

    and-int/lit8 v11, v0, 0x70

    or-int/2addr v1, v11

    and-int/lit16 v11, v0, 0x380

    or-int/2addr v1, v11

    and-int/lit16 v11, v0, 0x1c00

    or-int/2addr v1, v11

    const v11, 0xe000

    and-int/2addr v11, v0

    or-int/2addr v1, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v0

    or-int/2addr v1, v11

    const/high16 v11, 0x380000

    and-int/2addr v0, v11

    or-int v11, v1, v0

    const/4 v13, 0x0

    move-object v0, v2

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-object v6, v9

    move v7, v10

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move v10, v11

    move v11, v13

    .line 68
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method
