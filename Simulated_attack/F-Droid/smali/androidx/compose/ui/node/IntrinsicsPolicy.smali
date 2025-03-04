.class public final Landroidx/compose/ui/node/IntrinsicsPolicy;
.super Ljava/lang/Object;
.source "IntrinsicsPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/IntrinsicsPolicy$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/compose/ui/node/IntrinsicsPolicy$Companion;


# instance fields
.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private final measurePolicyState$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/node/IntrinsicsPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/IntrinsicsPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/IntrinsicsPolicy;->Companion:Landroidx/compose/ui/node/IntrinsicsPolicy$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const-string v0, "layoutNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 30
    invoke-static {p1, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyState$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final getMeasurePolicyState()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyState$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v0
.end method

.method private final measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 2

    .line 81
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->getMeasurePolicyState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Intrinsic size is queried but there is no measure policy in place."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setMeasurePolicyState(Landroidx/compose/ui/layout/MeasurePolicy;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyState$delegate:Landroidx/compose/runtime/MutableState;

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final maxIntrinsicHeight(I)I
    .locals 3

    .line 48
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final maxIntrinsicWidth(I)I
    .locals 3

    .line 44
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final maxLookaheadIntrinsicHeight(I)I
    .locals 3

    .line 73
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 74
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 75
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final maxLookaheadIntrinsicWidth(I)I
    .locals 3

    .line 66
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 67
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 68
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final minIntrinsicHeight(I)I
    .locals 3

    .line 40
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final minIntrinsicWidth(I)I
    .locals 3

    .line 36
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final minLookaheadIntrinsicHeight(I)I
    .locals 3

    .line 59
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 61
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final minLookaheadIntrinsicWidth(I)I
    .locals 3

    .line 52
    invoke-direct {p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->measurePolicyFromState()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 53
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/IntrinsicsPolicy;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 54
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/MeasurePolicy;->minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public final updateFrom(Landroidx/compose/ui/layout/MeasurePolicy;)V
    .locals 1

    const-string v0, "measurePolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->setMeasurePolicyState(Landroidx/compose/ui/layout/MeasurePolicy;)V

    return-void
.end method
