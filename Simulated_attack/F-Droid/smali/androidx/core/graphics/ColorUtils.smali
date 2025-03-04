.class public abstract Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 16

    move-object/from16 v0, p3

    .line 459
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v7, v1, v5

    const-wide v8, 0x4003333333333333L    # 2.4

    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v14, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v7, :cond_0

    div-double/2addr v1, v14

    :goto_0
    move/from16 v7, p1

    goto :goto_1

    :cond_0
    add-double/2addr v1, v12

    div-double/2addr v1, v10

    .line 464
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_0

    :goto_1
    int-to-double v8, v7

    div-double/2addr v8, v3

    cmpg-double v7, v8, v5

    if-gez v7, :cond_1

    div-double/2addr v8, v14

    :goto_2
    move/from16 v7, p2

    goto :goto_3

    :cond_1
    add-double/2addr v8, v12

    div-double/2addr v8, v10

    const-wide v10, 0x4003333333333333L    # 2.4

    .line 466
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    goto :goto_2

    :goto_3
    int-to-double v10, v7

    div-double/2addr v10, v3

    cmpg-double v3, v10, v5

    if-gez v3, :cond_2

    div-double/2addr v10, v14

    goto :goto_4

    :cond_2
    add-double/2addr v10, v12

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    .line 468
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    :goto_4
    const-wide v3, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v3, v1

    const-wide v5, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    const-wide v5, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v5, v10

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const/4 v7, 0x0

    .line 470
    aput-wide v3, v0, v7

    const-wide v3, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v3, v1

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v8

    add-double/2addr v3, v12

    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v12, v10

    add-double/2addr v3, v12

    mul-double/2addr v3, v5

    const/4 v7, 0x1

    .line 471
    aput-wide v3, v0, v7

    const-wide v3, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v1, v3

    const-wide v3, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v8, v3

    add-double/2addr v1, v8

    const-wide v3, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v10, v3

    add-double/2addr v1, v10

    mul-double/2addr v1, v5

    const/4 v3, 0x2

    .line 472
    aput-wide v1, v0, v3

    return-void

    .line 460
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static XYZToColor(DDD)I
    .locals 17

    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v13, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v15, 0x3ff0e147ae147ae1L    # 1.055

    if-lez v8, :cond_0

    .line 563
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v15

    sub-double/2addr v0, v11

    goto :goto_0

    :cond_0
    mul-double/2addr v0, v9

    :goto_0
    cmpl-double v8, v4, v2

    if-lez v8, :cond_1

    .line 564
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v15

    sub-double/2addr v4, v11

    goto :goto_1

    :cond_1
    mul-double/2addr v4, v9

    :goto_1
    cmpl-double v2, v6, v2

    if-lez v2, :cond_2

    .line 565
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v15

    sub-double/2addr v2, v11

    goto :goto_2

    :cond_2
    mul-double v2, v6, v9

    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v6

    .line 568
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/16 v8, 0xff

    invoke-static {v0, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v0

    mul-double/2addr v4, v6

    .line 569
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v4

    mul-double/2addr v2, v6

    .line 570
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v1

    .line 567
    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static blendARGB(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 631
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 632
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 633
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 634
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 635
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static calculateLuminance(I)D
    .locals 5

    .line 160
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    const/4 p0, 0x1

    .line 163
    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static colorToXYZ(I[D)V
    .locals 2

    .line 436
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 0

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    .line 146
    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .locals 6

    .line 56
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 58
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 60
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 60
    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 62
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 63
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 62
    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 65
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 64
    invoke-static {p0, v1, p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 67
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 151
    div-int/2addr p0, p4

    return p0
.end method

.method private static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method private static getTempDouble3Array()[D
    .locals 2

    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 742
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 745
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 381
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
