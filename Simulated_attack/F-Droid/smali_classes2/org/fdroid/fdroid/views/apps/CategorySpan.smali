.class public Lorg/fdroid/fdroid/views/apps/CategorySpan;
.super Landroid/text/style/ReplacementSpan;
.source "CategorySpan.java"


# static fields
.field private static final CORNER_RADIUS:I = 0x10

.field private static final DROP_SHADOW_HEIGHT:F = 1.5f

.field private static final HEIGHT:I = 0x20

.field private static final ICON_BACKGROUND_SIZE:I = 0x20

.field private static final ICON_PADDING:I = 0x8

.field private static final ICON_SIZE:I = 0x10

.field private static final TEXT_BELOW_PADDING:I = 0x2

.field private static final TEXT_LEADING_PADDING:I = 0x8

.field private static final TEXT_TRAILING_PADDING:I = 0xc

.field private static final WHITE_SPACE_PADDING_AT_END:I = 0x4


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/CategorySpan;->context:Landroid/content/Context;

    return-void
.end method

.method private static getCategoryName(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    if-lt v1, p2, :cond_1

    return-object v0

    .line 56
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 80
    invoke-static {p2, p3, p4}, Lorg/fdroid/fdroid/views/apps/CategorySpan;->getCategoryName(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/fdroid/fdroid/views/apps/CategorySpan;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42000000    # 32.0f

    mul-float/2addr p4, p3

    float-to-int p4, p4

    const/high16 p6, 0x41800000    # 16.0f

    mul-float/2addr p6, p3

    float-to-int p6, p6

    const/high16 p7, 0x41000000    # 8.0f

    mul-float/2addr p7, p3

    float-to-int p7, p7

    .line 92
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, p3

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p3

    float-to-int v2, v2

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int v3, p8, p4

    add-int/2addr v3, v2

    int-to-float v3, v3

    .line 98
    invoke-virtual {p1, p5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    new-instance p5, Landroid/graphics/RectF;

    add-int v3, p4, p7

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-direct {p5, v1, v1, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/CategorySpan;->context:Landroid/content/Context;

    .line 103
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/fdroid/fdroid/views/categories/CategoryController;->getBackgroundColour(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr p3, v4

    .line 107
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, 0x66000000

    .line 109
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x1

    .line 110
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v5, p6

    .line 111
    invoke-virtual {p1, p5, v5, v5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 116
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    invoke-virtual {p1, p5, v5, v5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 121
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const p5, -0x272728

    .line 122
    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5, v1, v1, p4, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 125
    invoke-virtual {p1, p5, v5, v5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lorg/fdroid/fdroid/views/apps/CategorySpan;->context:Landroid/content/Context;

    sget p4, Lorg/fdroid/fdroid/R$drawable;->ic_categories:I

    .line 128
    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    add-int/2addr p6, p7

    .line 129
    invoke-virtual {p3, p7, p7, p6, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result p3

    int-to-double p3, p3

    const-wide p5, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr p3, p5

    .line 135
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result p5

    int-to-double p5, p5

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr p5, v4

    add-double/2addr p3, p5

    .line 136
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result p5

    int-to-double p5, p5

    const-wide v0, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr p5, v0

    add-double/2addr p3, p5

    .line 139
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, p9}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const-wide p6, 0x4067400000000000L    # 186.0

    cmpg-double p3, p3, p6

    if-gez p3, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    :cond_1
    const/high16 p3, -0x1000000

    .line 140
    :goto_0
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    int-to-float p3, v3

    sub-int/2addr p8, v2

    int-to-float p4, p8

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .line 61
    invoke-static {p2, p3, p4}, Lorg/fdroid/fdroid/views/apps/CategorySpan;->getCategoryName(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p3, p0, Lorg/fdroid/fdroid/views/apps/CategorySpan;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42000000    # 32.0f

    mul-float/2addr p4, p3

    float-to-int p4, p4

    const/high16 p5, 0x41000000    # 8.0f

    mul-float/2addr p5, p3

    float-to-int p5, p5

    .line 70
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p4, p5

    add-int/2addr p4, p1

    add-int/2addr p4, p2

    add-int/2addr p4, p3

    return p4
.end method
