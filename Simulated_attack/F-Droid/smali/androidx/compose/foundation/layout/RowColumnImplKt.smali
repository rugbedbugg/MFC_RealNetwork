.class public abstract Landroidx/compose/foundation/layout/RowColumnImplKt;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# direct methods
.method private static final MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 429
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 430
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMaxHeight()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    goto :goto_0

    .line 432
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMaxHeight()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 422
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 423
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMaxWidth()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    goto :goto_0

    .line 425
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMaxWidth()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 415
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 416
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMinHeight()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    goto :goto_0

    .line 418
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMinHeight()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 408
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 409
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMinWidth()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    goto :goto_0

    .line 411
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMinWidth()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final synthetic access$MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    move-result p0

    return p0
.end method

.method public static final getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFill()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F
    .locals 0

    if-eqz p0, :cond_0

    .line 396
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getWeight()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)I
    .locals 10

    .line 584
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v5, v3

    move v4, v2

    :goto_0
    const v6, 0x7fffffff

    if-ge v3, v0, :cond_2

    .line 35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 36
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 588
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v8

    cmpg-float v9, v8, v2

    if-nez v9, :cond_0

    .line 593
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v7, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sub-int v8, p3, p4

    .line 594
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr p4, v6

    .line 598
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_0
    cmpl-float v6, v8, v2

    if-lez v6, :cond_1

    add-float/2addr v4, v8

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmpg-float p1, v4, v2

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    if-ne p3, v6, :cond_4

    move p1, v6

    goto :goto_2

    :cond_4
    sub-int/2addr p3, p4

    .line 610
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    .line 34
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    :goto_3
    if-ge v1, p3, :cond_7

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .line 36
    check-cast p4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 614
    invoke-static {p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_6

    if-eq p1, v6, :cond_5

    int-to-float v3, p1

    mul-float/2addr v3, v0

    .line 621
    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v6

    .line 623
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 619
    invoke-interface {p2, p4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    move v5, p4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return v5
.end method

.method private static final intrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;II)I
    .locals 9

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 564
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v7

    .line 565
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v6, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    cmpg-float v8, v7, v2

    if-nez v8, :cond_0

    add-int/2addr v4, v6

    goto :goto_1

    :cond_0
    cmpl-float v8, v7, v2

    if-lez v8, :cond_1

    add-float/2addr v5, v7

    int-to-float v6, v6

    div-float/2addr v6, v7

    .line 570
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-float p1, v3

    mul-float/2addr p1, v5

    .line 573
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    add-int/2addr p1, v4

    .line 574
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p3

    add-int/2addr p1, p0

    return p1
.end method

.method private static final intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 0

    if-ne p5, p6, :cond_0

    .line 543
    invoke-static {p0, p1, p3, p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->intrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;II)I

    move-result p0

    goto :goto_0

    .line 545
    :cond_0
    invoke-static {p0, p2, p1, p3, p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 0

    .line 405
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->isRelative$foundation_layout_release()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final rowColumnMeasurePolicy-TDGSqEk(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 7

    const-string v0, "orientation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arrangement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossAxisSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossAxisAlignment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)V

    return-object v0
.end method
