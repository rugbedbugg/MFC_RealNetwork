.class public final Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
.super Ljava/lang/Object;
.source "RowColumnMeasurementHelper.kt"


# instance fields
.field private final arrangement:Lkotlin/jvm/functions/Function5;

.field private final arrangementSpacing:F

.field private final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private final crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field private final measurables:Ljava/util/List;

.field private final orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;

.field private final rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;)V
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arrangement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossAxisSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossAxisAlignment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeables"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangement:Lkotlin/jvm/functions/Function5;

    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    iput-object p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    iput-object p7, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 59
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    iget-object p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    .line 60
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object p4

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;)V

    return-void
.end method

.method private final getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I
    .locals 2

    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnParentData;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 289
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 290
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_2

    .line 291
    sget-object p4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 288
    :cond_2
    invoke-virtual {p2, p3, p4, p1, p5}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    move-result p1

    return p1
.end method

.method private final mainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)[I
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangement:Lkotlin/jvm/functions/Function5;

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 273
    invoke-interface {p4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    .line 270
    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method


# virtual methods
.method public final crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 67
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 64
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final measureWithoutPlacing-_EkL_-Y(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    const-string v2, "measureScope"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    move-wide/from16 v3, p2

    .line 87
    invoke-static {v3, v4, v2}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v2

    iget v4, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    .line 89
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    int-to-long v14, v4

    sub-int v4, v5, p4

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    move/from16 v10, p4

    move-wide/from16 v19, v12

    move/from16 v18, v16

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    :goto_0
    const v7, 0x7fffffff

    const/16 v22, 0x1

    if-ge v10, v5, :cond_5

    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    .line 103
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    iget-object v11, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 104
    aget-object v23, v11, v10

    .line 105
    invoke-static/range {v23 .. v23}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v11

    cmpl-float v24, v11, v16

    if-lez v24, :cond_0

    add-float v18, v18, v11

    add-int/lit8 v17, v17, 0x1

    move/from16 v24, v10

    move-wide v10, v12

    goto/16 :goto_4

    .line 321
    :cond_0
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v11

    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 112
    aget-object v6, v6, v10

    if-nez v6, :cond_2

    const/16 v24, 0x0

    if-ne v11, v7, :cond_1

    move/from16 v25, v7

    goto :goto_1

    :cond_1
    int-to-long v6, v11

    sub-long v6, v6, v19

    .line 119
    invoke-static {v6, v7, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v25, v6

    :goto_1
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x8

    const/16 v29, 0x0

    move-wide v6, v2

    move-object/from16 v30, v8

    move/from16 v8, v24

    move/from16 v31, v9

    move/from16 v9, v25

    move/from16 v24, v10

    move/from16 v10, v26

    move/from16 v32, v11

    move/from16 v11, v27

    move/from16 v12, v28

    move-object/from16 v13, v29

    .line 114
    invoke-static/range {v6 .. v13}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 122
    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v6

    move-object/from16 v8, v30

    .line 112
    invoke-interface {v8, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    goto :goto_2

    :cond_2
    move/from16 v31, v9

    move/from16 v24, v10

    move/from16 v32, v11

    :goto_2
    long-to-int v7, v14

    move/from16 v8, v32

    int-to-long v8, v8

    sub-long v8, v8, v19

    .line 126
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    .line 127
    invoke-static {v8, v9, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 129
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    add-int/2addr v8, v7

    int-to-long v8, v8

    add-long v19, v19, v8

    .line 130
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    move/from16 v9, v31

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-nez v21, :cond_4

    .line 131
    invoke-static/range {v23 .. v23}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    :cond_4
    :goto_3
    iget-object v9, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 132
    aput-object v6, v9, v24

    move v6, v7

    move v9, v8

    move/from16 v21, v22

    :goto_4
    add-int/lit8 v7, v24, 0x1

    move-wide v12, v10

    move v10, v7

    goto/16 :goto_0

    :cond_5
    move-wide v10, v12

    if-nez v17, :cond_6

    int-to-long v12, v6

    sub-long v19, v19, v12

    move/from16 p3, v4

    const/4 v1, 0x0

    const/4 v11, 0x0

    goto/16 :goto_e

    :cond_6
    cmpl-float v6, v18, v16

    if-lez v6, :cond_7

    .line 321
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    if-eq v8, v7, :cond_7

    .line 321
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    goto :goto_5

    .line 320
    :cond_7
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v8

    :goto_5
    add-int/lit8 v12, v17, -0x1

    int-to-long v12, v12

    mul-long/2addr v14, v12

    int-to-long v12, v8

    sub-long v12, v12, v19

    sub-long/2addr v12, v14

    .line 150
    invoke-static {v12, v13, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v12

    if-lez v6, :cond_8

    long-to-float v6, v12

    div-float v6, v6, v18

    goto :goto_6

    :cond_8
    move/from16 v6, v16

    .line 153
    :goto_6
    invoke-static/range {p4 .. p5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v11, v8

    check-cast v11, Lkotlin/collections/IntIterator;

    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v11

    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 154
    aget-object v7, v7, v11

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    add-int/2addr v10, v7

    const v7, 0x7fffffff

    goto :goto_7

    :cond_9
    int-to-long v7, v10

    sub-long/2addr v12, v7

    move/from16 v7, p4

    const/4 v11, 0x0

    :goto_8
    if-ge v7, v5, :cond_f

    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 158
    aget-object v8, v8, v7

    if-nez v8, :cond_e

    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    .line 159
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    iget-object v10, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 160
    aget-object v10, v10, v7

    .line 161
    invoke-static {v10}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v17

    cmpl-float v18, v17, v16

    if-lez v18, :cond_d

    .line 166
    invoke-static {v12, v13}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v1

    move/from16 p3, v4

    int-to-long v4, v1

    sub-long/2addr v12, v4

    mul-float v17, v17, v6

    .line 170
    invoke-static/range {v17 .. v17}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 174
    invoke-static {v10}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_a

    move v5, v4

    :goto_9
    move/from16 v17, v6

    goto :goto_a

    :cond_a
    move v5, v1

    goto :goto_9

    .line 323
    :goto_a
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    .line 173
    invoke-static {v5, v4, v1, v6}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v4

    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 182
    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v4

    .line 172
    invoke-interface {v8, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 184
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    add-int/2addr v11, v5

    .line 185
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-nez v21, :cond_c

    .line 186
    invoke-static {v10}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_b

    :cond_b
    move v6, v1

    goto :goto_c

    :cond_c
    :goto_b
    move/from16 v6, v22

    :goto_c
    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 187
    aput-object v4, v8, v7

    move v9, v5

    move/from16 v21, v6

    goto :goto_d

    .line 162
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "All weights <= 0 should have placeables"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move/from16 p3, v4

    move/from16 v17, v6

    const/4 v1, 0x0

    :goto_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, v17

    goto/16 :goto_8

    :cond_f
    move/from16 p3, v4

    const/4 v1, 0x0

    int-to-long v4, v11

    add-long v22, v4, v14

    const-wide/16 v24, 0x0

    .line 321
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    int-to-long v4, v4

    sub-long v26, v4, v19

    .line 191
    invoke-static/range {v22 .. v27}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v4

    long-to-int v11, v4

    :goto_e
    if-eqz v21, :cond_15

    move/from16 v7, p4

    move/from16 v6, p5

    move v4, v1

    move v5, v4

    :goto_f
    if-ge v7, v6, :cond_14

    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 199
    aget-object v8, v8, v7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 200
    aget-object v10, v10, v7

    .line 201
    invoke-static {v10}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 202
    invoke-virtual {v10, v8}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_10

    :cond_10
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_13

    .line 206
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/high16 v13, -0x80000000

    if-eq v12, v13, :cond_11

    goto :goto_11

    :cond_11
    move v12, v1

    .line 204
    :goto_11
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 212
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v12

    .line 214
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_12

    goto :goto_12

    .line 218
    :cond_12
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    :goto_12
    sub-int/2addr v12, v10

    .line 210
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_14
    move v7, v4

    goto :goto_13

    :cond_15
    move/from16 v6, p5

    move v5, v1

    move v7, v5

    :goto_13
    int-to-long v10, v11

    add-long v10, v19, v10

    const-wide/16 v12, 0x0

    .line 229
    invoke-static {v10, v11, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    .line 320
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v8

    .line 228
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 323
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    const v10, 0x7fffffff

    if-eq v8, v10, :cond_16

    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 233
    sget-object v10, Landroidx/compose/foundation/layout/SizeMode;->Expand:Landroidx/compose/foundation/layout/SizeMode;

    if-ne v8, v10, :cond_16

    .line 323
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    :goto_14
    move/from16 v3, p3

    goto :goto_15

    .line 322
    :cond_16
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    add-int/2addr v5, v7

    .line 239
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 237
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_14

    .line 245
    :goto_15
    new-array v5, v3, [I

    move v11, v1

    :goto_16
    if-ge v11, v3, :cond_17

    aput v1, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 246
    :cond_17
    new-array v8, v3, [I

    move v11, v1

    :goto_17
    if-ge v11, v3, :cond_18

    iget-object v1, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    add-int v9, v11, p4

    .line 247
    aget-object v1, v1, v9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_18
    move-object/from16 v1, p1

    .line 256
    invoke-direct {v0, v4, v8, v5, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)[I

    move-result-object v8

    .line 250
    new-instance v9, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    move-object v1, v9

    move v3, v4

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;-><init>(IIIII[I)V

    return-object v9
.end method

.method public final placeHelper(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;ILandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 11

    const-string v0, "placeableScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measureResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getEndIndex()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 307
    aget-object v2, v2, v0

    .line 308
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisPositions()[I

    move-result-object v9

    iget-object v3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    .line 312
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/foundation/layout/RowColumnParentData;

    :goto_1
    move-object v5, v3

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 313
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result v6

    .line 315
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getBeforeCrossAxisAlignmentLine()I

    move-result v8

    move-object v3, p0

    move-object v4, v2

    move-object v7, p4

    .line 310
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I

    move-result v3

    add-int v6, v3, p3

    iget-object v3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 317
    sget-object v4, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v3, v4, :cond_1

    .line 319
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v3

    sub-int v3, v0, v3

    aget v5, v9, v3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, v2

    .line 318
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_3

    .line 325
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v3

    sub-int v3, v0, v3

    aget v7, v9, v3

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    .line 323
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
