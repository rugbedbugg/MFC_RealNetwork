.class public Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UpdatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SHOW_ALL_UPDATEABLE_APPS:Z = false

.field private static final PREF_SHOW_ALL_UPDATEABLE_APPS:Ljava/lang/String; = "showAllUpdateableApps"


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final appsToShowStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/AppStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final delegatesManager:Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;"
        }
    .end annotation
.end field

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;",
            ">;"
        }
    .end annotation
.end field

.field private final knownVulnApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;

.field private final receiverAppStatusChanges:Landroid/content/BroadcastReceiver;

.field private showAllUpdateableApps:Z

.field private final updateChecker:Lorg/fdroid/database/DbUpdateChecker;

.field private final updateableApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$04R8FVxOjnY5bcxbt25ip-ek9g8(Lorg/fdroid/fdroid/views/updates/items/AppStatus;Lorg/fdroid/fdroid/views/updates/items/AppStatus;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->lambda$populateAppStatuses$1(Lorg/fdroid/fdroid/views/updates/items/AppStatus;Lorg/fdroid/fdroid/views/updates/items/AppStatus;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AOl0xBlAIFQVGmcIKqPjrjil6_E(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->lambda$loadUpdatableApps$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hv7ghoVtdxDgbcV8Ek9xiiqhuNk(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->loadUpdatableApps()V

    return-void
.end method

.method public static synthetic $r8$lambda$t-SBSXeJZ5Nc0tTn6s8JoKUTPes(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->onCanUpdateLoadFinished(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAppStatusAdded(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->onAppStatusAdded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAppStatusRemoved(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->onAppStatusRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monManyAppStatusesChanged(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->onManyAppStatusesChanged(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4

    .line 94
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    invoke-direct {v0}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->delegatesManager:Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->appsToShowStatus:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateableApps:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->knownVulnApps:Ljava/util/List;

    .line 292
    new-instance v1, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->receiverAppStatusChanges:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 96
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "showAllUpdateableApps"

    const/4 v3, 0x0

    .line 98
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->showAllUpdateableApps:Z

    .line 102
    new-instance v1, Lorg/fdroid/fdroid/views/updates/items/AppStatus$Delegate;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/updates/items/AppStatus$Delegate;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->addDelegate(Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;)Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->addDelegate(Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;)Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->addDelegate(Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;)Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp$Delegate;

    new-instance v2, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    invoke-direct {v1, p1, v2}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp$Delegate;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->addDelegate(Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;)Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    .line 107
    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    .line 108
    new-instance v1, Lorg/fdroid/database/DbUpdateChecker;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/fdroid/database/DbUpdateChecker;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateChecker:Lorg/fdroid/database/DbUpdateChecker;

    .line 109
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->loadUpdatableApps()V

    return-void
.end method

.method private synthetic lambda$loadUpdatableApps$0(Ljava/util/List;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateChecker:Lorg/fdroid/database/DbUpdateChecker;

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, p1, v1, v1}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApps(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$populateAppStatuses$1(Lorg/fdroid/fdroid/views/updates/items/AppStatus;Lorg/fdroid/fdroid/views/updates/items/AppStatus;)I
    .locals 0

    .line 180
    iget-object p0, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object p0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object p0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/fdroid/fdroid/views/updates/items/AppStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private loadUpdatableApps()V
    .locals 2

    .line 113
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getBackendReleaseChannels()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 115
    :cond_0
    new-instance v1, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/util/List;)V

    new-instance v0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private onAppStatusAdded()V
    .locals 0

    .line 285
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

    return-void
.end method

.method private onAppStatusRemoved()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->loadUpdatableApps()V

    return-void
.end method

.method private onCanUpdateLoadFinished(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateableApps:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->knownVulnApps:Ljava/util/List;

    .line 146
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/database/UpdatableApp;

    .line 149
    new-instance v1, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v1, v0}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/UpdatableApp;)V

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 150
    invoke-static {v2}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v2

    .line 151
    new-instance v3, Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v0}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    .line 152
    invoke-virtual {v0}, Lorg/fdroid/database/UpdatableApp;->getHasKnownVulnerability()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, v1, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->knownVulnApps:Ljava/util/List;

    .line 154
    new-instance v2, Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v4, v1, v3}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateableApps:Ljava/util/List;

    .line 156
    new-instance v2, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v4, v1, v3}, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

    return-void
.end method

.method private onFoundAppsReadyToInstall()V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

    return-void
.end method

.method private onManyAppStatusesChanged(Ljava/lang/String;)V
    .locals 1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "updatesavailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "readytoinstall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->onFoundAppsReadyToInstall()V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->onUpdateableAppsChanged()V

    :goto_0
    return-void
.end method

.method private onUpdateableAppsChanged()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->loadUpdatableApps()V

    return-void
.end method

.method private populateAppStatuses()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->appsToShowStatus:Ljava/util/List;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 174
    invoke-static {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 175
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->shouldShowStatus(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->appsToShowStatus:Ljava/util/List;

    .line 176
    new-instance v3, Lorg/fdroid/fdroid/views/updates/items/AppStatus;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v3, v4, v1}, Lorg/fdroid/fdroid/views/updates/items/AppStatus;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->appsToShowStatus:Ljava/util/List;

    .line 180
    new-instance v1, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private populateItems()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 187
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->appsToShowStatus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->appsToShowStatus:Ljava/util/List;

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/views/updates/items/AppStatus;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 192
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v2, v2, Lorg/fdroid/fdroid/views/updates/items/AppStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    invoke-virtual {v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateableApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->updateableApps:Ljava/util/List;

    .line 197
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;

    .line 198
    iget-object v4, v3, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v4}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 204
    new-instance v2, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v3, p0, v1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->showAllUpdateableApps:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 207
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->knownVulnApps:Ljava/util/List;

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private shouldShowStatus(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Z
    .locals 1

    .line 137
    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->PendingInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installing:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public canViewAllUpdateableApps()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->showAllUpdateableApps:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->delegatesManager:Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 221
    invoke-virtual {v0, v1, p1}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->delegatesManager:Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->items:Ljava/util/List;

    .line 232
    invoke-virtual {v0, v1, p2, p1}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->onBindViewHolder(Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->delegatesManager:Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;

    .line 227
    invoke-virtual {v0, p1, p2}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegatesManager;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public refreshItems()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->populateAppStatuses()V

    .line 165
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->populateItems()V

    .line 166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method setIsActive()V
    .locals 3

    .line 241
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->loadUpdatableApps()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.listchange"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 249
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->receiverAppStatusChanges:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method stopListeningForStatusUpdates()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 253
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->receiverAppStatusChanges:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public toggleAllUpdateableApps()V
    .locals 3

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->showAllUpdateableApps:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->showAllUpdateableApps:Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showAllUpdateableApps"

    iget-boolean v2, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->showAllUpdateableApps:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

    return-void
.end method
