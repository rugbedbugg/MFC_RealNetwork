.class public final Landroidx/compose/animation/core/CubicBezierEasing;
.super Ljava/lang/Object;
.source "Easing.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    iput p2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iput p3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iput p4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final evaluateCubic(FFF)F
    .locals 2

    .line 0
    const/4 v0, 0x3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    mul-float/2addr p1, v1

    mul-float/2addr p1, v1

    mul-float/2addr p1, p3

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    mul-float/2addr v0, p3

    add-float/2addr p1, v0

    mul-float p2, p3, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 137
    instance-of v0, p1, Landroidx/compose/animation/core/CubicBezierEasing;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    check-cast p1, Landroidx/compose/animation/core/CubicBezierEasing;

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 138
    iget p1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 142
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public transform(F)F
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    :goto_0
    add-float v2, v0, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    iget v4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 123
    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/animation/core/CubicBezierEasing;->evaluateCubic(FFF)F

    move-result v3

    sub-float v4, p1, v3

    .line 124
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 125
    invoke-direct {p0, p1, v0, v2}, Landroidx/compose/animation/core/CubicBezierEasing;->evaluateCubic(FFF)F

    move-result p1

    return p1

    :cond_0
    cmpg-float v3, v3, p1

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return p1
.end method
