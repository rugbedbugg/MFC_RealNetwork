.class final Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WorkerUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkerUpdater;->enqueueUniquelyNamedPeriodic(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)Landroidx/work/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $operation:Landroidx/work/impl/OperationImpl;

.field final synthetic $this_enqueueUniquelyNamedPeriodic:Landroidx/work/impl/WorkManagerImpl;

.field final synthetic $workRequest:Landroidx/work/WorkRequest;


# direct methods
.method constructor <init>(Landroidx/work/WorkRequest;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$workRequest:Landroidx/work/WorkRequest;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$this_enqueueUniquelyNamedPeriodic:Landroidx/work/impl/WorkManagerImpl;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$operation:Landroidx/work/impl/OperationImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$workRequest:Landroidx/work/WorkRequest;

    .line 119
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v1, Landroidx/work/impl/WorkContinuationImpl;

    iget-object v2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$this_enqueueUniquelyNamedPeriodic:Landroidx/work/impl/WorkManagerImpl;

    iget-object v3, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$name:Ljava/lang/String;

    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    .line 121
    new-instance v0, Landroidx/work/impl/utils/EnqueueRunnable;

    iget-object v2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$operation:Landroidx/work/impl/OperationImpl;

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/utils/EnqueueRunnable;-><init>(Landroidx/work/impl/WorkContinuationImpl;Landroidx/work/impl/OperationImpl;)V

    invoke-virtual {v0}, Landroidx/work/impl/utils/EnqueueRunnable;->run()V

    return-void
.end method
