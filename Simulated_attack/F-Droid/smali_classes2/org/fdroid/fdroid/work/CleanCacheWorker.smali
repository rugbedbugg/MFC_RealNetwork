.class public Lorg/fdroid/fdroid/work/CleanCacheWorker;
.super Landroidx/work/Worker;
.source "CleanCacheWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/work/CleanCacheWorker$Impl21;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CleanCacheWorker"


# direct methods
.method static bridge synthetic -$$Nest$smdeleteFileAndLog(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->deleteFileAndLog(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static clearOldFiles(Ljava/io/File;J)V
    .locals 4

    const-string v0, "CleanCacheWorker"

    if-nez p0, :cond_0

    const-string p0, "No files to be cleared."

    .line 192
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "No more files to be cleared."

    .line 199
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_1
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    .line 203
    invoke-static {v3, p1, p2}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->clearOldFiles(Ljava/io/File;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {p0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->deleteFileAndLog(Ljava/io/File;)V

    goto :goto_1

    .line 207
    :cond_3
    invoke-static {p0, v1, v2}, Lorg/fdroid/fdroid/work/CleanCacheWorker$Impl21;->deleteIfOld(Ljava/io/File;J)V

    :goto_1
    return-void
.end method

.method static deleteExpiredApksFromCache(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/ApkCache;->getApkCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 108
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getKeepCacheTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->clearOldFiles(Ljava/io/File;J)V

    return-void
.end method

.method private static deleteFileAndLog(Ljava/io/File;)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleted file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CleanCacheWorker"

    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static deleteOldIcons(Landroid/content/Context;)V
    .locals 3

    .line 178
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x16d

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->clearOldFiles(Ljava/io/File;J)V

    return-void
.end method

.method static deleteOldInstallerFiles(Landroid/content/Context;)V
    .locals 7

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "CleanCacheWorker"

    if-nez p0, :cond_0

    const-string p0, "The files directory doesn\'t exist."

    .line 121
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "The files directory doesn\'t have any files."

    .line 127
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1
    sget-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->WEB_ROOT_ASSET_FILES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 132
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 133
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->clearOldFiles(Ljava/io/File;J)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static deleteStrayIndexFiles(Landroid/content/Context;)V
    .locals 8

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "CleanCacheWorker"

    if-nez p0, :cond_0

    const-string p0, "The cache directory doesn\'t exist."

    .line 154
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "The cache directory doesn\'t have files."

    .line 160
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "index-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_2

    .line 166
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->clearOldFiles(Ljava/io/File;J)V

    .line 168
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "dl-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->clearOldFiles(Ljava/io/File;J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static force(Landroid/content/Context;)V
    .locals 3

    .line 79
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lorg/fdroid/fdroid/work/CleanCacheWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 80
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    const-string v1, "CleanCacheWorker.force"

    .line 81
    sget-object v2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    const-string p0, "CleanCacheWorker"

    const-string v0, "Enqueued forced run for cleaning the cache."

    .line 82
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 6

    .line 54
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    .line 55
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getKeepCacheTime()J

    move-result-wide v0

    .line 56
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 61
    :goto_0
    new-instance v2, Landroidx/work/Constraints$Builder;

    invoke-direct {v2}, Landroidx/work/Constraints$Builder;-><init>()V

    const/4 v3, 0x1

    .line 62
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;

    .line 65
    new-instance v3, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lorg/fdroid/fdroid/work/CleanCacheWorker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v4, v0, v1, v5}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 67
    invoke-virtual {v2}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 68
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 69
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    const-string v2, "CleanCacheWorker"

    invoke-virtual {p0, v2, v1, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    const-string p0, "Scheduled periodic work for cleaning the cache."

    .line 70
    invoke-static {v2, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 1

    const/16 v0, 0x13

    .line 88
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->deleteExpiredApksFromCache(Landroid/content/Context;)V

    .line 92
    invoke-static {v0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->deleteStrayIndexFiles(Landroid/content/Context;)V

    .line 93
    invoke-static {v0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->deleteOldInstallerFiles(Landroid/content/Context;)V

    .line 94
    invoke-static {v0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->deleteOldIcons(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
