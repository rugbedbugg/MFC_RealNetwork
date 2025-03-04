.class public final Landroidx/compose/animation/FlingCalculator$FlingInfo;
.super Ljava/lang/Object;
.source "FlingCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/FlingCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlingInfo"
.end annotation


# instance fields
.field private final distance:F

.field private final duration:J

.field private final initialVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    iput p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iput-wide p3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    iget v3, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iget v3, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    iget-wide v5, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final position(J)F
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float/2addr p2, v0

    .line 120
    sget-object v0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    invoke-virtual {v0, p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->getDistanceCoefficient()F

    move-result p1

    mul-float/2addr p2, p1

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlingInfo(initialVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final velocity(J)F
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 125
    :goto_0
    sget-object p2, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    invoke-virtual {p2, p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->getVelocityCoefficient()F

    move-result p1

    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p1, p2

    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    mul-float/2addr p1, p2

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    return p1
.end method
