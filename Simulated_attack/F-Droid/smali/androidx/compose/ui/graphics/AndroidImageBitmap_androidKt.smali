.class public abstract Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;
.super Ljava/lang/Object;
.source "AndroidImageBitmap.android.kt"


# direct methods
.method public static final ActualImageBitmap-x__-hDU(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 3

    const-string v0, "colorSpace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Api26Bitmap;->createBitmap-x__-hDU$ui_graphics_release(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 46
    invoke-static {p2, p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(\n          \u2026   bitmapConfig\n        )"

    .line 47
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 54
    :goto_0
    new-instance p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static final asAndroidBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v0, p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getBitmap$ui_graphics_release()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unable to obtain android.graphics.Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final asImageBitmap(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static final toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;
    .locals 4

    .line 145
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getRgb565-_sVssgQ()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 151
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getF16-_sVssgQ()I

    move-result v3

    invoke-static {p0, v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-lt v1, v2, :cond_4

    .line 153
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getGpu-_sVssgQ()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 154
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt$$ExternalSyntheticApiModelOutline1;->m()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method public static final toImageConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    .line 167
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_1

    .line 169
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getRgb565-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 170
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    .line 171
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result p0

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 172
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-ne p0, v2, :cond_3

    .line 173
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getF16-_sVssgQ()I

    move-result p0

    goto :goto_0

    :cond_3
    if-lt v0, v1, :cond_4

    .line 174
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt$$ExternalSyntheticApiModelOutline1;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-ne p0, v0, :cond_4

    .line 175
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getGpu-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 177
    :cond_4
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result p0

    :goto_0
    return p0
.end method
