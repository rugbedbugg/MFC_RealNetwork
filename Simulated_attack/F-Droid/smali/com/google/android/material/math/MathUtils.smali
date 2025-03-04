.class public abstract Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    .line 30
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
