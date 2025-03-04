.class public abstract Landroidx/compose/ui/input/pointer/ProcessResult;
.super Ljava/lang/Object;
.source "PointerInputEventProcessor.kt"


# direct methods
.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static final getAnyMovementConsumed-impl(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getDispatchedToAPointerInputModifier-impl(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
