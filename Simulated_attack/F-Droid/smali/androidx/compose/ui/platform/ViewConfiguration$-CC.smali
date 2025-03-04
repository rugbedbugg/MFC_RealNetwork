.class public abstract synthetic Landroidx/compose/ui/platform/ViewConfiguration$-CC;
.super Ljava/lang/Object;
.source "ViewConfiguration.kt"


# direct methods
.method public static $default$getMinimumTouchTargetSize-MYxV2XQ(Landroidx/compose/ui/platform/ViewConfiguration;)J
    .locals 2

    const/16 p0, 0x30

    int-to-float p0, p0

    .line 58
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 56
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    return-wide v0
.end method
