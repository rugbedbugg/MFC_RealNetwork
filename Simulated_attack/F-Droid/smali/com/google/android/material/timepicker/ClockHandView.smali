.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "ClockHandView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
    }
.end annotation


# instance fields
.field private animatingOnTouchUp:Z

.field private final animationDuration:I

.field private final animationInterpolator:Landroid/animation/TimeInterpolator;

.field private final centerDotRadius:F

.field private changedDuringTouch:Z

.field private circleRadius:I

.field private currentLevel:I

.field private degRad:D

.field private downX:F

.field private downY:F

.field private isInTapRegion:Z

.field private isMultiLevel:Z

.field private final listeners:Ljava/util/List;

.field private originalDeg:F

.field private final paint:Landroid/graphics/Paint;

.field private final rotationAnimator:Landroid/animation/ValueAnimator;

.field private final scaledTouchSlop:I

.field private final selectorBox:Landroid/graphics/RectF;

.field private final selectorRadius:I

.field private final selectorStrokeWidth:I


# direct methods
.method public static synthetic $r8$lambda$wCFWOEU6-eiQJxdycea1a-JE7mk(Lcom/google/android/material/timepicker/ClockHandView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->lambda$setHandRotation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    .line 85
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 109
    sget-object v2, Lcom/google/android/material/R$styleable;->ClockHandView:[I

    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 110
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    const/16 v2, 0xc8

    .line 117
    invoke-static {p1, p3, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationDuration:I

    sget p3, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 119
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 120
    invoke-static {p1, p3, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationInterpolator:Landroid/animation/TimeInterpolator;

    .line 124
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_materialCircleRadius:I

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    .line 125
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_selectorSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/google/android/material/R$dimen;->material_clock_hand_stroke_width:I

    .line 127
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    sget v3, Lcom/google/android/material/R$dimen;->material_clock_hand_center_dot_radius:I

    .line 128
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    .line 129
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_clockHandColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 130
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x0

    .line 132
    invoke-virtual {p0, p3}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 134
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->scaledTouchSlop:I

    const/4 p1, 0x2

    .line 135
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustLevel(FF)V
    .locals 3

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v0, v0

    int-to-float v2, v2

    .line 346
    invoke-static {v0, v2, p1, p2}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p1

    .line 347
    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    move-result p2

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    int-to-float p2, p2

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 11

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 256
    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    move-result v2

    int-to-float v9, v1

    int-to-float v3, v2

    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 257
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v9

    int-to-float v10, v0

    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 258
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v10

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 261
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    .line 262
    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 266
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 267
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    float-to-double v7, v2

    mul-double/2addr v5, v7

    double-to-int v2, v5

    add-int/2addr v1, v2

    int-to-float v6, v1

    mul-double/2addr v7, v3

    double-to-int v1, v7

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    int-to-float v1, v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v9

    move v5, v10

    .line 274
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    .line 275
    invoke-virtual {p1, v9, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getDegreesFromXY(FF)I
    .locals 4

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    int-to-float p1, v1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 373
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p2, p1, 0x5a

    if-gez p2, :cond_0

    add-int/lit16 p2, p1, 0x1c2

    :cond_0
    return p2
.end method

.method private getLeveledCircleRadius(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    int-to-float p1, p1

    const v0, 0x3f28f5c3    # 0.66f

    mul-float/2addr p1, v0

    .line 400
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    :goto_0
    return p1
.end method

.method private getValuesForAnimation(F)Landroid/util/Pair;
    .locals 4

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result v0

    sub-float v1, v0, p1

    .line 188
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    cmpl-float v1, v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-lez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    add-float/2addr p1, v3

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    add-float/2addr v0, v3

    .line 198
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private handleTouchInput(FFZZZ)Z
    .locals 2

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->getDegreesFromXY(FF)I

    move-result p1

    .line 355
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result p2

    int-to-float p1, p1

    cmpl-float p2, p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    if-eqz p5, :cond_4

    iget-boolean p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animatingOnTouchUp:Z

    if-eqz p2, :cond_4

    move v0, v1

    .line 361
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    return v1
.end method

.method private synthetic lambda$setHandRotation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(FZ)V

    return-void
.end method

.method private setHandRotationInternal(FZ)V
    .locals 7

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    .line 208
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 211
    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 212
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    int-to-float v0, v0

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 213
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    int-to-float v5, v3

    sub-float v5, v0, v5

    int-to-float v6, v3

    add-float/2addr v1, v6

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 214
    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 221
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;->onRotate(FZ)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    .line 232
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentSelectorBox()Landroid/graphics/RectF;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getHandRotation()F
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    return v0
.end method

.method public getSelectorRadius()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->drawSelector(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move v4, v1

    move v5, v4

    move v6, v5

    goto :goto_2

    :cond_0
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->downX:F

    sub-float v4, v2, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->downY:F

    sub-float v5, v3, v5

    float-to-int v5, v5

    mul-int/2addr v4, v4

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->scaledTouchSlop:I

    if-le v4, v5, :cond_1

    move v4, p1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    iget-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    if-ne v0, p1, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    if-eqz v5, :cond_3

    .line 328
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/timepicker/ClockHandView;->adjustLevel(FF)V

    :cond_3
    move v6, v0

    move v5, v1

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->downX:F

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->downY:F

    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    iput-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    move v5, p1

    move v4, v1

    move v6, v4

    :goto_2
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    move-object v1, p0

    .line 335
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/timepicker/ClockHandView;->handleTouchInput(FFZZZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    return p1
.end method

.method public setCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHandRotation(F)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    return-void
.end method

.method public setHandRotation(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(FZ)V

    return-void

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->getValuesForAnimation(F)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 163
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationDuration:I

    int-to-long v0, p2

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationInterpolator:Landroid/animation/TimeInterpolator;

    .line 165
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    .line 166
    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    .line 172
    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$1;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    .line 179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method setMultiLevel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
