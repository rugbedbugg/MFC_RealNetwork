.class public Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;
.super Landroid/widget/ScrollView;
.source "CaffeinatedScrollView.java"


# instance fields
.field private bottomSlop:I

.field private fullScrollAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkFullScrollAction()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->fullScrollAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->bottomSlop:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->fullScrollAction:Ljava/lang/Runnable;

    .line 71
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->fullScrollAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-direct {p0}, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->checkFullScrollAction()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 63
    invoke-direct {p0}, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->checkFullScrollAction()V

    return-void
.end method

.method setFullScrollAction(Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->fullScrollAction:Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->bottomSlop:I

    return-void
.end method
