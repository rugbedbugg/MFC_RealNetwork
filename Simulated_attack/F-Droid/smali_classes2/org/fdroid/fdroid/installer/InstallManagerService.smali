.class public Lorg/fdroid/fdroid/installer/InstallManagerService;
.super Ljava/lang/Object;
.source "InstallManagerService.java"


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "org.fdroid.fdroid.installer.action.CANCEL"

.field private static final TAG:Ljava/lang/String; = "InstallManagerService"

.field private static instance:Lorg/fdroid/fdroid/installer/InstallManagerService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

.field private final context:Landroid/content/Context;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method public static synthetic $r8$lambda$DsfaYoO7jYNoLAtYkEZb92YPAB0(Lorg/fdroid/fdroid/installer/InstallManagerService;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroidx/core/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService;->lambda$queue$1(Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroidx/core/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GgbUpKoEfVvRs_oMJDyrBflKcrU(Lorg/fdroid/fdroid/installer/InstallManagerService;Lorg/fdroid/fdroid/data/Apk;)Landroidx/core/util/Pair;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->lambda$queue$0(Lorg/fdroid/fdroid/data/Apk;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetappUpdateStatusManager(Lorg/fdroid/fdroid/installer/InstallManagerService;)Lorg/fdroid/fdroid/AppUpdateStatusManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalBroadcastManager(Lorg/fdroid/fdroid/installer/InstallManagerService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 109
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.installer.action.CANCEL"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lorg/fdroid/fdroid/installer/InstallManagerService$1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/installer/InstallManagerService$1;-><init>(Lorg/fdroid/fdroid/installer/InstallManagerService;)V

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static cancel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 383
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/installer/InstallManagerService;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method private getDownloadCancelIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 3

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.action.CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 227
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    .line 228
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/installer/InstallManagerService;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/installer/InstallManagerService;->instance:Lorg/fdroid/fdroid/installer/InstallManagerService;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/fdroid/fdroid/installer/InstallManagerService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/installer/InstallManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/fdroid/fdroid/installer/InstallManagerService;->instance:Lorg/fdroid/fdroid/installer/InstallManagerService;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->instance:Lorg/fdroid/fdroid/installer/InstallManagerService;

    return-object p0
.end method

.method private getMainObb(Ljava/lang/String;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 7

    .line 233
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getMainObbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getMainObbFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p2, Lorg/fdroid/fdroid/data/Apk;->obbMainFileSha256:Ljava/lang/String;

    iget-wide v5, p2, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getObb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V

    return-void
.end method

.method private getObb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V
    .locals 1

    if-eqz p3, :cond_1

    .line 249
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/installer/InstallManagerService$2;

    invoke-direct {v0, p0, p1, p4, p3}, Lorg/fdroid/fdroid/installer/InstallManagerService$2;-><init>(Lorg/fdroid/fdroid/installer/InstallManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 300
    invoke-static {p1, p5, p6, p2, p2}, Lorg/fdroid/fdroid/net/DownloaderService;->queue(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 302
    invoke-static {p2}, Lorg/fdroid/fdroid/net/DownloaderService;->getIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 301
    invoke-virtual {p1, v0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getPatchObb(Ljava/lang/String;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 7

    .line 237
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getPatchObbFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p2, Lorg/fdroid/fdroid/data/Apk;->obbPatchFileSha256:Ljava/lang/String;

    iget-wide v5, p2, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getObb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$queue$0(Lorg/fdroid/fdroid/data/Apk;)Landroidx/core/util/Pair;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 163
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/installer/ApkCache;->getApkCacheState(Landroid/content/Context;Lorg/fdroid/fdroid/data/Apk;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$queue$1(Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroidx/core/util/Pair;)V
    .locals 4

    .line 164
    iget-object v0, p4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    .line 165
    iget-object p4, p4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 166
    sget-object v1, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->MISS_OR_PARTIAL:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    const-string v2, " "

    const-string v3, "InstallManagerService"

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 168
    invoke-static {p4, p1, p2, p3}, Lorg/fdroid/fdroid/net/DownloaderService;->queue(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 169
    :cond_0
    sget-object v1, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->CACHED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    if-ne v0, v1, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip download, we have it, straight to install "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadStarted(Landroid/net/Uri;)V

    .line 173
    invoke-virtual {p0, p1, p4, p2, p3}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadComplete(Landroid/net/Uri;Ljava/io/File;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete and download again "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/data/SanitizedFile;)V

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p4, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 177
    invoke-static {p4, p1, p2, p3}, Lorg/fdroid/fdroid/net/DownloaderService;->queue(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    :goto_0
    return-void
.end method

.method private onCancel(Ljava/lang/String;)V
    .locals 2

    .line 124
    invoke-static {p1}, Lorg/fdroid/fdroid/net/DownloaderService;->cancel(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 125
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getApk(Ljava/lang/String;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "InstallManagerService"

    const-string v1, "also canceling OBB downloads"

    .line 127
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/Apk;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/net/DownloaderService;->cancel(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/Apk;->getMainObbUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/net/DownloaderService;->cancel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 4

    .line 376
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v1

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->PendingInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstallManagerService"

    invoke-static {v2, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/installer/InstallManagerService;

    move-result-object p0

    iget-object v1, p2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private queue(Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 6

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallManagerService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "empty canonicalUrl, nothing to do"

    .line 147
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 151
    invoke-static {v0, p2}, Lorg/fdroid/fdroid/Utils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    iget-wide v4, p4, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v2, p4, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    .line 153
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Install action no longer valid since its installed, ignoring: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 158
    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p4, v0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    .line 160
    invoke-direct {p0, p1, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getMainObb(Ljava/lang/String;Lorg/fdroid/fdroid/data/Apk;)V

    .line 161
    invoke-direct {p0, p1, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getPatchObb(Ljava/lang/String;Lorg/fdroid/fdroid/data/Apk;)V

    .line 163
    new-instance p2, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/installer/InstallManagerService;Lorg/fdroid/fdroid/data/Apk;)V

    new-instance v0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/installer/InstallManagerService;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    invoke-static {p2, v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private registerInstallReceiver(Ljava/lang/String;)V
    .locals 2

    .line 310
    new-instance v0, Lorg/fdroid/fdroid/installer/InstallManagerService$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/installer/InstallManagerService$3;-><init>(Lorg/fdroid/fdroid/installer/InstallManagerService;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 360
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/installer/Installer;->getInstallIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;

    move-result-object p1

    .line 359
    invoke-virtual {v1, v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Landroid/net/Uri;Ljava/io/File;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 5

    .line 198
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download completed of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstallManagerService"

    invoke-static {v2, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 202
    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateApk(Ljava/lang/String;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 205
    invoke-virtual {v1, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getApp(Ljava/lang/String;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 206
    invoke-virtual {v3, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getApk(Ljava/lang/String;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v3

    if-eqz v1, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v1

    move-object p4, v3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 214
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->registerInstallReceiver(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->context:Landroid/content/Context;

    .line 215
    invoke-static {v0, p2, p1, p3, p4}, Lorg/fdroid/fdroid/installer/InstallerService;->install(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_1

    .line 217
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not install "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because no app or apk available."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onDownloadFailed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 222
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->setDownloadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadProgress(Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;JJ)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->get(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 191
    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 192
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getDownloadCancelIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    .line 191
    invoke-virtual {v1, p2, p3, v2, v3}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v4, v0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 194
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v6, p6

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateApkProgress(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onDownloadStarted(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService;->appUpdateStatusManager:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    .line 184
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 185
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getDownloadCancelIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 184
    invoke-virtual {v0, v1, v2, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->updateApk(Ljava/lang/String;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    return-void
.end method
