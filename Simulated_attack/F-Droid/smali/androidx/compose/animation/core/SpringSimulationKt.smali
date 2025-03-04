.class public abstract Landroidx/compose/animation/core/SpringSimulationKt;
.super Ljava/lang/Object;
.source "SpringSimulation.kt"


# static fields
.field private static final UNSET:F = 3.4028235E38f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final Motion(FF)J
    .locals 4

    .line 25
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 26
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 58
    invoke-static {p0, p1}, Landroidx/compose/animation/core/Motion;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getUNSET()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/animation/core/SpringSimulationKt;->UNSET:F

    return v0
.end method
