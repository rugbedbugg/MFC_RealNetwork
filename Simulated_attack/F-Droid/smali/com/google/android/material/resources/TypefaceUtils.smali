.class public abstract Lcom/google/android/material/resources/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# direct methods
.method public static maybeCopyWithFontWeightAdjustment(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 52
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 58
    invoke-static {p1}, Lcom/google/android/material/resources/TypefaceUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Typeface;)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x1

    const/16 v1, 0x3e8

    .line 57
    invoke-static {v0, p0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    invoke-static {p1, p0, v0}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
