.class final Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

.field private static final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private static final totalItemsCount:I

.field private static final viewportSize:J

.field private static final visibleItemsInfo:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    .line 429
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    .line 433
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportSize:J

    .line 434
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalItemsCount()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->totalItemsCount:I

    return v0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    return-object v0
.end method
