.class abstract Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
.super Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
.source "StateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getCapacity()I

    move-result p1

    new-array p1, p1, [[I

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    :goto_0
    return-void
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 347
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    .line 348
    aput-object p1, v0, p2

    return p2
.end method

.method public growArray(II)V
    .locals 2

    .line 377
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->growArray(II)V

    .line 378
    new-array p2, p2, [[I

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    const/4 v1, 0x0

    .line 379
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    return-void
.end method

.method indexOfStateSet([I)I
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    .line 354
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 356
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method abstract mutate()V
.end method
