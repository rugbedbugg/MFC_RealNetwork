.class final Landroidx/compose/foundation/ScrollingLayoutNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Scroll.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field private isReversed:Z

.field private isVertical:Z

.field private scrollerState:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;ZZ)V
    .locals 1

    const-string v0, "scrollerState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->scrollerState:Landroidx/compose/foundation/ScrollState;

    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isReversed:Z

    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    return-void
.end method


# virtual methods
.method public final getScrollerState()Landroidx/compose/foundation/ScrollState;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->scrollerState:Landroidx/compose/foundation/ScrollState;

    return-object v0
.end method

.method public final isReversed()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isReversed:Z

    return v0
.end method

.method public final isVertical()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    return v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz p1, :cond_0

    .line 448
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 450
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    .line 437
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p1

    goto :goto_0

    .line 439
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 380
    :goto_0
    invoke-static {p3, p4, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    .line 386
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    move v7, v0

    :goto_1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz v0, :cond_2

    .line 387
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    :cond_2
    move v5, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-wide v2, p3

    .line 385
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 389
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 390
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 391
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    invoke-static {v0, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    .line 392
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    sub-int/2addr p3, v4

    .line 393
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p4

    sub-int/2addr p4, v3

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move p3, p4

    :goto_2
    iget-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 399
    invoke-virtual {p4, p3}, Landroidx/compose/foundation/ScrollState;->setMaxValue$foundation_release(I)V

    iget-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->scrollerState:Landroidx/compose/foundation/ScrollState;

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v3

    .line 400
    :goto_3
    invoke-virtual {p4, v0}, Landroidx/compose/foundation/ScrollState;->setViewportSize$foundation_release(I)V

    const/4 v5, 0x0

    .line 401
    new-instance v6, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;

    invoke-direct {v6, p0, p3, p2}, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;-><init>(Landroidx/compose/foundation/ScrollingLayoutNode;ILandroidx/compose/ui/layout/Placeable;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz p1, :cond_0

    .line 426
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 428
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    .line 415
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p1

    goto :goto_0

    .line 417
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final setReversed(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isReversed:Z

    return-void
.end method

.method public final setScrollerState(Landroidx/compose/foundation/ScrollState;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->scrollerState:Landroidx/compose/foundation/ScrollState;

    return-void
.end method

.method public final setVertical(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    return-void
.end method
