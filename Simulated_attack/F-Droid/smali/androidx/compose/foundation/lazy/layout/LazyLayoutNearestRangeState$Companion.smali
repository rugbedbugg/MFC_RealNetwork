.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;
.super Ljava/lang/Object;
.source "LazyLayoutNearestRangeState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateNearestItemsRange(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;III)Lkotlin/ranges/IntRange;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;->calculateNearestItemsRange(III)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method private final calculateNearestItemsRange(III)Lkotlin/ranges/IntRange;
    .locals 2

    .line 57
    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    sub-int v0, p1, p3

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 61
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    return-object p1
.end method
