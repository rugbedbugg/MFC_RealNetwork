.class Lorg/fdroid/fdroid/views/main/LatestViewBinder;
.super Ljava/lang/Object;
.source "LatestViewBinder.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lorg/fdroid/fdroid/Preferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;",
        "Lorg/fdroid/fdroid/Preferences$ChangeListener;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final appList:Landroidx/recyclerview/widget/RecyclerView;

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final emptyState:Landroid/widget/TextView;

.field private final latestAdapter:Lorg/fdroid/fdroid/views/main/LatestAdapter;

.field private progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;


# direct methods
.method public static synthetic $r8$lambda$2WZHEEnP0e9yCNMhWYzt6oRIBeY(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->lambda$new$0(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BlE5oHWz8vmdNSSR0jwIOcOPmqA(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->lambda$new$1(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUfeZmPwdPw3-2P4Iw4k34U_Bjg(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->lambda$new$2(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uaA6APn0TEf0iUG8nYKU_MiBCGY(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->lambda$new$3(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;-><init>(Lorg/fdroid/fdroid/views/main/LatestViewBinder;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 68
    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 69
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lorg/fdroid/database/AppDao;->getAppOverviewItems(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->main_tab_latest:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v0, Lorg/fdroid/fdroid/views/main/LatestAdapter;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->latestAdapter:Lorg/fdroid/fdroid/views/main/LatestAdapter;

    .line 75
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v1, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/main/LatestAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    sget v3, Lorg/fdroid/fdroid/R$id;->empty_state:I

    .line 78
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->emptyState:Landroid/widget/TextView;

    sget v3, Lorg/fdroid/fdroid/R$id;->app_list:I

    .line 80
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 82
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->swipe_to_refresh:I

    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 87
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->applySwipeLayoutColors(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 88
    new-instance v1, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->fab_search:I

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 94
    new-instance v0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private explainEmptyStateToUser()V
    .locals 9

    .line 167
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isIndexNeverUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 168
    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 173
    new-instance v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    sget v2, Lorg/fdroid/fdroid/R$id;->progress_bar:I

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->emptyState:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->latest__empty_state__no_recent_apps:I

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 187
    invoke-static {v1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/RepoManager;->getRepositories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/database/Repository;

    .line 188
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_3

    .line 190
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 191
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 193
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 194
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->latest__empty_state__no_enabled_repos:I

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->latest__empty_state__never_updated:I

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 204
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/fdroid/fdroid/Utils;->formatLastUpdated(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->emptyState:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private filterApps(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 135
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$array;->antifeaturesValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->showAppsWithAntiFeatures()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 137
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$string;->antiothers_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 139
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fdroid/fdroid/Preferences;->showIncompatibleVersions()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 141
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/database/AppOverviewItem;

    .line 143
    invoke-direct {p0, v4, v0, v1, v2}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->isFilteredByAntiFeature(Lorg/fdroid/database/AppOverviewItem;Ljava/util/List;Ljava/util/Set;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v4}, Lorg/fdroid/database/AppOverviewItem;->isCompatible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isFilteredByAntiFeature(Lorg/fdroid/database/AppOverviewItem;Ljava/util/List;Ljava/util/Set;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppOverviewItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lorg/fdroid/database/AppOverviewItem;->getAntiFeatureKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 157
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_1
    if-nez p4, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$new$0(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 90
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/RepoUpdateManager;->updateRepos()V

    return-void
.end method

.method private static synthetic lambda$new$1(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 90
    new-instance p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private static synthetic lambda$new$2(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 1

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/views/apps/AppListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$new$3(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Z
    .locals 0

    .line 96
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->hideOnLongPressSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->showHideDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->filterApps(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->latestAdapter:Lorg/fdroid/fdroid/views/main/LatestAdapter;

    .line 109
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestAdapter;->setApps(Ljava/util/List;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->latestAdapter:Lorg/fdroid/fdroid/views/main/LatestAdapter;

    .line 111
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/LatestAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->emptyState:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->explainEmptyStateToUser()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->emptyState:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onPreferenceChange()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 124
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lorg/fdroid/database/AppDao;->getAppOverviewItems(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 125
    new-instance v2, Lorg/fdroid/fdroid/views/main/LatestViewBinder$2;

    invoke-direct {v2, p0, v0}, Lorg/fdroid/fdroid/views/main/LatestViewBinder$2;-><init>(Lorg/fdroid/fdroid/views/main/LatestViewBinder;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
