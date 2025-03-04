.class public abstract Landroidx/compose/ui/unit/TextUnitKt;
.super Ljava/lang/Object;
.source "TextUnit.kt"


# direct methods
.method public static final TextUnit-anM5pPY(FJ)J
    .locals 0

    .line 69
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final checkArithmetic-NB67dxo(JJ)V
    .locals 4

    .line 351
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot perform operation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitType;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitType;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 354
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot perform operation for Unspecified type."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getEm(F)J
    .locals 2

    const-wide v0, 0x200000000L

    .line 276
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getEm(I)J
    .locals 2

    const-wide v0, 0x200000000L

    int-to-float p0, p0

    .line 300
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getSp(D)J
    .locals 2

    const-wide v0, 0x100000000L

    double-to-float p0, p0

    .line 282
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getSp(F)J
    .locals 2

    const-wide v0, 0x100000000L

    .line 270
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getSp(I)J
    .locals 2

    const-wide v0, 0x100000000L

    int-to-float p0, p0

    .line 294
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final isUnspecified--R2X_6o(J)Z
    .locals 2

    .line 257
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final lerp-C3pnCVY(JJF)J
    .locals 2

    .line 385
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->checkArithmetic-NB67dxo(JJ)V

    .line 386
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final pack(JF)J
    .locals 4

    .line 340
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
