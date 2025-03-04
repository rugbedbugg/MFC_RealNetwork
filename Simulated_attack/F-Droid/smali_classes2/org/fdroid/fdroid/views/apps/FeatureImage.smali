.class public Lorg/fdroid/fdroid/views/apps/FeatureImage;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FeatureImage.java"


# static fields
.field private static final NUM_SQUARES_HIGH:I = 0x2

.field private static final NUM_SQUARES_WIDE:I = 0x4


# instance fields
.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private baseColour:I

.field private currentAlpha:I

.field private trianglePaints:[Landroid/graphics/Paint;

.field private final triangles:[Landroid/graphics/Path;


# direct methods
.method public static synthetic $r8$lambda$96jI34ftoQokCj3Lg7jwUN3LgDo(Lorg/fdroid/fdroid/views/apps/FeatureImage;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->lambda$animateColourChange$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Path;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->triangles:[Landroid/graphics/Path;

    const/16 v0, 0xff

    iput v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->currentAlpha:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 73
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x10

    new-array p2, p2, [Landroid/graphics/Path;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->triangles:[Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->currentAlpha:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 78
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x10

    new-array p2, p2, [Landroid/graphics/Path;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->triangles:[Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->currentAlpha:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 83
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method private animateColourChange()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez v0, :cond_0

    filled-new-array {v2, v1}, [I

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    filled-new-array {v2, v1}, [I

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 153
    new-instance v1, Lorg/fdroid/fdroid/views/apps/FeatureImage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/apps/FeatureImage$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/apps/FeatureImage;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput v2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->currentAlpha:I

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static createTriangle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Path;
    .locals 2

    .line 238
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 239
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 240
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 241
    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget p0, p2, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    sget v1, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 88
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    aget v1, v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    aput v1, v0, p1

    const/4 p1, 0x2

    aget v1, v0, p1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 91
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->baseColour:I

    return-void
.end method

.method private synthetic lambda$animateColourChange$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->currentAlpha:I

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private loadImageAndExtractColour(Lcom/bumptech/glide/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder;",
            ")V"
        }
    .end annotation

    .line 259
    new-instance v0, Lorg/fdroid/fdroid/views/apps/FeatureImage$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/FeatureImage$1;-><init>(Lorg/fdroid/fdroid/views/apps/FeatureImage;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method


# virtual methods
.method public loadImageAndDisplay(Lorg/fdroid/fdroid/data/App;)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->setColour(I)V

    .line 251
    iget-object v0, p1, Lorg/fdroid/fdroid/data/App;->featureGraphic:Lorg/fdroid/index/v2/FileV2;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/data/App;->loadWithGlide(Landroid/content/Context;Lorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->loadImageAndExtractColour(Lcom/bumptech/glide/RequestBuilder;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lorg/fdroid/fdroid/data/App;->repoId:J

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->featureGraphic:Lorg/fdroid/index/v2/FileV2;

    invoke-static {v0, v1, v2, p1, p0}, Lorg/fdroid/fdroid/Utils;->loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 215
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->trianglePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 218
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget v5, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->currentAlpha:I

    .line 219
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->baseColour:I

    .line 222
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->triangles:[Landroid/graphics/Path;

    .line 223
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 224
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->trianglePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    const/4 p3, 0x4

    .line 167
    div-int/2addr p1, p3

    const/4 p4, 0x2

    .line 168
    div-int/2addr p2, p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p4, :cond_1

    mul-int v3, v1, p1

    mul-int v4, v2, p2

    add-int v5, v3, p1

    add-int v6, v4, p2

    .line 185
    rem-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_0

    .line 190
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v7, v8, v9}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->createTriangle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v7

    .line 191
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v8, v4, v5}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->createTriangle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v3

    goto :goto_2

    .line 197
    :cond_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v7, v8, v9}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->createTriangle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v7

    .line 198
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v8, v3, v4}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->createTriangle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->triangles:[Landroid/graphics/Path;

    mul-int/lit8 v5, v2, 0x8

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    .line 201
    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 202
    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setColorAndAnimateChange(I)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->setColour(I)V

    .line 139
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->animateColourChange()V

    return-void
.end method

.method public setColour(I)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->trianglePaints:[Landroid/graphics/Paint;

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 108
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    aget v1, v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    aput v1, v0, p1

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 111
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aget v3, v0, v1

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    aput v3, v0, v1

    .line 114
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 117
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 119
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 123
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    new-instance p1, Ljava/util/Random;

    int-to-long v2, v2

    invoke-direct {p1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->triangles:[Landroid/graphics/Path;

    .line 131
    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->trianglePaints:[Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage;->trianglePaints:[Landroid/graphics/Paint;

    .line 132
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 133
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
