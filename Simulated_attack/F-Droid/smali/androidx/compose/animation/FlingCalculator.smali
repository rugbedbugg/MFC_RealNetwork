.class public final Landroidx/compose/animation/FlingCalculator;
.super Ljava/lang/Object;
.source "FlingCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/FlingCalculator$FlingInfo;
    }
.end annotation


# instance fields
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final friction:F

.field private final magicPhysicalCoefficient:F


# direct methods
.method public constructor <init>(FLandroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "density"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iput-object p2, p0, Landroidx/compose/animation/FlingCalculator;->density:Landroidx/compose/ui/unit/Density;

    .line 57
    invoke-direct {p0, p2}, Landroidx/compose/animation/FlingCalculator;->computeDeceleration(Landroidx/compose/ui/unit/Density;)F

    move-result p1

    iput p1, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    return-void
.end method

.method private final computeDeceleration(Landroidx/compose/ui/unit/Density;)F
    .locals 1

    const v0, 0x3f570a3d    # 0.84f

    .line 64
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/animation/FlingCalculatorKt;->access$computeDeceleration(FF)F

    move-result p1

    return p1
.end method

.method private final getSplineDeceleration(F)D
    .locals 3

    .line 66
    sget-object v0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    iget v1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget v2, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroidx/compose/animation/AndroidFlingSpline;->deceleration(FF)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final flingDistance(F)F
    .locals 8

    .line 84
    invoke-direct {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 85
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget p1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget v4, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr p1, v4

    float-to-double v4, p1

    .line 88
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result p1

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    double-to-float p1, v4

    return p1
.end method

.method public final flingDuration(F)J
    .locals 6

    .line 75
    invoke-direct {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 76
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public final flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 9

    .line 96
    invoke-direct {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 97
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 98
    new-instance v4, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    iget v5, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget v6, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    .line 102
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result v7

    float-to-double v7, v7

    div-double/2addr v7, v2

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    div-double/2addr v0, v2

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 98
    invoke-direct {v4, p1, v5, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo;-><init>(FFJ)V

    return-object v4
.end method
