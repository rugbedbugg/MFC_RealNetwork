.class public final Lorg/fdroid/fdroid/AppUpdateStatusManager;
.super Ljava/lang/Object;
.source "AppUpdateStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;,
        Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;
    }
.end annotation


# static fields
.field public static final BROADCAST_APPSTATUS_ADDED:Ljava/lang/String; = "org.fdroid.fdroid.installer.appstatus.appchange.add"

.field public static final BROADCAST_APPSTATUS_CHANGED:Ljava/lang/String; = "org.fdroid.fdroid.installer.appstatus.appchange.change"

.field public static final BROADCAST_APPSTATUS_LIST_CHANGED:Ljava/lang/String; = "org.fdroid.fdroid.installer.appstatus.listchange"

.field public static final BROADCAST_APPSTATUS_REMOVED:Ljava/lang/String; = "org.fdroid.fdroid.installer.appstatus.appchange.remove"

.field public static final EXTRA_IS_STATUS_UPDATE:Ljava/lang/String; = "isstatusupdate"

.field public static final EXTRA_REASON_FOR_CHANGE:Ljava/lang/String; = "reason"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field private static final LOGTAG:Ljava/lang/String; = "AppUpdateStatusManager"

.field private static final REASON_CLEAR_ALL_INSTALLED:Ljava/lang/String; = "clearallinstalled"

.field private static final REASON_CLEAR_ALL_UPDATES:Ljava/lang/String; = "clearallupdates"

.field public static final REASON_READY_TO_INSTALL:Ljava/lang/String; = "readytoinstall"

.field private static final REASON_REPO_DISABLED:Ljava/lang/String; = "repodisabled"

.field public static final REASON_UPDATES_AVAILABLE:Ljava/lang/String; = "updatesavailable"

.field public static final TAG:Ljava/lang/String; = "AppUpdateStatusManager"

.field private static volatile instance:Lorg/fdroid/fdroid/AppUpdateStatusManager;


# instance fields
.field private final appMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private isBatchUpdating:Z

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final numUpdatableApps:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final repoManager:Lorg/fdroid/index/RepoManager;

.field private final updateChecker:Lorg/fdroid/database/DbUpdateChecker;


# direct methods
.method public static synthetic $r8$lambda$MEfgKaSKi2nxJlgA0HLGM64j554(Lorg/fdroid/fdroid/AppUpdateStatusManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addUpdatableApps(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rv6i385fKOUb0e6ExAzwVpeqAlU(Lorg/fdroid/fdroid/AppUpdateStatusManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addUpdatableAppsNoNotify(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-FdVc90GRWYc3VyEsUU06Xw6Yw(Lorg/fdroid/fdroid/AppUpdateStatusManager;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getUpdatableApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uqlMLLaim6Tc4BgPyki3qYMR7bU(Lorg/fdroid/fdroid/AppUpdateStatusManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->lambda$checkForUpdatesAndInstall$0(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->numUpdatableApps:Landroidx/lifecycle/MutableLiveData;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 223
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 224
    new-instance v0, Lorg/fdroid/database/DbUpdateChecker;

    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fdroid/database/DbUpdateChecker;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateChecker:Lorg/fdroid/database/DbUpdateChecker;

    .line 227
    new-instance p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;)V

    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;)V

    invoke-static {p1, v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private addApkInternal(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V
    .locals 3

    .line 324
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add APK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with state "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUpdateStatusManager"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->createAppEntry(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    .line 327
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->setEntryContentIntentIfEmpty(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 328
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyAdd(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    return-void
.end method

.method private addUpdatableApps(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 398
    invoke-direct {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->startBatchUpdates()V

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/UpdatableApp;

    iget-object v2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 400
    invoke-virtual {v1}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v2

    .line 401
    new-instance v3, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v3, v1}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/UpdatableApp;)V

    new-instance v4, Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v1}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 403
    :cond_1
    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->endBatchUpdates(Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)V

    .line 405
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->setNumUpdatableApps(I)V

    return-void
.end method

.method private addUpdatableAppsNoNotify(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 433
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 437
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/database/UpdatableApp;

    iget-object v4, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 438
    invoke-virtual {v3}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    new-instance v5, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v5, v3}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/UpdatableApp;)V

    new-instance v6, Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v3}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v3

    invoke-direct {v6, v3, v4}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 443
    :cond_1
    invoke-direct {p0, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->setNumUpdatableApps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    .line 447
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    iput-boolean v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    .line 446
    throw p1

    .line 447
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private createAppEntry(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 369
    monitor-enter v0

    .line 370
    :try_start_0
    new-instance v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;-><init>(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 371
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private downloadUpdates(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    .line 413
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/database/UpdatableApp;

    iget-object v4, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 417
    invoke-virtual {v3}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v3}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fdroid/database/AppVersion;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    new-instance v1, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v1, v3}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/UpdatableApp;)V

    .line 422
    new-instance v2, Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v3}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    .line 425
    new-instance v6, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v6, v3}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/UpdatableApp;)V

    new-instance v7, Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v3}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v3

    invoke-direct {v7, v3, v4}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    invoke-static {v5, v6, v7}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    .line 428
    invoke-static {p1, v1, v2}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    :cond_3
    return-void
.end method

.method private endBatchUpdates(Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 581
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    .line 585
    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne p1, v1, :cond_0

    const-string p1, "readytoinstall"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 587
    :cond_0
    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne p1, v1, :cond_1

    const-string p1, "updatesavailable"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 590
    :goto_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Ljava/lang/String;)V

    .line 591
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getAppDetailsIntent(Lorg/fdroid/fdroid/data/Apk;)Landroid/app/PendingIntent;
    .locals 4

    .line 665
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    const-string v3, "appid"

    .line 666
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    .line 668
    invoke-static {v1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v2}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 670
    invoke-virtual {v1, v0}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v1, 0xc000000

    invoke-virtual {v0, p1, v1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getAppErrorIntent(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/PendingIntent;
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    sget v1, Lorg/fdroid/fdroid/R$string;->install_error_notify_title:I

    .line 676
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 678
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    const-class v4, Lorg/fdroid/fdroid/installer/ErrorDialogActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "title"

    .line 679
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    .line 680
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    const/high16 v1, 0xc000000

    .line 682
    invoke-static {v0, v3, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->instance:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->instance:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->instance:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    return-object p0
.end method

.method private getUpdatableApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getBackendReleaseChannels()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateChecker:Lorg/fdroid/database/DbUpdateChecker;

    const/4 v2, 0x1

    .line 392
    invoke-virtual {v1, v0, v2}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApps(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$checkForUpdatesAndInstall$0(Ljava/util/List;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addUpdatableApps(Ljava/util/List;)V

    .line 385
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->downloadUpdates(Ljava/util/List;)V

    return-void
.end method

.method private notifyAdd(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 3

    iget-boolean v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    .line 344
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->copy()Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 345
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.appstatus.listchange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    .line 335
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 336
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private notifyChange(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    .line 353
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->copy()Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "isstatusupdate"

    .line 354
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 355
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private notifyRemove(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 3

    iget-boolean v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    .line 363
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->copy()Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 364
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private setEntryContentIntentIfEmpty(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 4

    .line 634
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-void

    .line 637
    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$1;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    .line 646
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 647
    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    .line 649
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAppDetailsIntent(Lorg/fdroid/fdroid/data/Apk;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 643
    :cond_3
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAppErrorIntent(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 640
    :cond_4
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAppDetailsIntent(Lorg/fdroid/fdroid/data/Apk;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    :goto_0
    return-void
.end method

.method private setNumUpdatableApps(I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->numUpdatableApps:Landroidx/lifecycle/MutableLiveData;

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private startBatchUpdates()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 575
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->isBatchUpdating:Z

    .line 577
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateApkInternal(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V
    .locals 5

    .line 303
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v0

    .line 304
    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v2, " state to "

    const-string v3, "AppUpdateStatusManager"

    if-ne p2, v1, :cond_0

    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-le v1, v4, :cond_0

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not updating APK "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update APK "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 312
    :goto_0
    iput-object p2, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 313
    iput-object p3, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    .line 314
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->setEntryContentIntentIfEmpty(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    .line 315
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    .line 317
    sget-object p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne p2, p1, :cond_2

    .line 319
    invoke-virtual {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 462
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 463
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v1, :cond_1

    .line 465
    invoke-direct {p0, v1, p3, p4}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateApkInternal(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 467
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApkInternal(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const-string p1, "AppUpdateStatusManager"

    .line 469
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Found no entry for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and app was null."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkForUpdates()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 378
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;)V

    new-instance v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;)V

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public checkForUpdatesAndInstall()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 383
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;)V

    new-instance v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;)V

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method clearAllInstalled()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 609
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 610
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object v2, v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v2, v3, :cond_0

    .line 613
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-string v1, "clearallinstalled"

    .line 616
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Ljava/lang/String;)V

    .line 617
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearAllUpdates()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 596
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 597
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 599
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object v2, v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v2, v3, :cond_0

    .line 600
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-string v1, "clearallupdates"

    .line 603
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Ljava/lang/String;)V

    .line 604
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 248
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 249
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAll()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 254
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 255
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApk(Ljava/lang/String;)Lorg/fdroid/fdroid/data/Apk;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 499
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 500
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 504
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 505
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getApp(Ljava/lang/String;)Lorg/fdroid/fdroid/data/App;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 488
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 489
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 493
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 494
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getByPackageName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 267
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 268
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 269
    iget-object v4, v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v4, v4, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 273
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInstallableVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 283
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 284
    iget-object v1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 285
    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->DownloadInterrupted:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v1, v2, :cond_0

    .line 288
    iget-object p1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumUpdatableApps()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->numUpdatableApps:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public refreshApk(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 525
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 526
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz p1, :cond_0

    const-string v1, "AppUpdateStatusManager"

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh APK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v3}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 529
    invoke-direct {p0, p1, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 531
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAllByRepo(J)V
    .locals 4

    .line 232
    invoke-virtual {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 235
    iget-object v2, v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-wide v2, v2, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "repodisabled"

    .line 242
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public removeApk(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 515
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 516
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz p1, :cond_0

    const-string v1, "AppUpdateStatusManager"

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove APK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v3}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyRemove(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 521
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setApkError(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 562
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 563
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-nez v1, :cond_0

    .line 565
    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->createAppEntry(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 567
    :cond_0
    :goto_0
    sget-object p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    iput-object p1, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 568
    iput-object p3, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    .line 569
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAppErrorIntent(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    .line 570
    invoke-direct {p0, v1, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    .line 571
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDownloadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 549
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 550
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v1, :cond_0

    .line 552
    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->DownloadInterrupted:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    iput-object v2, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 553
    iput-object p2, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    const/4 p2, 0x0

    .line 554
    iput-object p2, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    const/4 p2, 0x1

    .line 555
    invoke-direct {p0, v1, p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    .line 556
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 558
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateApk(Ljava/lang/String;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 478
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 479
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz p1, :cond_0

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateApkInternal(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 483
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateApkProgress(Ljava/lang/String;JJ)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 535
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager;->appMapping:Ljava/util/HashMap;

    .line 536
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz p1, :cond_0

    .line 538
    iput-wide p2, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    .line 539
    iput-wide p4, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    const/4 p2, 0x0

    .line 540
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->notifyChange(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 542
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
