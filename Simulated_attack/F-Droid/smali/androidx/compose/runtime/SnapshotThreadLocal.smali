.class public final Landroidx/compose/runtime/SnapshotThreadLocal;
.super Ljava/lang/Object;
.source "ActualJvm.jvm.kt"


# instance fields
.field private final map:Ljava/util/concurrent/atomic/AtomicReference;

.field private final writeMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Landroidx/compose/runtime/internal/ThreadMapKt;->getEmptyThreadMap()Landroidx/compose/runtime/internal/ThreadMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotThreadLocal;->writeMutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/internal/ThreadMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/ThreadMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 5

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/runtime/SnapshotThreadLocal;->writeMutex:Ljava/lang/Object;

    .line 70
    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/internal/ThreadMap;

    .line 60
    invoke-virtual {v3, v0, v1, p1}, Landroidx/compose/runtime/internal/ThreadMap;->trySet(JLjava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/compose/runtime/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    invoke-virtual {v3, v0, v1, p1}, Landroidx/compose/runtime/internal/ThreadMap;->newWith(JLjava/lang/Object;)Landroidx/compose/runtime/internal/ThreadMap;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 62
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method
