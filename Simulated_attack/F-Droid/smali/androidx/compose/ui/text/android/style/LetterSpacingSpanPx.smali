.class public final Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;
.super Landroid/text/style/MetricAffectingSpan;
.source "LetterSpacingSpanPx.kt"


# instance fields
.field private final letterSpacing:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;->letterSpacing:F

    return-void
.end method

.method private final updatePaint(Landroid/text/TextPaint;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;->letterSpacing:F

    div-float/2addr v1, v0

    .line 20
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;->updatePaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;->updatePaint(Landroid/text/TextPaint;)V

    return-void
.end method
