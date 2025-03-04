.class public final Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
.super Ljava/lang/Object;
.source "RowColumnMeasurementHelper.kt"


# instance fields
.field private final beforeCrossAxisAlignmentLine:I

.field private final crossAxisSize:I

.field private final endIndex:I

.field private final mainAxisPositions:[I

.field private final mainAxisSize:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(IIIII[I)V
    .locals 1

    const-string v0, "mainAxisPositions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    iput p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    iput p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    iput p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-void
.end method


# virtual methods
.method public final getBeforeCrossAxisAlignmentLine()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    return v0
.end method

.method public final getEndIndex()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    return v0
.end method

.method public final getMainAxisPositions()[I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    return v0
.end method

.method public final getStartIndex()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    return v0
.end method
