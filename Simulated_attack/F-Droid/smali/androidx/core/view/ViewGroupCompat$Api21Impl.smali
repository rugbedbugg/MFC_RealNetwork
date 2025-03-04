.class abstract Landroidx/core/view/ViewGroupCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 0

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0
.end method

.method static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method
