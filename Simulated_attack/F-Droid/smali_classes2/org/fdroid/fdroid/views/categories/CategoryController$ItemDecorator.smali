.class Lorg/fdroid/fdroid/views/categories/CategoryController$ItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CategoryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/categories/CategoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemDecorator"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$ItemDecorator;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    iget-object p4, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$ItemDecorator;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lorg/fdroid/fdroid/R$dimen;->category_preview__app_list__padding__horizontal:I

    .line 197
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lorg/fdroid/fdroid/R$dimen;->category_preview__app_list__padding__horizontal__first:I

    .line 198
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lorg/fdroid/fdroid/R$dimen;->category_preview__app_list__padding__horizontal__last:I

    .line 200
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    .line 202
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 203
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/16 p3, 0x13

    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    move p4, v0

    :goto_2
    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    if-eqz v2, :cond_4

    move p2, v0

    goto :goto_3

    :cond_4
    move p2, p4

    :goto_3
    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move p4, v0

    .line 214
    :goto_4
    invoke-virtual {p1, p2, v4, p4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
