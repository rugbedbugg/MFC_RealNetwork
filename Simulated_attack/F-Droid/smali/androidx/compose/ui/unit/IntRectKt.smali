.class public abstract Landroidx/compose/ui/unit/IntRectKt;
.super Ljava/lang/Object;
.source "IntRect.kt"


# direct methods
.method public static final IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;
    .locals 5

    .line 253
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 254
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    .line 255
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    .line 256
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 257
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    add-int/2addr p0, p1

    .line 253
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v0
.end method
