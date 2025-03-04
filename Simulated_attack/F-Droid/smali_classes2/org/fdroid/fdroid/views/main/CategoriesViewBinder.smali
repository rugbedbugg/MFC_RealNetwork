.class Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;
.super Ljava/lang/Object;
.source "CategoriesViewBinder.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CategoriesViewBinder"


# instance fields
.field private final categoriesList:Landroidx/recyclerview/widget/RecyclerView;

.field private final categoryAdapter:Lorg/fdroid/fdroid/views/categories/CategoryAdapter;

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final defaultCategories:[Ljava/lang/String;

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final emptyState:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$8tsUQkbdSr8Y-FHvJFPz4BEp1zg(Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->lambda$onChanged$3(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DYFVIuY4lic-jwUOR9QKYAsSyzw(Landroid/util/ArraySet;Landroidx/core/os/LocaleListCompat;Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->lambda$loadCategoryItems$4(Landroid/util/ArraySet;Landroidx/core/os/LocaleListCompat;Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IFgq-1HIUKHGhn7Zw03SUXsTHRY(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->lambda$new$0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJdnDn9Qjpq147Z-aIloTSP0nPw(Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->onItemsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$upzVweRo3nqf05tKVGe6f7tC80c(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->lambda$new$1(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vnBIdcktCGWFfOUTu22JP6b28tc(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->lambda$new$2(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 61
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v1

    invoke-interface {v1}, Lorg/fdroid/database/RepositoryDao;->getLiveCategories()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$array;->defaultCategories:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->defaultCategories:[Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->main_tab_categories:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v1, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;

    invoke-direct {v1, p1, v0}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/database/FDroidDatabase;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->categoryAdapter:Lorg/fdroid/fdroid/views/categories/CategoryAdapter;

    sget v0, Lorg/fdroid/fdroid/R$id;->empty_state:I

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->emptyState:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->category_list:I

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->categoriesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 72
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->swipe_to_refresh:I

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 77
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->applySwipeLayoutColors(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 78
    new-instance v1, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->fab_search:I

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 84
    new-instance v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static synthetic lambda$loadCategoryItems$4(Landroid/util/ArraySet;Landroidx/core/os/LocaleListCompat;Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)I
    .locals 1

    .line 151
    iget-object v0, p3, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v0}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p0, p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/RepoAttribute;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 153
    iget-object p0, p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {p0}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object p0

    .line 154
    :cond_0
    iget-object p2, p3, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {p2, p1}, Lorg/fdroid/database/RepoAttribute;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 155
    iget-object p1, p3, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {p1}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 80
    invoke-static {p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 1

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/views/apps/AppListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$new$2(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Z
    .locals 0

    .line 86
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->hideOnLongPressSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->showHideDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onChanged$3(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->loadCategoryItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadCategoryItems(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/categories/CategoryItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v2, Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 123
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " because it has no apps."

    const-string v6, "CategoriesViewBinder"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/database/Category;

    iget-object v7, v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 124
    invoke-interface {v7}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v7

    invoke-virtual {v4}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/fdroid/database/AppDao;->getNumberOfAppsInCategory(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 126
    invoke-virtual {v4}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v5, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    invoke-direct {v5, v4, v7}, Lorg/fdroid/fdroid/views/categories/CategoryItem;-><init>(Lorg/fdroid/database/Category;I)V

    .line 128
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->defaultCategories:[Ljava/lang/String;

    .line 134
    array-length v4, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_4

    aget-object v11, v3, v7

    .line 135
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 136
    invoke-interface {v8}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v8

    invoke-interface {v8, v11}, Lorg/fdroid/database/AppDao;->getNumberOfAppsInCategory(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_2

    .line 139
    new-instance v14, Lorg/fdroid/database/Category;

    const-wide/16 v9, 0x2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v16

    move-object v8, v14

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lorg/fdroid/database/Category;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 141
    new-instance v8, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    invoke-direct {v8, v0, v15}, Lorg/fdroid/fdroid/views/categories/CategoryItem;-><init>(Lorg/fdroid/database/Category;I)V

    .line 142
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not adding default "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 149
    :cond_4
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 150
    new-instance v3, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;Landroidx/core/os/LocaleListCompat;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private onItemsLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/categories/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->emptyState:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->categoriesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->categoryAdapter:Lorg/fdroid/fdroid/views/categories/CategoryAdapter;

    .line 112
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter;->setCategories(Ljava/util/List;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->emptyState:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->categoriesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 101
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 102
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 103
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;)V

    .line 104
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
