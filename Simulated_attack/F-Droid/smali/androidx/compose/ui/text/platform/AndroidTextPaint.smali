.class public final Landroidx/compose/ui/text/platform/AndroidTextPaint;
.super Landroid/text/TextPaint;
.source "AndroidTextPaint.android.kt"


# instance fields
.field private final composePaint:Landroidx/compose/ui/graphics/Paint;

.field private drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

.field private shadow:Landroidx/compose/ui/graphics/Shadow;

.field private textDecoration:Landroidx/compose/ui/text/style/TextDecoration;


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput p2, p0, Landroid/text/TextPaint;->density:F

    .line 47
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->asComposePaint(Landroid/graphics/Paint;)Landroidx/compose/ui/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 49
    sget-object p1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 52
    sget-object p1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    return-void
.end method


# virtual methods
.method public final getBlendMode-0nO6VwU()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 131
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->getBlendMode-0nO6VwU()I

    move-result v0

    return v0
.end method

.method public final setBlendMode-s9anfk8(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 131
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    return-void
.end method

.method public final setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V
    .locals 4

    .line 92
    instance-of v0, p1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v0

    .line 646
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 99
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p4, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    invoke-interface {p4}, Landroidx/compose/ui/graphics/Paint;->getAlpha()F

    move-result p4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    .line 96
    :goto_1
    invoke-virtual {p1, p2, p3, v0, p4}, Landroidx/compose/ui/graphics/Brush;->applyTo-Pq9zytI(JLandroidx/compose/ui/graphics/Paint;F)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    const/4 p2, 0x0

    .line 102
    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 2

    .line 646
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 84
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    const/4 p2, 0x0

    .line 85
    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    :cond_0
    return-void
.end method

.method public final setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 108
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 111
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 115
    sget-object v0, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getFill-TiuSbCo()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    goto :goto_0

    .line 117
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 118
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 119
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 120
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getMiter()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeMiterLimit(F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 121
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getJoin-LxFBmk8()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeJoin-Ww9F2mQ(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeCap-BeK7IIE(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->composePaint:Landroidx/compose/ui/graphics/Paint;

    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setShadow(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 67
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 69
    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 73
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getBlurRadius()F

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->correctBlurRadius(F)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 76
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Shadow;->getColor-0d7_KjU()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v2

    .line 72
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 58
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 60
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_1
    return-void
.end method
