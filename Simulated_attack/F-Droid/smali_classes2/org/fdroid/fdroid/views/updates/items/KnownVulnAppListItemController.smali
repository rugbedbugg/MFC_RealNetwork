.class public Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;
.super Lorg/fdroid/fdroid/views/apps/AppListItemController;
.source "KnownVulnAppListItemController.java"


# instance fields
.field private final installReceiver:Landroid/content/BroadcastReceiver;

.field private final refreshApps:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$mrefreshUpdatesList(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->refreshUpdatesList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterInstallReceiver(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->unregisterInstallReceiver()V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p3}, Lorg/fdroid/fdroid/views/apps/AppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    .line 97
    new-instance p1, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;-><init>(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->installReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->refreshApps:Ljava/lang/Runnable;

    return-void
.end method

.method private refreshUpdatesList()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->refreshApps:Ljava/lang/Runnable;

    .line 94
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldUpgradeInsteadOfUninstall(Lorg/fdroid/fdroid/data/App;)Z
    .locals 4

    .line 58
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    iget-wide v2, p1, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private unregisterInstallReceiver()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 86
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->installReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 4

    .line 44
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->shouldUpgradeInsteadOfUninstall(Lorg/fdroid/fdroid/data/App;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->updates__app_with_known_vulnerability__prompt_upgrade:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    iget-object v3, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_upgrade:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->updates__app_with_known_vulnerability__prompt_uninstall:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    iget-object v3, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_uninstall:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    .line 53
    invoke-virtual {v1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setMainText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showActionButton(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method protected onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 3

    .line 63
    iget-object v0, p1, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 69
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 70
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->shouldUpgradeInsteadOfUninstall(Lorg/fdroid/fdroid/data/App;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fdroid/fdroid/installer/Installer;->getInstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 73
    invoke-static {v0, p1, p2}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iget-object v2, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lorg/fdroid/fdroid/installer/Installer;->getUninstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 76
    invoke-static {p2, p1, v0}, Lorg/fdroid/fdroid/installer/InstallerService;->uninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Tried to update or uninstall app with known vulnerability but it doesn\'t seem to be installed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
