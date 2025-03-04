.class public Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;
.super Ljava/lang/Object;
.source "UpdatesViewBinder.java"


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

.field private final adapterChangeListener:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final emptyImage:Landroid/widget/ImageView;

.field private final emptyState:Landroid/widget/TextView;

.field private final emptyUpdatingProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field private final isUpdatingLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final list:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$93iwpLTTVmra16y5h1L1GcDW16w(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->setUpEmptyUpdatingProgress(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kx-zPlVD6A7ue5g7q4haCfhADVg(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->lambda$new$0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyState(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->updateEmptyState()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->adapterChangeListener:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->main_tab_updates:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    new-instance v1, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 38
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->list:I

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->list:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 42
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 45
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lorg/fdroid/fdroid/views/updates/UpdatesItemTouchCallback;

    invoke-direct {v3, v1}, Lorg/fdroid/fdroid/views/updates/UpdatesItemTouchCallback;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 46
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->empty_state:I

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyState:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->image:I

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyImage:Landroid/widget/ImageView;

    sget v0, Lorg/fdroid/fdroid/R$id;->empty_updating_progress:I

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyUpdatingProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    sget v0, Lorg/fdroid/fdroid/R$id;->swipe_to_refresh:I

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 53
    invoke-static {p2}, Lorg/fdroid/fdroid/Utils;->applySwipeLayoutColors(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 54
    new-instance v0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda0;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 59
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdatingLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->isUpdatingLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 56
    invoke-static {p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;)V

    return-void
.end method

.method private setUpEmptyUpdatingProgress(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyState:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyUpdatingProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyState:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyUpdatingProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEmptyState()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 72
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->list:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyImage:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->setUpEmptyUpdatingProgress(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->isUpdatingLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 76
    new-instance v2, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->list:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyState:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyImage:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->isUpdatingLiveData:Landroidx/lifecycle/LiveData;

    .line 81
    new-instance v1, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->emptyUpdatingProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 64
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->setIsActive()V

    return-void
.end method

.method public unbind()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 68
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->stopListeningForStatusUpdates()V

    return-void
.end method
