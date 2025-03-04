.class public abstract Landroidx/compose/runtime/RecomposeScopeImplKt;
.super Ljava/lang/Object;
.source "RecomposeScopeImpl.kt"


# direct methods
.method public static final updateChangedFlags(I)I
    .locals 3

    .line 0
    const v0, 0x12492492

    and-int/2addr v0, p0

    const v1, 0x24924924

    and-int/2addr v1, p0

    const v2, -0x36db6db7

    and-int/2addr p0, v2

    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v2, v0

    or-int/2addr p0, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method
