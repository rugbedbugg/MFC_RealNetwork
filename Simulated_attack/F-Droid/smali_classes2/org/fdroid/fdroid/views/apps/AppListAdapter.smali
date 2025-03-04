.class Lorg/fdroid/fdroid/views/apps/AppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private hasHiddenAppsCallback:Ljava/lang/Runnable;

.field private hideInstallButton:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->hideInstallButton:Z

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->items:Ljava/util/List;

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;I)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->items:Ljava/util/List;

    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/database/AppListItem;

    .line 52
    new-instance v0, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v0, p2}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/AppListItem;)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, v0, p2, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->bindModel(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    iget-boolean p2, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->hideInstallButton:Z

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->hideInstallButton()V

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 56
    invoke-virtual {v0, p2}, Lorg/fdroid/fdroid/data/App;->isDisabledByAntiFeatures(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 57
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->hasHiddenAppsCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;
    .locals 4

    .line 45
    new-instance p2, Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->app_list_item:I

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-object p2
.end method

.method setHasHiddenAppsCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->hasHiddenAppsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method setHideInstallButton(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->hideInstallButton:Z

    return-void
.end method

.method setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->items:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->items:Ljava/util/List;

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
