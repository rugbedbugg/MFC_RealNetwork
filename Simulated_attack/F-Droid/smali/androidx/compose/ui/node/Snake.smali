.class abstract Landroidx/compose/ui/node/Snake;
.super Ljava/lang/Object;
.source "MyersDiff.kt"


# direct methods
.method public static final addDiagonalToStack-impl([ILandroidx/compose/ui/node/IntStack;)V
    .locals 3

    const-string v0, "diagonals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getHasAdditionOrRemoval-impl([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getReverse-impl([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->isAddition-impl([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v2

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    :goto_0
    return-void
.end method

.method public static constructor-impl([I)[I
    .locals 1

    .line 0
    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDiagonalSize-impl([I)I
    .locals 2

    .line 345
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getEndX-impl([I)I
    .locals 1

    const/4 v0, 0x2

    .line 333
    aget p0, p0, v0

    return p0
.end method

.method public static final getEndY-impl([I)I
    .locals 1

    const/4 v0, 0x3

    .line 338
    aget p0, p0, v0

    return p0
.end method

.method private static final getHasAdditionOrRemoval-impl([I)Z
    .locals 2

    .line 348
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result p0

    sub-int/2addr v1, p0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getReverse-impl([I)Z
    .locals 1

    const/4 v0, 0x4

    .line 343
    aget p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getStartX-impl([I)I
    .locals 1

    const/4 v0, 0x0

    .line 323
    aget p0, p0, v0

    return p0
.end method

.method public static final getStartY-impl([I)I
    .locals 1

    const/4 v0, 0x1

    .line 328
    aget p0, p0, v0

    return p0
.end method

.method private static final isAddition-impl([I)Z
    .locals 2

    .line 351
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result p0

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
