.class public abstract synthetic Landroidx/compose/animation/core/Animation$-CC;
.super Ljava/lang/Object;
.source "Animation.kt"


# direct methods
.method public static $default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z
    .locals 2

    .line 85
    invoke-interface {p0}, Landroidx/compose/animation/core/Animation;->getDurationNanos()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
