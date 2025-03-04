.class public Landroidx/work/impl/utils/WorkForegroundRunnable;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field final mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

.field final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field final mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field final mWorker:Landroidx/work/ListenableWorker;


# direct methods
.method public static synthetic $r8$lambda$x6ZBXcndBxIn8qTmHwgquxDmWno(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/work/impl/utils/WorkForegroundRunnable;->lambda$run$0(Landroidx/work/impl/utils/futures/SettableFuture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    .line 41
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorker:Landroidx/work/ListenableWorker;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    iput-object p5, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-void
.end method

.method private synthetic lambda$run$0(Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 84
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorker:Landroidx/work/ListenableWorker;

    .line 85
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 75
    iget-boolean v0, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 81
    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    new-instance v1, Landroidx/work/impl/utils/WorkForegroundRunnable$1;

    invoke-direct {v1, p0, v0}, Landroidx/work/impl/utils/WorkForegroundRunnable$1;-><init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V

    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 116
    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
