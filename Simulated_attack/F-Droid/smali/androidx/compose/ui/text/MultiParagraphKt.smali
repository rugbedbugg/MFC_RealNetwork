.class public abstract Landroidx/compose/ui/text/MultiParagraphKt;
.super Ljava/lang/Object;
.source "MultiParagraph.kt"


# direct methods
.method public static final findParagraphByIndex(Ljava/util/List;I)I
    .locals 7

    const-string v0, "paragraphInfoList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    .line 857
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 858
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 804
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->getStartIndex()I

    move-result v6

    if-le v6, p1, :cond_0

    move v5, v1

    goto :goto_1

    .line 805
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->getEndIndex()I

    move-result v5

    if-gt v5, p1, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-gez v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int v4, v3

    :cond_4
    return v4
.end method

.method public static final findParagraphByLineIndex(Ljava/util/List;I)I
    .locals 7

    const-string v0, "paragraphInfoList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    .line 857
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 858
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 844
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->getStartLineIndex()I

    move-result v6

    if-le v6, p1, :cond_0

    move v5, v1

    goto :goto_1

    .line 845
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->getEndLineIndex()I

    move-result v5

    if-gt v5, p1, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-gez v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int v4, v3

    :cond_4
    return v4
.end method

.method public static final findParagraphByY(Ljava/util/List;F)I
    .locals 7

    const-string v0, "paragraphInfoList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    .line 857
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 858
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 824
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->getTop()F

    move-result v6

    cmpl-float v6, v6, p1

    if-lez v6, :cond_0

    move v5, v1

    goto :goto_1

    .line 825
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->getBottom()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-gez v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int v4, v3

    :cond_4
    return v4
.end method
