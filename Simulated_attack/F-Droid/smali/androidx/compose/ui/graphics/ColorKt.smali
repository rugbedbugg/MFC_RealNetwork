.class public abstract Landroidx/compose/ui/graphics/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# direct methods
.method public static final Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 7

    const-string v0, "colorSpace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v1

    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    cmpg-float v0, v1, p0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v1

    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_3

    const/4 v0, 0x2

    .line 409
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v1

    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    cmpg-float v0, v1, p2

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v1, v0, p3

    if-gtz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p3, v1

    if-gtz v2, :cond_3

    .line 415
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->isSrgb()Z

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    add-float/2addr p3, v5

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x18

    mul-float/2addr p0, p4

    add-float/2addr p0, v5

    float-to-int p0, p0

    shl-int/2addr p0, v4

    or-int/2addr p0, p3

    mul-float/2addr p1, p4

    add-float/2addr p1, v5

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p2, p4

    add-float/2addr p2, v5

    float-to-int p1, p2

    or-int/2addr p0, p1

    int-to-long p0, p0

    .line 422
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    shl-long/2addr p0, v3

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0

    .line 425
    :cond_0
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getComponentCount()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    .line 429
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result p4

    const/4 v2, -0x1

    if-eq p4, v2, :cond_1

    .line 434
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result p0

    .line 435
    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result p1

    .line 436
    invoke-static {p2}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result p2

    .line 438
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const v0, 0x447fc000    # 1023.0f

    mul-float/2addr p3, v0

    add-float/2addr p3, v5

    float-to-int p3, p3

    int-to-long v0, p0

    .line 443
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/32 v5, 0xffff

    and-long/2addr v0, v5

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 p0, 0x30

    shl-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    int-to-long p0, p1

    .line 444
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    and-long/2addr p0, v5

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    shl-long/2addr p0, v3

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    int-to-long v0, p2

    .line 446
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    and-long/2addr v0, v5

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    shl-long/2addr v0, v4

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    int-to-long p2, p3

    .line 448
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p2

    const-wide/16 v0, 0x3ff

    and-long/2addr p2, v0

    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p2

    const/4 v0, 0x6

    shl-long/2addr p2, v0

    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    int-to-long p2, p4

    .line 450
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p2

    const-wide/16 v0, 0x3f

    and-long/2addr p2, v0

    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    .line 441
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0

    .line 430
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown color space, please use a color space in ColorSpaces"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color only works with ColorSpaces with 3 components"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "red = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", green = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", blue = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", alpha = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " outside the range for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 406
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final Color(I)J
    .locals 2

    int-to-long v0, p0

    .line 466
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final Color(J)J
    .locals 2

    .line 483
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final compositeOver--OWjLjI(JJ)J
    .locals 9

    .line 561
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    .line 563
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v0

    .line 564
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v3, v0, v2

    add-float/2addr v3, v1

    .line 567
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v4

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-nez v7, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    mul-float/2addr v4, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 568
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v5

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v8

    if-nez v7, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    mul-float/2addr v5, v1

    mul-float/2addr v8, v0

    mul-float/2addr v8, v2

    add-float/2addr v5, v8

    div-float/2addr v5, v3

    .line 569
    :goto_1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p1

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    mul-float/2addr p0, v1

    mul-float/2addr p1, v0

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    div-float v6, p0, v3

    .line 571
    :goto_2
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    invoke-static {v4, v5, v6, v3, p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final lerp-jxsXWHM(JJF)J
    .locals 8

    .line 524
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    .line 525
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    .line 526
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v1

    .line 528
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v3

    .line 529
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v4

    .line 530
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v5

    .line 531
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p0

    .line 533
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result p1

    .line 534
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v6

    .line 535
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v7

    .line 536
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v1

    .line 539
    invoke-static {v3, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p1

    .line 540
    invoke-static {v4, v6, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    .line 541
    invoke-static {v5, v7, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    .line 542
    invoke-static {p0, v1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 538
    invoke-static {v2, v3, p0, p1, v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    .line 545
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final luminance-8_81llA(J)F
    .locals 7

    .line 611
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v1

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb"

    .line 617
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object v0

    .line 618
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v1

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v1

    .line 619
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v3

    float-to-double v3, v3

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v3

    .line 620
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p0

    float-to-double p0, p0

    invoke-interface {v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide p0

    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v1, v5

    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide v3, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr p0, v3

    add-double/2addr v1, p0

    double-to-float p0, v1

    .line 622
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->saturate(F)F

    move-result p0

    return p0

    .line 613
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v0

    .line 613
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 612
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final saturate(F)F
    .locals 2

    .line 0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static final toArgb-8_81llA(J)I
    .locals 1

    .line 639
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
