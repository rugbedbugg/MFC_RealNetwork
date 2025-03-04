.class final Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyLayoutKeyIndexMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $first:I

.field final synthetic $last:I

.field final synthetic $map:Ljava/util/HashMap;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;


# direct methods
.method constructor <init>(IILjava/util/HashMap;Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->$first:I

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->$last:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->$map:Ljava/util/HashMap;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->this$0:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->invoke(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getKey()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->$first:I

    .line 81
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->$last:I

    .line 82
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v1, v2, :cond_2

    :goto_0
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v1}, Landroidx/compose/foundation/lazy/layout/Lazy_androidKt;->getDefaultLazyLayoutKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 84
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->$map:Ljava/util/HashMap;

    .line 86
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->this$0:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 87
    invoke-static {v4}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->access$getKeys$p(Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap$1$1;->this$0:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    invoke-static {v5}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->access$getKeysStartIndex$p(Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;)I

    move-result v5

    sub-int v5, v1, v5

    aput-object v3, v4, v5

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
