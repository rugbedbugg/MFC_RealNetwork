.class public final Landroidx/compose/ui/text/platform/style/DrawStyleSpan;
.super Landroid/text/style/CharacterStyle;
.source "DrawStyleSpan.android.kt"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 1

    const-string v0, "drawStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    return-void
.end method

.method private final toAndroidCap-BeK7IIE(I)Landroid/graphics/Paint$Cap;
    .locals 2

    .line 64
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 67
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    return-object p1
.end method

.method private final toAndroidJoin-Ww9F2mQ(I)Landroid/graphics/Paint$Join;
    .locals 2

    .line 55
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getRound-LxFBmk8()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 58
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 40
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 43
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 44
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getMiter()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 45
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getJoin-LxFBmk8()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->toAndroidJoin-Ww9F2mQ(I)Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 46
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->toAndroidCap-BeK7IIE(I)Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 47
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_1
    :goto_0
    return-void
.end method
