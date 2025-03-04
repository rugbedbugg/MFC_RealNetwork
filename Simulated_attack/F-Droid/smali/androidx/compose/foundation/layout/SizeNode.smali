.class final Landroidx/compose/foundation/layout/SizeNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field private enforceIncoming:Z

.field private maxHeight:F

.field private maxWidth:F

.field private minHeight:F

.field private minWidth:F


# direct methods
.method private constructor <init>(FFFFZ)V
    .locals 0

    .line 766
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    iput p2, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    iput p3, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    iput p4, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/SizeNode;->enforceIncoming:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/SizeNode;-><init>(FFFFZ)V

    return-void
.end method

.method private final getTargetConstraints-OenEA2s(Landroidx/compose/ui/unit/Density;)J
    .locals 7

    iget v0, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    .line 769
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    .line 770
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    .line 774
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    .line 775
    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    .line 779
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    .line 780
    invoke-interface {p1, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    invoke-static {v5, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    if-eq v5, v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget v6, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    .line 786
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v1

    invoke-static {v6, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    .line 787
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    invoke-static {p1, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    if-eq p1, v2, :cond_3

    move v3, p1

    .line 793
    :cond_3
    invoke-static {v5, v0, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeNode;->getTargetConstraints-OenEA2s(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    .line 884
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 885
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    goto :goto_0

    .line 887
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeNode;->getTargetConstraints-OenEA2s(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    .line 872
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 873
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    goto :goto_0

    .line 875
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeNode;->getTargetConstraints-OenEA2s(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/SizeNode;->enforceIncoming:Z

    if-eqz v2, :cond_0

    .line 807
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-N9IONVI(JJ)J

    move-result-wide p3

    goto/16 :goto_4

    :cond_0
    iget v2, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    .line 809
    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    goto :goto_0

    .line 812
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    :goto_0
    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    .line 814
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 815
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    goto :goto_1

    .line 817
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    :goto_1
    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    .line 819
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v5

    if-nez v5, :cond_3

    .line 820
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    goto :goto_2

    .line 822
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    :goto_2
    iget v6, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    .line 824
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v3

    invoke-static {v6, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v3

    if-nez v3, :cond_4

    .line 825
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    goto :goto_3

    .line 827
    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p4

    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    .line 829
    :goto_3
    invoke-static {v2, v4, v5, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    .line 837
    :goto_4
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 838
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    new-instance v4, Landroidx/compose/foundation/layout/SizeNode$measure$1;

    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/SizeNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeNode;->getTargetConstraints-OenEA2s(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    .line 860
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 861
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    goto :goto_0

    .line 863
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeNode;->getTargetConstraints-OenEA2s(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    .line 848
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 849
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    goto :goto_0

    .line 851
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final setEnforceIncoming(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/SizeNode;->enforceIncoming:Z

    return-void
.end method

.method public final setMaxHeight-0680j_4(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    return-void
.end method

.method public final setMaxWidth-0680j_4(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    return-void
.end method

.method public final setMinHeight-0680j_4(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    return-void
.end method

.method public final setMinWidth-0680j_4(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    return-void
.end method
