.class public Landroidx/constraintlayout/widget/Guideline;
.super Landroid/view/View;
.source "Guideline.java"


# instance fields
.field private mFilterRedundantCalls:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/Guideline;->mFilterRedundantCalls:Z

    const/16 p1, 0x8

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFilterRedundantCalls(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/Guideline;->mFilterRedundantCalls:Z

    return-void
.end method

.method public setGuidelineBegin(I)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/Guideline;->mFilterRedundantCalls:Z

    if-eqz v1, :cond_0

    .line 108
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v1, p1, :cond_0

    return-void

    .line 111
    :cond_0
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setGuidelineEnd(I)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/Guideline;->mFilterRedundantCalls:Z

    if-eqz v1, :cond_0

    .line 122
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    if-ne v1, p1, :cond_0

    return-void

    .line 125
    :cond_0
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setGuidelinePercent(F)V
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/Guideline;->mFilterRedundantCalls:Z

    if-eqz v1, :cond_0

    .line 135
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 138
    :cond_0
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 139
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 0
    return-void
.end method
