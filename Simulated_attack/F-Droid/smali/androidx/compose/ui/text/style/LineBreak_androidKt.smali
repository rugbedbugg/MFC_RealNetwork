.class public abstract Landroidx/compose/ui/text/style/LineBreak_androidKt;
.super Ljava/lang/Object;
.source "LineBreak.android.kt"


# direct methods
.method public static final synthetic access$packBytes(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->packBytes(III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackByte1(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->unpackByte1(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackByte2(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->unpackByte2(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackByte3(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->unpackByte3(I)I

    move-result p0

    return p0
.end method

.method private static final packBytes(III)I
    .locals 0

    .line 0
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private static final unpackByte1(I)I
    .locals 0

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static final unpackByte2(I)I
    .locals 0

    .line 0
    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static final unpackByte3(I)I
    .locals 0

    .line 0
    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
