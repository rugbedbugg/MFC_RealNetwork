.class public final Landroidx/room/RoomTrackingLiveData;
.super Landroidx/lifecycle/LiveData;
.source "RoomTrackingLiveData.kt"


# instance fields
.field private final computeFunction:Ljava/util/concurrent/Callable;

.field private final computing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final container:Landroidx/room/InvalidationLiveDataContainer;

.field private final database:Landroidx/room/RoomDatabase;

.field private final inTransaction:Z

.field private final invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final invalidationRunnable:Ljava/lang/Runnable;

.field private final observer:Landroidx/room/InvalidationTracker$Observer;

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private final registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$PhMGW5zFk4QWazERd2lfEeLZqW0(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData;->refreshRunnable$lambda$0(Landroidx/room/RoomTrackingLiveData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxd4mQgIWH-4QOUl4ygLPSFohKk(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable$lambda$1(Landroidx/room/RoomTrackingLiveData;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeFunction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableNames"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    iput-boolean p3, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    iput-object p4, p0, Landroidx/room/RoomTrackingLiveData;->computeFunction:Ljava/util/concurrent/Callable;

    .line 49
    new-instance p1, Landroidx/room/RoomTrackingLiveData$observer$1;

    invoke-direct {p1, p5, p0}, Landroidx/room/RoomTrackingLiveData$observer$1;-><init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance p1, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance p1, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda1;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final invalidationRunnable$lambda$1(Landroidx/room/RoomTrackingLiveData;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v0

    .line 100
    iget-object v1, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final refreshRunnable$lambda$0(Landroidx/room/RoomTrackingLiveData;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData;->observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v3}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 65
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v1

    .line 69
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 72
    :try_start_1
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->computeFunction:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while computing database live data."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_2
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v3, :cond_3

    .line 95
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 85
    :goto_1
    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final getInvalidationRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-boolean v0, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    .line 122
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    .line 124
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onActive()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>"

    .line 110
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationLiveDataContainer;->onActive(Landroidx/lifecycle/LiveData;)V

    .line 111
    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onInactive()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>"

    .line 117
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationLiveDataContainer;->onInactive(Landroidx/lifecycle/LiveData;)V

    return-void
.end method
