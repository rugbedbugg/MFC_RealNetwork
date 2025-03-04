.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
.super Ljava/lang/Object;
.source "LazyListMeasuredItemProvider.kt"


# instance fields
.field private final childConstraints:J

.field private final itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field private final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method private constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V
    .locals 7

    const-string v0, "itemProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measureScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    const/4 v1, 0x0

    const p4, 0x7fffffff

    if-eqz p3, :cond_0

    .line 37
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p5

    move v2, p5

    goto :goto_0

    :cond_0
    move v2, p4

    :goto_0
    const/4 v3, 0x0

    if-nez p3, :cond_1

    .line 38
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, p4

    :goto_1
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    return-void
.end method

.method public synthetic constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V

    return-void
.end method


# virtual methods
.method public abstract createItem(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.end method

.method public final getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 46
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 47
    invoke-interface {v1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    iget-wide v3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    .line 48
    invoke-interface {v2, p1, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->createItem(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p1

    return-object p1
.end method

.method public final getChildConstraints-msEJaDk()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    return-wide v0
.end method

.method public final getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 56
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    return-object v0
.end method
