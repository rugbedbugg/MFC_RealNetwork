.class Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->items:Ljava/util/List;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->items:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/fdroid/fdroid/views/categories/AppCardController;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/categories/AppCardController;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/categories/AppCardController;I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->items:Ljava/util/List;

    .line 33
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/database/AppOverviewItem;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/categories/AppCardController;->bindApp(Lorg/fdroid/database/AppOverviewItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/categories/AppCardController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/categories/AppCardController;
    .locals 4

    .line 27
    new-instance p2, Lorg/fdroid/fdroid/views/categories/AppCardController;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->app_card_normal:I

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fdroid/fdroid/views/categories/AppCardController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-object p2
.end method

.method setAppCursor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->items:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->items:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
