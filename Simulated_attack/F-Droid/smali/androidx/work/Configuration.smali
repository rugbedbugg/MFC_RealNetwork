.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;,
        Landroidx/work/Configuration$Companion;,
        Landroidx/work/Configuration$Provider;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/work/Configuration$Companion;


# instance fields
.field private final clock:Landroidx/work/Clock;

.field private final contentUriTriggerWorkersLimit:I

.field private final defaultProcessName:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final initializationExceptionHandler:Landroidx/core/util/Consumer;

.field private final inputMergerFactory:Landroidx/work/InputMergerFactory;

.field private final isUsingDefaultTaskExecutor:Z

.field private final maxJobSchedulerId:I

.field private final maxSchedulerLimit:I

.field private final minJobSchedulerId:I

.field private final minimumLoggingLevel:I

.field private final runnableScheduler:Landroidx/work/RunnableScheduler;

.field private final schedulingExceptionHandler:Landroidx/core/util/Consumer;

.field private final taskExecutor:Ljava/util/concurrent/Executor;

.field private final workerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/work/Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/Configuration;->Companion:Landroidx/work/Configuration$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/Executor;

    .line 142
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/work/Configuration;->isUsingDefaultTaskExecutor:Z

    .line 146
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 147
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getClock$work_runtime_release()Landroidx/work/Clock;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroidx/work/SystemClock;

    invoke-direct {v0}, Landroidx/work/SystemClock;-><init>()V

    :cond_3
    iput-object v0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/Clock;

    .line 148
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Landroidx/work/WorkerFactory;->getDefaultWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    const-string v1, "getDefaultWorkerFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iput-object v0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    .line 149
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Landroidx/work/NoOpInputMergerFactory;->INSTANCE:Landroidx/work/NoOpInputMergerFactory;

    :cond_5
    iput-object v0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 150
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    :cond_6
    iput-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 151
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getLoggingLevel$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    .line 152
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMinJobSchedulerId$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->minJobSchedulerId:I

    .line 153
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxJobSchedulerId$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_7

    .line 156
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxSchedulerLimit$work_runtime_release()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 158
    :cond_7
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxSchedulerLimit$work_runtime_release()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 160
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 161
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 162
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getDefaultProcessName$work_runtime_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getContentUriTriggerWorkersLimit$work_runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    return-void
.end method


# virtual methods
.method public final getClock()Landroidx/work/Clock;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/Clock;

    return-object v0
.end method

.method public final getContentUriTriggerWorkersLimit()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    return v0
.end method

.method public final getDefaultProcessName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getInitializationExceptionHandler()Landroidx/core/util/Consumer;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getInputMergerFactory()Landroidx/work/InputMergerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object v0
.end method

.method public final getMaxJobSchedulerId()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    return v0
.end method

.method public final getMaxSchedulerLimit()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    return v0
.end method

.method public final getMinJobSchedulerId()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration;->minJobSchedulerId:I

    return v0
.end method

.method public final getMinimumLoggingLevel()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    return v0
.end method

.method public final getRunnableScheduler()Landroidx/work/RunnableScheduler;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-object v0
.end method

.method public final getSchedulingExceptionHandler()Landroidx/core/util/Consumer;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    return-object v0
.end method
