.class public final Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;
.super Ljava/lang/Object;
.source "RepoUpdateWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/work/RepoUpdateWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;",
        "",
        "()V",
        "UNIQUE_WORK_NAME_AUTO_UPDATE",
        "",
        "getAutoUpdateWorkInfo",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/work/WorkInfo;",
        "context",
        "Landroid/content/Context;",
        "scheduleOrCancel",
        "",
        "updateNow",
        "repoId",
        "",
        "app_fullRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;-><init>()V

    return-void
.end method

.method public static synthetic updateNow$default(Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;Landroid/content/Context;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->updateNow(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public final getAutoUpdateWorkInfo(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    const-string v0, "autoUpdate"

    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWorkFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const-string v0, "getWorkInfosForUniqueWorkFlow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion$getAutoUpdateWorkInfo$$inlined$map$1;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion$getAutoUpdateWorkInfo$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object v0
.end method

.method public final scheduleOrCancel(Landroid/content/Context;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    .line 79
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    const-string v1, "getInstance(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getUpdateInterval()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    const-string v2, "autoUpdate"

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getOverData()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getOverWifi()I

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :cond_0
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getOverData()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 84
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getOverWifi()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 86
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 88
    :cond_1
    sget-object v1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    .line 90
    :goto_0
    new-instance v3, Landroidx/work/Constraints$Builder;

    invoke-direct {v3}, Landroidx/work/Constraints$Builder;-><init>()V

    const/4 v4, 0x1

    .line 91
    invoke-virtual {v3, v4}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v4}, Landroidx/work/Constraints$Builder;->setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getUpdateInterval()J

    move-result-wide v5

    .line 97
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xf

    .line 99
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 302
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 101
    invoke-virtual {v0, v1}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 102
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 104
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 103
    invoke-virtual {p1, v2, v1, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    goto :goto_1

    .line 107
    :cond_2
    invoke-static {}, Lorg/fdroid/fdroid/work/RepoUpdateWorkerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not scheduling job due to settings!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1, v2}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    :goto_1
    return-void
.end method

.method public final updateNow(Landroid/content/Context;)V
    .locals 7

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->updateNow$default(Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;Landroid/content/Context;JILjava/lang/Object;)V

    return-void
.end method

.method public final updateNow(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lorg/fdroid/fdroid/work/RepoUpdateWorkerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update repo with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " now!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isOnDemandDownloadAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    sget p2, Lorg/fdroid/fdroid/R$string;->updates_disabled_by_settings:I

    .line 59
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 61
    :cond_0
    invoke-static {p1}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    sget p2, Lorg/fdroid/fdroid/R$string;->warning_no_internet:I

    .line 62
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 100
    :cond_1
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    invoke-direct {v0, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 67
    sget-object v2, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v0, v2}, Landroidx/work/WorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    .line 68
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "repoId"

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    .line 31
    new-instance p2, Landroidx/work/Data$Builder;

    invoke-direct {p2}, Landroidx/work/Data$Builder;-><init>()V

    aget-object p3, v1, p3

    .line 33
    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 35
    invoke-virtual {p2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p2

    const-string p3, "dataBuilder.build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    .line 72
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method
