.class abstract Landroidx/core/widget/ListViewCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method static canScrollList(Landroid/widget/ListView;I)Z
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p0

    return p0
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    return-void
.end method
