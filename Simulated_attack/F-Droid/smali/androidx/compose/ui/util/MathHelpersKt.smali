.class public abstract Landroidx/compose/ui/util/MathHelpersKt;
.super Ljava/lang/Object;
.source "MathHelpers.kt"


# direct methods
.method public static final lerp(FFF)F
    .locals 1

    .line 0
    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static final lerp(IIF)I
    .locals 2

    sub-int/2addr p1, p0

    int-to-double v0, p1

    float-to-double p1, p2

    mul-double/2addr v0, p1

    .line 32
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
