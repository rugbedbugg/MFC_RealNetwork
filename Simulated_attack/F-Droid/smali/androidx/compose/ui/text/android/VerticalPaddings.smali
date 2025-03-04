.class public abstract Landroidx/compose/ui/text/android/VerticalPaddings;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# direct methods
.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static final getBottomPadding-impl(J)I
    .locals 2

    .line 0
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getTopPadding-impl(J)I
    .locals 1

    .line 0
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
