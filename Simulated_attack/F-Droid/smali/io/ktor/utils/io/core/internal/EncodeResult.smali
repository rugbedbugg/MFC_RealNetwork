.class public abstract Lio/ktor/utils/io/core/internal/EncodeResult;
.super Ljava/lang/Object;
.source "EncodeResult.kt"


# direct methods
.method public static final component1-Mh2AYeg(I)S
    .locals 0

    .line 17
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/EncodeResult;->getCharacters-Mh2AYeg(I)S

    move-result p0

    return p0
.end method

.method public static final component2-Mh2AYeg(I)S
    .locals 0

    .line 18
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/EncodeResult;->getBytes-Mh2AYeg(I)S

    move-result p0

    return p0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static constructor-impl(SS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x10

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    .line 12
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static final getBytes-Mh2AYeg(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    .line 15
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    return p0
.end method

.method public static final getCharacters-Mh2AYeg(I)S
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    .line 14
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    return p0
.end method
