.class public Landroidx/work/impl/utils/SerialExecutorImpl;
.super Ljava/lang/Object;
.source "SerialExecutorImpl.java"

# interfaces
.implements Landroidx/work/impl/utils/taskexecutor/SerialExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/SerialExecutorImpl$Task;
    }
.end annotation


# instance fields
.field private mActive:Ljava/lang/Runnable;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mLock:Ljava/lang/Object;

.field private final mTasks:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    .line 49
    new-instance v2, Landroidx/work/impl/utils/SerialExecutorImpl$Task;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/utils/SerialExecutorImpl$Task;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 53
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

.method public hasPendingTasks()Z
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    .line 69
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleNext()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 60
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
