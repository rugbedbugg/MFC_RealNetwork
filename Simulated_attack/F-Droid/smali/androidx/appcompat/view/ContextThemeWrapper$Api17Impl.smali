.class abstract Landroidx/appcompat/view/ContextThemeWrapper$Api17Impl;
.super Ljava/lang/Object;
.source "ContextThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/ContextThemeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method static createConfigurationContext(Landroidx/appcompat/view/ContextThemeWrapper;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
