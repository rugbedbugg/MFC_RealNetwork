.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Landroidx/work/Clock;

.field private contentUriTriggerWorkersLimit:I

.field private defaultProcessName:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/Executor;

.field private initializationExceptionHandler:Landroidx/core/util/Consumer;

.field private inputMergerFactory:Landroidx/work/InputMergerFactory;

.field private loggingLevel:I

.field private maxJobSchedulerId:I

.field private maxSchedulerLimit:I

.field private minJobSchedulerId:I

.field private runnableScheduler:Landroidx/work/RunnableScheduler;

.field private schedulingExceptionHandler:Landroidx/core/util/Consumer;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private workerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 183
    invoke-static {}, Landroidx/work/ConfigurationKt;->getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/Configuration;
    .locals 1

    .line 428
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public final getClock$work_runtime_release()Landroidx/work/Clock;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    return-object v0
.end method

.method public final getContentUriTriggerWorkersLimit$work_runtime_release()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return v0
.end method

.method public final getDefaultProcessName$work_runtime_release()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object v0
.end method

.method public final getLoggingLevel$work_runtime_release()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    return v0
.end method

.method public final getMaxJobSchedulerId$work_runtime_release()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    return v0
.end method

.method public final getMaxSchedulerLimit$work_runtime_release()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    return v0
.end method

.method public final getMinJobSchedulerId$work_runtime_release()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    return v0
.end method

.method public final getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-object v0
.end method

.method public final getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    return-object v0
.end method

.method public final setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .locals 2

    sub-int v0, p2, p1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iput p1, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    iput p2, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    return-object p0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WorkManager needs a range of at least 1000 job ids."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .locals 0

    .line 0
    iput p1, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    return-object p0
.end method
