.class public abstract Landroidx/core/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;,
        Landroidx/core/app/ActivityOptionsCompat$Api21Impl;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 4

    if-eqz p1, :cond_0

    .line 212
    array-length v0, p1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    .line 213
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 214
    aget-object v2, p1, v1

    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    :cond_1
    new-instance p1, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 219
    invoke-static {p0, v0}, Landroidx/core/app/ActivityOptionsCompat$Api21Impl;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object p1
.end method


# virtual methods
.method public abstract toBundle()Landroid/os/Bundle;
.end method
