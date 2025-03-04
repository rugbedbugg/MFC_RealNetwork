.class abstract Landroidx/compose/ui/node/DistanceAndInLayer;
.super Ljava/lang/Object;
.source "HitTestResult.kt"


# direct methods
.method public static final compareTo-S_HNhKs(JJ)I
    .locals 2

    .line 326
    invoke-static {p0, p1}, Landroidx/compose/ui/node/DistanceAndInLayer;->isInLayer-impl(J)Z

    move-result v0

    .line 327
    invoke-static {p2, p3}, Landroidx/compose/ui/node/DistanceAndInLayer;->isInLayer-impl(J)Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 331
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/DistanceAndInLayer;->getDistance-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/node/DistanceAndInLayer;->getDistance-impl(J)F

    move-result p1

    sub-float/2addr p0, p1

    .line 332
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static final getDistance-impl(J)F
    .locals 1

    .line 34
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final isInLayer-impl(J)Z
    .locals 2

    .line 0
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
