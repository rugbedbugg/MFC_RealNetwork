.class public final Landroidx/work/impl/WorkLauncherImpl;
.super Ljava/lang/Object;
.source "WorkLauncher.kt"

# interfaces
.implements Landroidx/work/impl/WorkLauncher;


# instance fields
.field private final processor:Landroidx/work/impl/Processor;

.field private final workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkLauncherImpl;->processor:Landroidx/work/impl/Processor;

    iput-object p2, p0, Landroidx/work/impl/WorkLauncherImpl;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-void
.end method


# virtual methods
.method public synthetic startWork(Landroidx/work/impl/StartStopToken;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/work/impl/WorkLauncher$-CC;->$default$startWork(Landroidx/work/impl/WorkLauncher;Landroidx/work/impl/StartStopToken;)V

    return-void
.end method

.method public startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 2

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroidx/work/impl/utils/StartWorkRunnable;

    iget-object v1, p0, Landroidx/work/impl/WorkLauncherImpl;->processor:Landroidx/work/impl/Processor;

    invoke-direct {v0, v1, p1, p2}, Landroidx/work/impl/utils/StartWorkRunnable;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V

    iget-object p1, p0, Landroidx/work/impl/WorkLauncherImpl;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 59
    invoke-interface {p1, v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic stopWork(Landroidx/work/impl/StartStopToken;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/work/impl/WorkLauncher$-CC;->$default$stopWork(Landroidx/work/impl/WorkLauncher;Landroidx/work/impl/StartStopToken;)V

    return-void
.end method

.method public stopWork(Landroidx/work/impl/StartStopToken;I)V
    .locals 4

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkLauncherImpl;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 64
    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    iget-object v2, p0, Landroidx/work/impl/WorkLauncherImpl;->processor:Landroidx/work/impl/Processor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V

    .line 63
    invoke-interface {v0, v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic stopWorkWithReason(Landroidx/work/impl/StartStopToken;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/WorkLauncher$-CC;->$default$stopWorkWithReason(Landroidx/work/impl/WorkLauncher;Landroidx/work/impl/StartStopToken;I)V

    return-void
.end method
