.class public abstract Landroidx/work/WorkManager;
.super Ljava/lang/Object;
.source "WorkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkManager$UpdateResult;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;
    .locals 0

    .line 184
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;
.end method

.method public final enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    .locals 0

    .line 238
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->enqueue(Ljava/util/List;)Landroidx/work/Operation;

    move-result-object p1

    return-object p1
.end method

.method public abstract enqueue(Ljava/util/List;)Landroidx/work/Operation;
.end method

.method public abstract enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;
.end method

.method public enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;
    .locals 0

    .line 371
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 368
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/Operation;

    move-result-object p1

    return-object p1
.end method

.method public abstract enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/Operation;
.end method

.method public abstract getWorkInfosForUniqueWorkFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
.end method
