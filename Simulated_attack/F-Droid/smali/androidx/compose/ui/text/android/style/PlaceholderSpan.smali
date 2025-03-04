.class public final Landroidx/compose/ui/text/android/style/PlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "PlaceholderSpan.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;


# instance fields
.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final height:F

.field private heightPx:I

.field private final heightUnit:I

.field private isLaidOut:Z

.field private final pxPerSp:F

.field private final verticalAlign:I

.field private final width:F

.field private widthPx:I

.field private final widthUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->Companion:Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 0
    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fontMetrics"

    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeightPx()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    return v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlaceholderSpan is not laid out yet."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    const-string p2, "paint"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const-string p4, "paint.fontMetricsInt"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 125
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le p1, p4, :cond_6

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    const-string p4, "Unsupported unit."

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    mul-float/2addr p1, p3

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    mul-float/2addr p1, v0

    .line 133
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->ceilToInt(F)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    if-eqz p1, :cond_3

    if-ne p1, p2, :cond_2

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    mul-float/2addr p1, p3

    .line 137
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->ceilToInt(F)I

    move-result p1

    goto :goto_1

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    iget p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    mul-float/2addr p1, p2

    .line 136
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->ceilToInt(F)I

    move-result p1

    :goto_1
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    if-eqz p5, :cond_5

    .line 142
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    packed-switch p1, :pswitch_data_0

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown verticalAlign."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :pswitch_0
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 157
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_2

    .line 152
    :pswitch_1
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p3

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_4

    .line 153
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_2

    .line 148
    :pswitch_2
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le p1, p2, :cond_4

    .line 149
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_2

    .line 161
    :pswitch_3
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_4

    .line 162
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p1

    neg-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 167
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 168
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 171
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result p1

    return p1

    .line 125
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid fontMetrics: line height can not be negative."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getVerticalAlign()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    return v0
.end method

.method public final getWidthPx()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    return v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlaceholderSpan is not laid out yet."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
