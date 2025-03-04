.class public final Lorg/fdroid/fdroid/work/RepoUpdateWorker;
.super Landroidx/work/CoroutineWorker;
.source "RepoUpdateWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/fdroid/fdroid/work/RepoUpdateWorker;",
        "Landroidx/work/CoroutineWorker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "nm",
        "Lorg/fdroid/fdroid/NotificationManager;",
        "repoUpdateManager",
        "Lorg/fdroid/fdroid/RepoUpdateManager;",
        "kotlin.jvm.PlatformType",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getForegroundInfo",
        "Landroidx/work/ForegroundInfo;",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

.field private static final UNIQUE_WORK_NAME_AUTO_UPDATE:Ljava/lang/String; = "autoUpdate"


# instance fields
.field private final nm:Lorg/fdroid/fdroid/NotificationManager;

.field private final repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    const/16 v0, 0x8

    sput v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 119
    new-instance p2, Lorg/fdroid/fdroid/NotificationManager;

    invoke-direct {p2, p1}, Lorg/fdroid/fdroid/NotificationManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->nm:Lorg/fdroid/fdroid/NotificationManager;

    .line 120
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    return-void
.end method

.method public static final scheduleOrCancel(Landroid/content/Context;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->scheduleOrCancel(Landroid/content/Context;)V

    return-void
.end method

.method public static final updateNow(Landroid/content/Context;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->updateNow(Landroid/content/Context;)V

    return-void
.end method

.method public static final updateNow(Landroid/content/Context;J)V
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->updateNow(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;

    iget v1, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;-><init>(Lorg/fdroid/fdroid/work/RepoUpdateWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 122
    iget v2, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    iget-object v4, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v4

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    :try_start_2
    iput-object p0, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->getForegroundInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object v4, v2

    :goto_1
    :try_start_3
    check-cast p1, Landroidx/work/ForegroundInfo;

    iput-object v4, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    invoke-virtual {v2, p1, v0}, Landroidx/work/CoroutineWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v4

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, p0

    .line 126
    :goto_2
    invoke-static {}, Lorg/fdroid/fdroid/work/RepoUpdateWorkerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while running setForeground"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_3
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object p1

    const-string v1, "repoId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_6

    .line 130
    :try_start_4
    iget-object p1, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    invoke-virtual {p1, v1, v2}, Lorg/fdroid/fdroid/RepoUpdateManager;->updateRepo(J)Lorg/fdroid/index/IndexUpdateResult;

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_5

    .line 131
    :cond_6
    iget-object p1, v0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    invoke-virtual {p1}, Lorg/fdroid/fdroid/RepoUpdateManager;->updateRepos()V

    .line 132
    :goto_4
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 134
    :goto_5
    invoke-static {}, Lorg/fdroid/fdroid/work/RepoUpdateWorkerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error updating repos"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_6
    return-object p1
.end method

.method public getForegroundInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->nm:Lorg/fdroid/fdroid/NotificationManager;

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 140
    invoke-static {p1, v0, v0, v1, v0}, Lorg/fdroid/fdroid/NotificationManager;->getRepoUpdateNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 142
    new-instance v0, Landroidx/work/ForegroundInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v2, p1, v1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Landroidx/work/ForegroundInfo;

    invoke-direct {v0, v2, p1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;)V

    :goto_0
    return-object v0
.end method
