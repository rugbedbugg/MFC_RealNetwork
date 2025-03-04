.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
.super Ljava/lang/Object;
.source "LineHeightStyleSpan.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private ascent:I

.field private descent:I

.field private final endIndex:I

.field private firstAscent:I

.field private firstAscentDiff:I

.field private lastDescent:I

.field private lastDescentDiff:I

.field private final lineHeight:F

.field private final startIndex:I

.field private final topRatio:F

.field private final trimFirstLineTop:Z

.field private final trimLastLineBottom:Z


# direct methods
.method public constructor <init>(FIIZZF)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    iput-boolean p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    iput-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iput p6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    const/4 p1, 0x0

    cmpg-float p1, p1, p6

    if-gtz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p6, p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float p1, p6, p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "topRatio should be in [0..1] range or -1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final calculateTargetMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 4

    .line 102
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    float-to-double v1, v1

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    sub-int v0, v1, v0

    iget v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-nez v3, :cond_0

    .line 109
    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    :cond_0
    if-gtz v0, :cond_1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v2, v0

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_0
    double-to-float v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    float-to-double v2, v0

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    .line 122
    :goto_1
    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    sub-int v1, v0, v1

    iput v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    iget-boolean v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz v3, :cond_2

    .line 125
    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_2
    iput v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    iget-boolean v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    .line 127
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    const-string p4, "text"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fontMetricsInt"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-ne p2, p1, :cond_1

    move p1, p5

    goto :goto_0

    :cond_1
    move p1, p4

    :goto_0
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    if-ne p3, p2, :cond_2

    move p4, p5

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    iget-boolean p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    const/high16 p3, -0x80000000

    if-ne p2, p3, :cond_4

    .line 94
    invoke-direct {p0, p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->calculateTargetMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_4
    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    .line 97
    :goto_1
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz p4, :cond_6

    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    goto :goto_2

    :cond_6
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    .line 98
    :goto_2
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method

.method public final copy$ui_text_release(IIZ)Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 8

    .line 135
    new-instance v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    iget-boolean v5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iget v6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZF)V

    return-object v7
.end method

.method public final getFirstAscentDiff()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    return v0
.end method

.method public final getLastDescentDiff()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    return v0
.end method

.method public final getTrimLastLineBottom()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    return v0
.end method
