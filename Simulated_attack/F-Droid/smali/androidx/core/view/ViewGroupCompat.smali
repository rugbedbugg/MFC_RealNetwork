.class public abstract Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewGroupCompat$Api18Impl;,
        Landroidx/core/view/ViewGroupCompat$Api21Impl;
    }
.end annotation


# direct methods
.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 0

    .line 117
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api18Impl;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 160
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
