.class public Lorg/fdroid/fdroid/views/ScreenShotsActivity$DepthPageTransformer;
.super Ljava/lang/Object;
.source "ScreenShotsActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/ScreenShotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthPageTransformer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_0

    .line 162
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    cmpg-float v2, p2, v3

    if-gtz v2, :cond_1

    sub-float/2addr v3, p2

    .line 167
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float p2, p2

    mul-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
