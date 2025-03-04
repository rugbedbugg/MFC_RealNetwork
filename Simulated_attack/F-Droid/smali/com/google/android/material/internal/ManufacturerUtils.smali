.class public abstract Lcom/google/android/material/internal/ManufacturerUtils;
.super Ljava/lang/Object;
.source "ManufacturerUtils.java"


# direct methods
.method private static getManufacturer()Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static isMeizuDevice()Z
    .locals 2

    .line 35
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
