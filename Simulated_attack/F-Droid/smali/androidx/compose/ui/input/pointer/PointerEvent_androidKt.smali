.class public abstract Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;
.super Ljava/lang/Object;
.source "PointerEvent.android.kt"


# direct methods
.method public static final EmptyPointerKeyboardModifiers()I
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final isPrimaryPressed-aHzCx-E(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x21

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
