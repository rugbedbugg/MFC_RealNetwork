.class public Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SelectInstalledAppsActivity.java"


# instance fields
.field private adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

.field private appList:Landroidx/recyclerview/widget/RecyclerView;

.field private checkId:I

.field private db:Lorg/fdroid/database/FDroidDatabase;

.field private emptyState:Landroid/widget/TextView;

.field private prefs:Lorg/fdroid/fdroid/Preferences;


# direct methods
.method public static synthetic $r8$lambda$PlpBdgtgcxOomhEqjcEhcnooGd8(Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->lambda$onLoadFinished$0(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V
    .locals 4

    .line 108
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getIgnoreVersionCodeUpdate()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->updateItem(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 60
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 62
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->installed_apps_layout:I

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    sget v0, Lorg/fdroid/fdroid/R$string;->panic_add_apps_to_uninstall:I

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 71
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    new-instance p1, Lorg/fdroid/fdroid/panic/SelectInstalledAppListAdapter;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/panic/SelectInstalledAppListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    sget p1, Lorg/fdroid/fdroid/R$id;->app_list:I

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 78
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->empty_state:I

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->emptyState:Landroid/widget/TextView;

    .line 82
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 83
    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fdroid/database/AppDao;->getInstalledAppListItems(Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$string;->menu_select_for_wipe:I

    .line 115
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 116
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->checkId:I

    sget v0, Lorg/fdroid/fdroid/R$drawable;->check:I

    .line 118
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onLoadFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 94
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->setApps(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 96
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->emptyState:Landroid/widget/TextView;

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->emptyState:Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 105
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object v0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/AppListItem;

    .line 107
    invoke-virtual {v1}, Lorg/fdroid/database/AppListItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fdroid/database/AppPrefsDao;->getAppPrefs(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;Lorg/fdroid/database/AppListItem;)V

    invoke-static {v2, p0, v3}, Lorg/fdroid/fdroid/Utils;->observeOnce(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/core/util/Consumer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->checkId:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->prefs:Lorg/fdroid/fdroid/Preferences;

    .line 127
    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->getPanicTmpSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setPanicWipeSet(Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 90
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->prefs:Lorg/fdroid/fdroid/Preferences;

    return-void
.end method
