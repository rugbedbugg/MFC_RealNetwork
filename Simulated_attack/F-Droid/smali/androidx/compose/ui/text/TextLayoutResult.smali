.class public final Landroidx/compose/ui/text/TextLayoutResult;
.super Ljava/lang/Object;
.source "TextLayoutResult.kt"


# instance fields
.field private final firstBaseline:F

.field private final lastBaseline:F

.field private final layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

.field private final multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

.field private final placeholderRects:Ljava/util/List;

.field private final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V
    .locals 1

    const-string v0, "layoutInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiParagraph"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iput-object p2, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iput-wide p3, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 328
    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->getFirstBaseline()F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    .line 333
    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->getLastBaseline()F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    .line 361
    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->getPlaceholderRects()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    return-void
.end method

.method public static synthetic getLineEnd$default(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 406
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final copy-O0kMr_c(Landroidx/compose/ui/text/TextLayoutInput;J)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 7

    const-string v0, "layoutInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    new-instance v0, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v3, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 571
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 573
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v3, p1, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 574
    iget-object v3, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 575
    iget-wide v5, p1, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    .line 576
    iget v3, p1, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    .line 577
    iget v3, p1, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/List;

    .line 578
    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    return v2
.end method

.method public final getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 510
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p1

    return-object p1
.end method

.method public final getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 527
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    return-object p1
.end method

.method public final getCursorRect(I)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 547
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    return-object p1
.end method

.method public final getDidOverflowHeight()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 338
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getDidExceedMaxLines()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 339
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

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

.method public final getDidOverflowWidth()Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 344
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getFirstBaseline()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    return v0
.end method

.method public final getHasVisualOverflow()Z
    .locals 1

    .line 349
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getDidOverflowWidth()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getDidOverflowHeight()Z

    move-result v0

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

.method public final getHorizontalPosition(IZ)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 491
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getHorizontalPosition(IZ)F

    move-result p1

    return p1
.end method

.method public final getLastBaseline()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    return v0
.end method

.method public final getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    return-object v0
.end method

.method public final getLineBottom(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 431
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result p1

    return p1
.end method

.method public final getLineCount()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 366
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineCount()I

    move-result v0

    return v0
.end method

.method public final getLineEnd(IZ)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 407
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getLineEnd(IZ)I

    move-result p1

    return p1
.end method

.method public final getLineForOffset(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 458
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    move-result p1

    return p1
.end method

.method public final getLineForVerticalPosition(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 470
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result p1

    return p1
.end method

.method public final getLineLeft(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 439
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineLeft(I)F

    move-result p1

    return p1
.end method

.method public final getLineRight(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 447
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineRight(I)F

    move-result p1

    return p1
.end method

.method public final getLineStart(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 383
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method public final getLineTop(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 423
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result p1

    return p1
.end method

.method public final getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    return-object v0
.end method

.method public final getOffsetForPosition-k-4lQ0M(J)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 519
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    return p1
.end method

.method public final getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 500
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p1

    return-object p1
.end method

.method public final getPathForRange(II)Landroidx/compose/ui/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 556
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getPathForRange(II)Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public final getPlaceholderRects()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/List;

    return-object v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    return-wide v0
.end method

.method public final getWordBoundary--jx7JFs(I)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 539
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 584
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 585
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 586
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    .line 587
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    .line 588
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/List;

    .line 589
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextLayoutResult(layoutInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiParagraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lastBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
