.class public abstract Landroidx/compose/ui/node/AlignmentLines;
.super Ljava/lang/Object;
.source "LayoutNodeAlignmentLines.kt"


# instance fields
.field private final alignmentLineMap:Ljava/util/Map;

.field private final alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

.field private dirty:Z

.field private previousUsedDuringParentLayout:Z

.field private queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

.field private usedByModifierLayout:Z

.field private usedByModifierMeasurement:Z

.field private usedDuringParentLayout:Z

.field private usedDuringParentMeasurement:Z


# direct methods
.method private constructor <init>(Landroidx/compose/ui/node/AlignmentLinesOwner;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    .line 106
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/node/AlignmentLinesOwner;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/AlignmentLines;-><init>(Landroidx/compose/ui/node/AlignmentLinesOwner;)V

    return-void
.end method

.method public static final synthetic access$addAlignmentLine(Landroidx/compose/ui/node/AlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/AlignmentLines;->addAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic access$getAlignmentLineMap$p(Landroidx/compose/ui/node/AlignmentLines;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    return-object p0
.end method

.method private final addAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    int-to-float p2, p2

    .line 122
    invoke-static {p2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p0, p3, v0, v1}, Landroidx/compose/ui/node/AlignmentLines;->calculatePositionInParent-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide v0

    .line 126
    invoke-virtual {p3}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 127
    invoke-interface {p2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 128
    invoke-virtual {p0, p3}, Landroidx/compose/ui/node/AlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p0, p3, p1}, Landroidx/compose/ui/node/AlignmentLines;->getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result p2

    int-to-float p2, p2

    .line 130
    invoke-static {p2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    goto :goto_0

    .line 134
    :cond_1
    instance-of p2, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    if-eqz p2, :cond_2

    .line 135
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    goto :goto_1

    .line 137
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    :goto_1
    iget-object p3, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    .line 140
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    .line 142
    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 141
    invoke-static {p1, v0, p2}, Landroidx/compose/ui/layout/AlignmentLineKt;->merge(Landroidx/compose/ui/layout/AlignmentLine;II)I

    move-result p2

    .line 146
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract calculatePositionInParent-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J
.end method

.method protected abstract getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
.end method

.method public final getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    return-object v0
.end method

.method public final getDirty$ui_release()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    return v0
.end method

.method public final getLastCalculation()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I
.end method

.method public final getQueried$ui_release()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getRequired$ui_release()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->recalculateQueryOwner()V

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getUsedDuringParentLayout$ui_release()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    return v0
.end method

.method public final onAlignmentsChanged()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 196
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    if-eqz v1, :cond_1

    .line 198
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestMeasure()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    if-eqz v1, :cond_3

    .line 200
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestLayout()V

    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 203
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestMeasure()V

    :cond_4
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 206
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestLayout()V

    .line 208
    :cond_5
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    return-void
.end method

.method public final recalculate()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 155
    new-instance v1, Landroidx/compose/ui/node/AlignmentLines$recalculate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/AlignmentLines$recalculate$1;-><init>(Landroidx/compose/ui/node/AlignmentLines;)V

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->forEachChildAlignmentLinesOwner(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 176
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/AlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    return-void
.end method

.method public final recalculateQueryOwner()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->getQueried$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 90
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->getQueried$ui_release()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz v0, :cond_6

    .line 96
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->getQueried$ui_release()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 97
    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->recalculateQueryOwner()V

    .line 98
    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    :cond_6
    :goto_1
    return-void
.end method

.method public final reset$ui_release()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    return-void
.end method

.method public final setPreviousUsedDuringParentLayout$ui_release(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    return-void
.end method

.method public final setUsedByModifierLayout$ui_release(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    return-void
.end method

.method public final setUsedByModifierMeasurement$ui_release(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    return-void
.end method

.method public final setUsedDuringParentLayout$ui_release(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    return-void
.end method

.method public final setUsedDuringParentMeasurement$ui_release(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    return-void
.end method
