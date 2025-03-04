.class public abstract Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;
.super Ljava/lang/Object;
.source "LayoutUtils.kt"


# direct methods
.method public static final finalConstraints-tfFHcEY(JZIF)J
    .locals 6

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalMaxWidth-tfFHcEY(JZIF)I

    move-result v1

    const/4 v2, 0x0

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final finalMaxLines-xdlQI24(ZII)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 86
    sget-object p0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final finalMaxWidth-tfFHcEY(JZIF)I
    .locals 0

    if-nez p2, :cond_0

    .line 45
    sget-object p2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result p2

    invoke-static {p3, p2}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 47
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p2

    goto :goto_0

    :cond_1
    const p2, 0x7fffffff

    .line 61
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-static {p4}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    invoke-static {p3, p0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    :goto_1
    return p2
.end method
