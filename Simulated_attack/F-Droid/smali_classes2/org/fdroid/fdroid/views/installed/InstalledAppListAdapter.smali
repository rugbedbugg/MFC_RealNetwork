.class public Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InstalledAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field protected final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/App;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method getItem(I)Lorg/fdroid/fdroid/data/App;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/data/App;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 38
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/data/App;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->bindModel(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;
    .locals 2

    iget-object p2, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 32
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->installed_app_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p2, v0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public setApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 48
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/database/AppListItem;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 50
    new-instance v2, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v2, v0}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/AppListItem;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItem(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->items:Ljava/util/List;

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/App;

    .line 58
    iget-object v2, v1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iput-object p2, v1, Lorg/fdroid/fdroid/data/App;->prefs:Lorg/fdroid/database/AppPrefs;

    .line 60
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
