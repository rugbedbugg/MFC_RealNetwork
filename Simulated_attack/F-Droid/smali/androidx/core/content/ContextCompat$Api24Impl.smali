.class abstract Landroidx/core/content/ContextCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1159
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1154
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 0

    .line 1164
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p0

    return p0
.end method
