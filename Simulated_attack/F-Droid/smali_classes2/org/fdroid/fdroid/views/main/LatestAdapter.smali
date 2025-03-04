.class public Lorg/fdroid/fdroid/views/main/LatestAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LatestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final appListDecorator:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutPolicy:Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;

.field private final spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    new-instance v0, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->layoutPolicy:Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;

    .line 26
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->appListDecorator:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 27
    new-instance p1, Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;-><init>(Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup-IA;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->apps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->layoutPolicy:Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;

    .line 61
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->appListDecorator:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 33
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/fdroid/fdroid/views/categories/AppCardController;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/main/LatestAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/categories/AppCardController;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/categories/AppCardController;I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->apps:Ljava/util/List;

    .line 66
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/database/AppOverviewItem;

    .line 67
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/categories/AppCardController;->bindApp(Lorg/fdroid/database/AppOverviewItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/main/LatestAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/categories/AppCardController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/categories/AppCardController;
    .locals 4

    sget v0, Lorg/fdroid/fdroid/R$id;->latest_large_tile:I

    if-ne p2, v0, :cond_0

    sget p2, Lorg/fdroid/fdroid/R$layout;->app_card_large:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$id;->latest_small_tile:I

    if-ne p2, v0, :cond_1

    sget p2, Lorg/fdroid/fdroid/R$layout;->app_card_horizontal:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/fdroid/fdroid/R$id;->latest_regular_list:I

    if-ne p2, v0, :cond_2

    sget p2, Lorg/fdroid/fdroid/R$layout;->app_card_list_item:I

    .line 56
    :goto_0
    new-instance v0, Lorg/fdroid/fdroid/views/categories/AppCardController;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fdroid/fdroid/views/categories/AppCardController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-object v0

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown view type when rendering \"What\'s New\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->appListDecorator:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 38
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 39
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->apps:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter;->apps:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
