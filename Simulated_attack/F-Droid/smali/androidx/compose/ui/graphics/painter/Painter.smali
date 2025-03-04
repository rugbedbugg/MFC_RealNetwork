.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;
.source "Painter.kt"


# instance fields
.field private alpha:F

.field private colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private final drawLambda:Lkotlin/jvm/functions/Function1;

.field private layerPaint:Landroidx/compose/ui/graphics/Paint;

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private useLayer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    .line 133
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 148
    new-instance v0, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->drawLambda:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final configureAlpha(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->applyAlpha(F)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    goto :goto_1

    .line 125
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->obtainPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    :cond_3
    :goto_1
    iput p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    :goto_2
    return-void
.end method

.method private final configureColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 83
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 87
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    goto :goto_1

    .line 90
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->obtainPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    :cond_3
    return-void
.end method

.method private final configureLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, p1, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->applyLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Z

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_0
    return-void
.end method

.method private final obtainPaint()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method protected applyLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 1

    .line 0
    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 3

    const-string v0, "$this$draw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->configureAlpha(F)V

    .line 191
    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->configureColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 192
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p5

    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->configureLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 198
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p5

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    sub-float/2addr p5, v0

    .line 199
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    sub-float/2addr v0, v1

    .line 66
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2, p5, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    cmpl-float p4, p4, v2

    if-lez p4, :cond_1

    .line 202
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p4

    cmpl-float p4, p4, v2

    if-lez p4, :cond_1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p4

    cmpl-float p4, p4, v2

    if-lez p4, :cond_1

    iget-boolean p4, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    if-eqz p4, :cond_0

    .line 204
    sget-object p4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p4

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    invoke-static {p4, p2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p2

    invoke-static {v1, v2, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    .line 245
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p3

    .line 207
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->obtainPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object p4

    .line 112
    :try_start_0
    invoke-interface {p3, p2, p4}, Landroidx/compose/ui/graphics/Canvas;->saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 208
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    throw p1

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 68
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float p2, p5

    neg-float p3, v0

    const/high16 p4, -0x80000000

    invoke-interface {p1, p4, p4, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    return-void
.end method

.method public abstract getIntrinsicSize-NH-jbRc()J
.end method

.method protected abstract onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
.end method
