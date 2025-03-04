.class public Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InstalledAppsActivity.java"


# instance fields
.field private adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

.field private appList:Landroidx/recyclerview/widget/RecyclerView;

.field private db:Lorg/fdroid/database/FDroidDatabase;

.field private emptyState:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$22UosQz-BcMSa4itHWYjtHCAOiA(Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->lambda$onLoadFinished$0(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EeXSM1XJ2M_4CwU9eJ6WfQCl1qs(Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->onLoadFinished(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V
    .locals 4

    .line 96
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getIgnoreVersionCodeUpdate()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->updateItem(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V

    :cond_0
    return-void
.end method

.method private onLoadFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 82
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->setApps(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 84
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->emptyState:Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->emptyState:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 93
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object v0

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/AppListItem;

    .line 95
    invoke-virtual {v1}, Lorg/fdroid/database/AppListItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fdroid/database/AppPrefsDao;->getAppPrefs(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;Lorg/fdroid/database/AppListItem;)V

    invoke-static {v2, p0, v3}, Lorg/fdroid/fdroid/Utils;->observeOnce(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/core/util/Consumer;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 56
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 58
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->installed_apps_layout:I

    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 66
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    new-instance p1, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    sget p1, Lorg/fdroid/fdroid/R$id;->app_list:I

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->appList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 73
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->empty_state:I

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->emptyState:Landroid/widget/TextView;

    .line 77
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 78
    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fdroid/database/AppDao;->getInstalledAppListItems(Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$menu;->installed_apps:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->menu_share:I

    if-ne v0, v1, :cond_2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName,versionCode,versionName\n"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 113
    invoke-virtual {v2}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->adapter:Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;

    .line 114
    invoke-virtual {v2, v1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->getItem(I)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v3, v2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v1, Landroidx/core/app/ShareCompat$IntentBuilder;

    invoke-direct {v1, p0}, Landroidx/core/app/ShareCompat$IntentBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/fdroid/fdroid/R$string;->send_installed_apps:I

    .line 122
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->send_installed_apps:I

    .line 123
    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    const-string v1, "text/csv"

    .line 125
    invoke-virtual {v0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
