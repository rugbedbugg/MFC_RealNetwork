.class public abstract Landroidx/compose/foundation/layout/AlignmentLineKt;
.super Ljava/lang/Object;
.source "AlignmentLine.kt"


# direct methods
.method public static final synthetic access$alignmentLineOffsetMeasure-tjqqzMA(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/AlignmentLineKt;->alignmentLineOffsetMeasure-tjqqzMA(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/AlignmentLineKt;->getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z

    move-result p0

    return p0
.end method

.method private static final alignmentLineOffsetMeasure-tjqqzMA(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v1, p3

    .line 324
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    move-wide/from16 v4, p5

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    :goto_0
    move-object/from16 v2, p4

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    move-wide/from16 v6, p5

    .line 325
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    goto :goto_0

    .line 322
    :goto_1
    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    move-object v2, p1

    .line 327
    invoke-interface {v7, p1}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v4

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v6

    .line 330
    :goto_2
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    .line 331
    :goto_3
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    goto :goto_4

    :cond_3
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    .line 334
    :goto_4
    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v10

    invoke-static {v3, v10}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v10

    goto :goto_5

    :cond_4
    move v10, v6

    :goto_5
    sub-int/2addr v10, v4

    sub-int/2addr v8, v5

    .line 335
    invoke-static {v10, v6, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v10

    .line 337
    invoke-virtual {v9}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v9

    invoke-static {v1, v9}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    goto :goto_6

    :cond_5
    move v1, v6

    :goto_6
    sub-int/2addr v1, v5

    add-int/2addr v1, v4

    sub-int/2addr v8, v10

    .line 338
    invoke-static {v1, v6, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    .line 340
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    :goto_7
    move v9, v1

    goto :goto_8

    .line 343
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    add-int/2addr v1, v10

    add-int/2addr v1, v6

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_7

    .line 345
    :goto_8
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 346
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    add-int/2addr v1, v6

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_9
    move v11, v1

    goto :goto_a

    .line 348
    :cond_7
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_9

    :goto_a
    const/4 v12, 0x0

    .line 350
    new-instance v13, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;

    move-object v1, v13

    move-object v2, p1

    move/from16 v3, p2

    move v4, v10

    move v5, v9

    move v8, v11

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    move p1, v9

    move/from16 p2, v11

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final getHorizontal(Landroidx/compose/ui/layout/AlignmentLine;)Z
    .locals 0

    .line 365
    instance-of p0, p0, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    return p0
.end method

.method public static final paddingFrom-4j6BHR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FF)Landroidx/compose/ui/Modifier;
    .locals 7

    const-string v0, "$this$paddingFrom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpElement;

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FF)V

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 71
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpElement;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic paddingFrom-4j6BHR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 68
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 69
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p3

    .line 66
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFrom-4j6BHR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final paddingFromBaseline-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 8

    const-string v0, "$this$paddingFromBaseline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFrom-4j6BHR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_0
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 148
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 156
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-nez p1, :cond_1

    .line 157
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFrom-4j6BHR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    goto :goto_1

    .line 159
    :cond_1
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 155
    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
