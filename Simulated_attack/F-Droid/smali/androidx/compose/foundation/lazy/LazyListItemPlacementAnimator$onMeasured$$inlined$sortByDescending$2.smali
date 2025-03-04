.class public final Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;->this$0:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 121
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;->this$0:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 165
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 121
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;->this$0:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 165
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 121
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
