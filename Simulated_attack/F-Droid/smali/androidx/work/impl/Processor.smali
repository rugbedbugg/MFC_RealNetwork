.class public Landroidx/work/impl/Processor;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Landroidx/work/impl/foreground/ForegroundProcessor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCancelledIds:Ljava/util/Set;

.field private mConfiguration:Landroidx/work/Configuration;

.field private mEnqueuedWorkMap:Ljava/util/Map;

.field private mForegroundLock:Landroid/os/PowerManager$WakeLock;

.field private mForegroundWorkMap:Ljava/util/Map;

.field private final mLock:Ljava/lang/Object;

.field private final mOuterListeners:Ljava/util/List;

.field private mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field private mWorkRuns:Ljava/util/Map;

.field private mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method public static synthetic $r8$lambda$Bg3FlYHf9CNKM0T38iM9eyGDQ60(Landroidx/work/impl/Processor;Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/Processor;->lambda$runOnExecuted$2(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$G6pyPhUu1fiIb85vbIqsiGmwX7w(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/Processor;->lambda$startWork$0(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wZWAJM8aAC4J9laKkSvSt01pdH8(Landroidx/work/impl/Processor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/Processor;->lambda$startWork$1(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    .line 54
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    iput-object p3, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object p4, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 88
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/Map;

    return-void
.end method

.method private cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/Map;

    .line 418
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 421
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    :cond_1
    iget-object v2, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/Map;

    .line 423
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 425
    invoke-direct {p0}, Landroidx/work/impl/Processor;->stopForegroundService()V

    :cond_2
    return-object v0
.end method

.method private getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/Map;

    .line 358
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 360
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    :cond_0
    return-object v0
.end method

.method private static interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1, p2}, Landroidx/work/impl/WorkerWrapper;->interrupt(I)V

    .line 441
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerWrapper interrupted for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 444
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerWrapper could not be found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$runOnExecuted$2(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 385
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/ExecutionListener;

    .line 387
    invoke-interface {v2, p1, p2}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 389
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$startWork$0(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 117
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/work/impl/model/WorkTagDao;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 118
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$startWork$1(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    .line 174
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 179
    :goto_0
    invoke-direct {p0, p2, p1}, Landroidx/work/impl/Processor;->onExecuted(Landroidx/work/impl/WorkerWrapper;Z)V

    return-void
.end method

.method private onExecuted(Landroidx/work/impl/WorkerWrapper;Z)V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 339
    monitor-enter v0

    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper;->getWorkGenerationalId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-direct {p0, v2}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 345
    invoke-direct {p0, v2}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 347
    :cond_0
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v3, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " executed; reschedule = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {p1, v3, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/ExecutionListener;

    .line 351
    invoke-interface {v2, v1, p2}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_1

    .line 353
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runOnExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 383
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/model/WorkGenerationalId;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopForegroundService()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 395
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/Map;

    .line 396
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 398
    invoke-static {v1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createStopForegroundIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 403
    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 405
    :try_start_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 413
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public addExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 322
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    .line 323
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRunningWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 372
    monitor-enter v0

    .line 373
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 377
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 379
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCancelled(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 291
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    .line 292
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEnqueued(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 311
    monitor-enter v0

    .line 312
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 333
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    .line 334
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startForeground(Ljava/lang/String;Landroidx/work/ForegroundInfo;)V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 195
    monitor-enter v0

    .line 196
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving WorkSpec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to the foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 197
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    .line 200
    invoke-static {v2, v3}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 201
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/Map;

    .line 203
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->getWorkGenerationalId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v1

    .line 204
    invoke-static {p1, v1, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 206
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 208
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startWork(Landroidx/work/impl/StartStopToken;)Z
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)Z

    move-result p1

    return p1
.end method

.method public startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)Z
    .locals 12

    .line 112
    invoke-virtual {p1}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 115
    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v9, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/work/impl/model/WorkSpec;

    const/4 v2, 0x0

    if-nez v8, :cond_0

    .line 122
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find WorkSpec for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v0, v2}, Landroidx/work/impl/Processor;->runOnExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return v2

    :cond_0
    iget-object v10, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 127
    monitor-enter v10

    .line 130
    :try_start_0
    invoke-virtual {p0, v1}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/Map;

    .line 132
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 133
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/StartStopToken;

    .line 134
    invoke-virtual {v1}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result v1

    .line 135
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 136
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Work "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already enqueued for processing"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 147
    :cond_1
    invoke-direct {p0, v0, v2}, Landroidx/work/impl/Processor;->runOnExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 149
    :goto_0
    monitor-exit v10

    return v2

    .line 152
    :cond_2
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result v3

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 155
    invoke-direct {p0, v0, v2}, Landroidx/work/impl/Processor;->runOnExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 156
    monitor-exit v10

    return v2

    .line 158
    :cond_3
    new-instance v11, Landroidx/work/impl/WorkerWrapper$Builder;

    iget-object v3, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    iget-object v5, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v7, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    move-object v2, v11

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Landroidx/work/impl/WorkerWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;)V

    .line 167
    invoke-virtual {v11, p2}, Landroidx/work/impl/WorkerWrapper$Builder;->withRuntimeExtras(Landroidx/work/WorkerParameters$RuntimeExtras;)Landroidx/work/impl/WorkerWrapper$Builder;

    move-result-object p2

    .line 168
    invoke-virtual {p2}, Landroidx/work/impl/WorkerWrapper$Builder;->build()Landroidx/work/impl/WorkerWrapper;

    move-result-object p2

    .line 169
    invoke-virtual {p2}, Landroidx/work/impl/WorkerWrapper;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 170
    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Landroidx/work/impl/Processor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V

    iget-object v4, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 181
    invoke-interface {v4}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 170
    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 182
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 184
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/Map;

    .line 185
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 187
    invoke-interface {p1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 188
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 186
    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopAndCancelWork(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 271
    monitor-enter v0

    .line 272
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processor cancelling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    .line 273
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-direct {p0, p1}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v1

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {p1, v1, p2}, Landroidx/work/impl/Processor;->interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 276
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopForegroundWork(Landroidx/work/impl/StartStopToken;I)Z
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 220
    monitor-enter v0

    .line 222
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v1

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-static {p1, v1, p2}, Landroidx/work/impl/Processor;->interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 223
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopWork(Landroidx/work/impl/StartStopToken;I)Z
    .locals 5

    .line 238
    invoke-virtual {p1}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 240
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/Map;

    .line 241
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 242
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored stopWork. WorkerWrapper "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in foreground"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/Map;

    .line 250
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 251
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0, v0}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p1

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v0, p1, p2}, Landroidx/work/impl/Processor;->interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    move-result p1

    return p1

    .line 252
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return v3

    .line 255
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
