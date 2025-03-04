.class public abstract Landroidx/compose/animation/core/StartOffset;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# direct methods
.method public static constructor-impl(II)J
    .locals 0

    mul-int/2addr p0, p1

    int-to-long p0, p0

    .line 211
    invoke-static {p0, p1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static synthetic constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 211
    sget-object p1, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {p1}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    .line 0
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result p0

    return p0
.end method
