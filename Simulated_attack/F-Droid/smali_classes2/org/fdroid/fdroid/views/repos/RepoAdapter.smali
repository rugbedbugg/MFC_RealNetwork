.class public Lorg/fdroid/fdroid/views/repos/RepoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RepoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;,
        Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end field

.field private final repoItemListener:Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetrepoItemListener(Lorg/fdroid/fdroid/views/repos/RepoAdapter;)Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->repoItemListener:Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;

    return-object p0
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->repoItemListener:Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;

    return-void
.end method


# virtual methods
.method getItem(I)Lorg/fdroid/database/Repository;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/database/Repository;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 71
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/database/Repository;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->-$$Nest$mbind(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->repo_item:I

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;-><init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method updateItems(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->isArchiveRepo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateRepoItem(Lorg/fdroid/database/Repository;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->items:Ljava/util/List;

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
