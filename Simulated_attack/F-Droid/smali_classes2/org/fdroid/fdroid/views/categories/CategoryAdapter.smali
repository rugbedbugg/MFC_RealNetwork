.class public Lorg/fdroid/fdroid/views/categories/CategoryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final liveData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/fdroid/database/Category;",
            "Landroidx/lifecycle/LiveData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/database/FDroidDatabase;)V
    .locals 1

    .line 26
    new-instance v0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter$1;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->liveData:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->db:Lorg/fdroid/database/FDroidDatabase;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lorg/fdroid/fdroid/views/categories/CategoryController;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/categories/CategoryController;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/categories/CategoryController;I)V
    .locals 2

    .line 51
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->liveData:Ljava/util/HashMap;

    .line 52
    iget-object v1, p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p2, v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->bindModel(Lorg/fdroid/fdroid/views/categories/CategoryItem;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/categories/CategoryController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/categories/CategoryController;
    .locals 4

    .line 45
    new-instance p2, Lorg/fdroid/fdroid/views/categories/CategoryController;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->category_item:I

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fdroid/fdroid/views/categories/CategoryController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/categories/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->liveData:Ljava/util/HashMap;

    .line 61
    iget-object v2, v0, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->db:Lorg/fdroid/database/FDroidDatabase;

    invoke-interface {v3}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v3

    iget-object v0, v0, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v0}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x14

    invoke-interface {v3, v0, v4}, Lorg/fdroid/database/AppDao;->getAppOverviewItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
