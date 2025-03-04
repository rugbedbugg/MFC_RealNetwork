.class public Lorg/fdroid/fdroid/views/AppDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppDetailsActivity.java"

# interfaces
.implements Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;


# static fields
.field public static final EXTRA_APPID:Ljava/lang/String; = "appid"

.field private static final REQUEST_ENABLE_BLUETOOTH:I = 0x2

.field private static final REQUEST_PERMISSION_DIALOG:I = 0x3

.field private static final REQUEST_UNINSTALL_DIALOG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AppDetailsActivity"

.field private static visiblePackageName:Ljava/lang/String;


# instance fields
.field private adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

.field private volatile app:Lorg/fdroid/fdroid/data/App;

.field private volatile appPrefs:Lorg/fdroid/database/AppPrefs;

.field private final appStatusReceiver:Landroid/content/BroadcastReceiver;

.field private checker:Lorg/fdroid/fdroid/CompatibilityChecker;

.field private currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

.field private fdroidApp:Lorg/fdroid/fdroid/FDroidApp;

.field private final installReceiver:Landroid/content/BroadcastReceiver;

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

.field private packageName:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final uninstallReceiver:Landroid/content/BroadcastReceiver;

.field private volatile versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Be30x-vA7Gr_mrmbuNENTzNdJ4s(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/Apk;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->lambda$installApk$1(Lorg/fdroid/fdroid/data/Apk;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EzD4P8GRhnVg-wH8DMgPLRmj6rE(Lorg/fdroid/fdroid/views/AppDetailsActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->onVersionsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ICkEDIuPzHcrW2IAR0a56RmyFz8(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/views/appdetails/AppData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->onAppDataChanged(Lorg/fdroid/fdroid/views/appdetails/AppData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PEXpGujquhCbYBXSupXvTjSHCA4(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->lambda$onCreate$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S4W0GBCKQidy1orslHkhTAOhi90(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/database/App;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->onAppChanged(Lorg/fdroid/database/App;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WWlTK8jc5Sp84O6AkEK1SsmG9CI(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->lambda$installApk$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjz8HXXKdJ5nGC1qHNCZ-o7RZlA(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->lambda$installApk$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentStatus(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPackageInfo(Lorg/fdroid/fdroid/views/AppDetailsActivity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAppChanged(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/App;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->onAppChanged(Lorg/fdroid/fdroid/data/App;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterInstallReceiver(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->unregisterInstallReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterUninstallReceiver(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->unregisterUninstallReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAppStatus(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateAppStatus(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 497
    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 519
    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 592
    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->uninstallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 726
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "appid"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "AppDetailsActivity"

    const-string v0, "No package name found in the intent!"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initiateInstall(Lorg/fdroid/fdroid/data/Apk;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 393
    invoke-static {p0, v0, p1}, Lorg/fdroid/fdroid/installer/InstallerFactory;->create(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/fdroid/installer/Installer;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lorg/fdroid/fdroid/installer/Installer;->getPermissionScreen()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "AppDetailsActivity"

    const-string v1, "permission screen required"

    .line 397
    invoke-static {p1, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 398
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 402
    invoke-static {p0, v0, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method public static isAppVisible(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->visiblePackageName:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$installApk$1(Lorg/fdroid/fdroid/data/Apk;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->initiateInstall(Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private static synthetic lambda$installApk$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method private static synthetic lambda$installApk$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 379
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic lambda$onCreate$0()Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportStartPostponedEnterTransition()V

    const/4 v0, 0x1

    return v0
.end method

.method private onAppChanged(Lorg/fdroid/database/App;)V
    .locals 2

    if-nez p1, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->no_such_app:I

    const/4 v0, 0x1

    .line 661
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 662
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 665
    new-instance v1, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v1, p1, v0}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/App;Landroid/content/pm/PackageInfo;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 666
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->onAppChanged(Lorg/fdroid/fdroid/data/App;)V

    :goto_0
    return-void
.end method

.method private onAppChanged(Lorg/fdroid/fdroid/data/App;)V
    .locals 4

    .line 673
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->versions:Ljava/util/List;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    .line 676
    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateAppInfo(Lorg/fdroid/fdroid/data/App;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V

    :cond_1
    sget v0, Lorg/fdroid/fdroid/R$id;->feature_graphic:I

    .line 679
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/views/apps/FeatureImage;

    .line 680
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->loadImageAndDisplay(Lorg/fdroid/fdroid/data/App;)V

    .line 682
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    .line 683
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 684
    iget-object v2, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v2, v3, :cond_2

    .line 685
    invoke-virtual {v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onAppDataChanged(Lorg/fdroid/fdroid/views/appdetails/AppData;)V
    .locals 4

    .line 703
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppData;->getAppPrefs()Lorg/fdroid/database/AppPrefs;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    .line 704
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppData;->getRepos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 705
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppData;->getRepos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppData;->getPreferredRepoId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setRepos(Ljava/util/List;J)V

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->versions:Ljava/util/List;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    .line 707
    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateAppInfo(Lorg/fdroid/fdroid/data/App;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V

    :cond_1
    return-void
.end method

.method private onVersionsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppVersion;",
            ">;)V"
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/AppVersion;

    .line 693
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v2

    invoke-virtual {v1}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v2

    .line 694
    new-instance v3, Lorg/fdroid/fdroid/data/Apk;

    invoke-static {v2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/database/Repository;

    invoke-direct {v3, v1, v2}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->checker:Lorg/fdroid/fdroid/CompatibilityChecker;

    .line 695
    invoke-virtual {v3, v1}, Lorg/fdroid/fdroid/data/Apk;->setCompatibility(Lorg/fdroid/fdroid/CompatibilityChecker;)V

    .line 696
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->versions:Ljava/util/List;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    .line 699
    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateAppInfo(Lorg/fdroid/fdroid/data/App;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V

    :cond_1
    return-void
.end method

.method private refreshStatus()V
    .locals 4

    .line 205
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->packageName:Ljava/lang/String;

    .line 206
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 209
    invoke-direct {p0, v0, v3}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateAppStatus(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateAppStatus(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    :goto_0
    iput-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    return-void
.end method

.method private registerAppStatusReceiver()V
    .locals 3

    .line 420
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerUninstallReceiver()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->uninstallReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 411
    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 412
    invoke-static {v2}, Lorg/fdroid/fdroid/installer/Installer;->getUninstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    .line 411
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private startUninstall()V
    .locals 2

    .line 406
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->registerUninstallReceiver()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 407
    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/installer/InstallerService;->uninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private unregisterAppStatusReceiver()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterInstallReceiver()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterUninstallReceiver()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->uninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAppInfo(Lorg/fdroid/fdroid/data/App;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/data/App;",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;",
            "Lorg/fdroid/database/AppPrefs;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 715
    :goto_0
    invoke-virtual {p1, p0, v0, p3}, Lorg/fdroid/fdroid/data/App;->update(Landroid/content/Context;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 716
    invoke-virtual {v0, p1, p2, p3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->updateItems(Lorg/fdroid/fdroid/data/App;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V

    .line 717
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->refreshStatus()V

    .line 718
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method private updateAppStatus(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V
    .locals 4

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 438
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-ne v0, p1, :cond_1

    const-string p1, "AppDetailsActivity"

    const-string p2, "Same app status, not updating."

    .line 441
    invoke-static {p1, p2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-nez p1, :cond_2

    return-void

    .line 450
    :cond_2
    sget-object v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$4;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x5

    if-eq v0, p1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    sget p2, Lorg/fdroid/fdroid/R$string;->installing:I

    .line 486
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setIndeterminateProgress(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    sget p2, Lorg/fdroid/fdroid/R$string;->download_error:I

    .line 474
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 476
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 480
    :cond_5
    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 482
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    sget v0, Lorg/fdroid/fdroid/R$string;->installing:I

    .line 464
    invoke-virtual {p2, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setIndeterminateProgress(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->installReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/installer/Installer;->getInstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    .line 465
    invoke-virtual {p2, v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 468
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    goto :goto_0

    .line 453
    :cond_9
    iget-wide v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 455
    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->notifyAboutDownloadedApk(Lorg/fdroid/fdroid/data/Apk;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    sget p2, Lorg/fdroid/fdroid/R$string;->download_pending:I

    .line 456
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setIndeterminateProgress(I)V

    goto :goto_0

    :cond_a
    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 458
    iget-wide v2, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    invoke-virtual {p2, v2, v3, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setProgress(JJ)V

    :goto_0
    return-void
.end method

.method private updateNotificationsForApp()V
    .locals 5

    .line 175
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->packageName:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 177
    iget-object v3, v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v4, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v3, v4, :cond_0

    .line 178
    invoke-virtual {v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->refreshApk(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public installApk(Lorg/fdroid/fdroid/data/Apk;)V
    .locals 3

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-boolean v0, p1, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/fdroid/fdroid/R$string;->installIncompatible:I

    .line 367
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lorg/fdroid/fdroid/R$string;->yes:I

    .line 368
    new-instance v2, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/Apk;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lorg/fdroid/fdroid/R$string;->no:I

    .line 369
    new-instance v1, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 371
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 375
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 377
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->SignatureMismatch:I

    .line 378
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->ok:I

    new-instance v2, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 384
    :cond_2
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->initiateInstall(Lorg/fdroid/fdroid/data/Apk;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 389
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public installCancel()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->cancel(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAppDownloading()Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->PendingInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchApk()V
    .locals 4

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 763
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AppDetailsActivity"

    const-string v3, "Error launching app: "

    .line 766
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v0, Lorg/fdroid/fdroid/R$string;->app_error_open:I

    .line 767
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->app_not_installed:I

    .line 771
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 338
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_3

    .line 352
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->startUninstall()V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 345
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/data/App;

    const-string p2, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 346
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/data/Apk;

    .line 347
    invoke-static {p0, p1, p2}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->fdroidApp:Lorg/fdroid/fdroid/FDroidApp;

    iget-object p3, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 341
    iget-object p3, p3, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, p3}, Lorg/fdroid/fdroid/FDroidApp;->sendViaBluetooth(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->fdroidApp:Lorg/fdroid/fdroid/FDroidApp;

    .line 116
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->fdroidApp:Lorg/fdroid/fdroid/FDroidApp;

    .line 118
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->app_details2:I

    .line 121
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 122
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 123
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportPostponeEnterTransition()V

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_arrow_back_with_background:I

    .line 128
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lorg/fdroid/fdroid/R$drawable;->ic_more_with_background:I

    invoke-static {v0, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 134
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    sget p1, Lorg/fdroid/fdroid/R$id;->rvDetails:I

    .line 136
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    new-instance p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    invoke-direct {p1, p0, v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 138
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 139
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->packageName:Ljava/lang/String;

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->packageName:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->loadApp(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->adapter:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 149
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 155
    new-instance p1, Lorg/fdroid/fdroid/CompatibilityChecker;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/CompatibilityChecker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->checker:Lorg/fdroid/fdroid/CompatibilityChecker;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 156
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->getApp()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 157
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->getAppData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 158
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->getVersions()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$menu;->details2:I

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->action_share:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 285
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    aput-object v0, p1, v2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    const-string v0, "%s (%s)\nhttps://f-droid.org/packages/%s/"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 289
    invoke-virtual {v5, p0}, Lorg/fdroid/fdroid/data/App;->getShareUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 290
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 291
    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v6, "android.intent.extra.TITLE"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    .line 294
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 295
    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 296
    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    .line 297
    invoke-virtual {v5, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v8

    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 301
    iget-object v8, v8, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-static {p0, v8}, Lorg/fdroid/fdroid/nearby/PublicSourceDirProvider;->getApkShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 302
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Shared from F-Droid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v11, v11, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v10, v10, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {v8, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Lorg/fdroid/fdroid/R$string;->menu_share:I

    .line 306
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v5, v3, v1

    aput-object v0, v3, v2

    .line 307
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget p1, Lorg/fdroid/fdroid/R$string;->menu_share:I

    .line 313
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    new-array v3, v2, [Landroid/content/Intent;

    aput-object v0, v3, v1

    .line 314
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v2

    .line 320
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->action_ignore_all:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 321
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->ignoreAllUpdates()Lkotlinx/coroutines/Job;

    return v2

    .line 323
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->action_ignore_this:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 324
    iget-wide v0, v0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->ignoreVersionCodeUpdate(J)Lkotlinx/coroutines/Job;

    return v2

    .line 326
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->action_release_channel_beta:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 327
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->toggleBetaReleaseChannel()Lkotlinx/coroutines/Job;

    return v2

    .line 329
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_6

    .line 330
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v2

    .line 333
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferredRepoChanged(J)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 782
    invoke-virtual {v0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->setPreferredRepo(J)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget v2, Lorg/fdroid/fdroid/R$id;->action_ignore_all:I

    .line 247
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 248
    invoke-virtual {v0}, Lorg/fdroid/database/AppPrefs;->getIgnoreAllUpdates()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    sget v3, Lorg/fdroid/fdroid/R$id;->action_ignore_this:I

    .line 249
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$id;->action_release_channel_beta:I

    .line 250
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 251
    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 253
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->versions:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->versions:Ljava/util/List;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->appPrefs:Lorg/fdroid/database/AppPrefs;

    .line 255
    invoke-virtual {v1, v2, v4}, Lorg/fdroid/fdroid/data/App;->hasUpdates(Ljava/util/List;Lorg/fdroid/database/AppPrefs;)Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 256
    iget-wide v1, v1, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/database/AppPrefs;->shouldIgnoreUpdate(J)Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 258
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/fdroid/database/AppPrefs;->getReleaseChannels()Ljava/util/List;

    move-result-object v0

    const-string v1, "Beta"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public onRepoChanged(J)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->model:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 777
    invoke-virtual {v0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->selectRepo(J)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 187
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->packageName:Ljava/lang/String;

    sput-object v0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->visiblePackageName:Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateNotificationsForApp()V

    .line 193
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->refreshStatus()V

    .line 194
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->registerAppStatusReceiver()V

    .line 196
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 197
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/Preferences;->isBackgroundDownloadAllowed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 196
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    sput-object v0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->visiblePackageName:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->unregisterAppStatusReceiver()V

    .line 226
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->updateNotificationsForApp()V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 4

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->no_handler_app:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 744
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 745
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 748
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public uninstallApk()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 797
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    const-string v1, "AppDetailsActivity"

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 799
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fdroid/fdroid/data/App;->getMediaApkifInstalled(Landroid/content/Context;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->versions:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 804
    invoke-virtual {v0, p0, v2}, Lorg/fdroid/fdroid/data/App;->getInstalledApk(Landroid/content/Context;Ljava/util/List;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find installed apk for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lorg/fdroid/fdroid/R$string;->uninstall_error_unknown:I

    const/4 v1, 0x0

    .line 808
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->uninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 813
    iput-object v0, v2, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    :cond_2
    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 815
    invoke-static {p0, v2, v0}, Lorg/fdroid/fdroid/installer/InstallerFactory;->create(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/fdroid/installer/Installer;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Lorg/fdroid/fdroid/installer/Installer;->getUninstallScreen()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "screen screen required"

    .line 819
    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 820
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 823
    :cond_3
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->startUninstall()V

    return-void
.end method
