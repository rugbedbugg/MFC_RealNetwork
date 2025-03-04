.class Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy$ItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LatestLayoutPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;
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

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy$ItemDecorator;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 71
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p4, p0, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy$ItemDecorator;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lorg/fdroid/fdroid/R$dimen;->latest__padding__app_card__horizontal:I

    .line 73
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lorg/fdroid/fdroid/R$dimen;->latest__padding__app_card__vertical:I

    .line 74
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    .line 76
    rem-int/lit8 v1, p2, 0x5

    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_0
    const/4 p2, 0x0

    if-eqz v1, :cond_6

    .line 84
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    const/4 v2, 0x1

    if-nez p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, p2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v0

    :goto_2
    if-eqz p3, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    .line 89
    :goto_4
    invoke-virtual {p1, v2, p2, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 91
    :cond_6
    invoke-virtual {p1, v0, p2, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    return-void
.end method
