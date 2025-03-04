.class public final Landroidx/compose/ui/text/android/LayoutIntrinsics;
.super Ljava/lang/Object;
.source "LayoutIntrinsics.kt"


# instance fields
.field private _boringMetrics:Landroid/text/BoringLayout$Metrics;

.field private _maxIntrinsicWidth:F

.field private _minIntrinsicWidth:F

.field private boringMetricsIsInit:Z

.field private final charSequence:Ljava/lang/CharSequence;

.field private final textDirectionHeuristic:I

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 1

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textDirectionHeuristic:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_maxIntrinsicWidth:F

    iput p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    return-void
.end method


# virtual methods
.method public final getBoringMetrics()Landroid/text/BoringLayout$Metrics;
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetricsIsInit:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textDirectionHeuristic:I

    .line 53
    invoke-static {v0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .line 55
    sget-object v1, Landroidx/compose/ui/text/android/BoringLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/BoringLayoutFactory;

    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/compose/ui/text/android/BoringLayoutFactory;->measure(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_boringMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetricsIsInit:Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_boringMetrics:Landroid/text/BoringLayout$Metrics;

    return-object v0
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 4

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_maxIntrinsicWidth:F

    .line 79
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_maxIntrinsicWidth:F

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getBoringMetrics()Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 90
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2, v3}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->access$shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_maxIntrinsicWidth:F

    :goto_1
    return v0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    .line 70
    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->minIntrinsicWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    :goto_0
    return v0
.end method
