.class public abstract synthetic Landroidx/work/impl/utils/taskexecutor/TaskExecutor$-CC;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# direct methods
.method public static $default$executeOnTaskThread(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 46
    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
