.class final Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# static fields
.field private static final HorizontalMaxHeight:Lkotlin/jvm/functions/Function3;

.field private static final HorizontalMaxWidth:Lkotlin/jvm/functions/Function3;

.field private static final HorizontalMinHeight:Lkotlin/jvm/functions/Function3;

.field private static final HorizontalMinWidth:Lkotlin/jvm/functions/Function3;

.field public static final INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

.field private static final VerticalMaxHeight:Lkotlin/jvm/functions/Function3;

.field private static final VerticalMaxWidth:Lkotlin/jvm/functions/Function3;

.field private static final VerticalMinHeight:Lkotlin/jvm/functions/Function3;

.field private static final VerticalMinWidth:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMinWidth:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinWidth$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinWidth$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMinWidth:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinHeight$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinHeight$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMinHeight:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMinHeight:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMaxWidth$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMaxWidth$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMaxWidth:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMaxWidth$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMaxWidth$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMaxWidth:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMaxHeight$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMaxHeight$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMaxHeight:Lkotlin/jvm/functions/Function3;

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMaxHeight$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMaxHeight$1;

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMaxHeight:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHorizontalMaxHeight()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMaxHeight:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getHorizontalMaxWidth()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMaxWidth:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getHorizontalMinHeight()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMinHeight:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getHorizontalMinWidth()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->HorizontalMinWidth:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getVerticalMaxHeight()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMaxHeight:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getVerticalMaxWidth()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMaxWidth:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getVerticalMinHeight()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMinHeight:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getVerticalMinWidth()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->VerticalMinWidth:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
