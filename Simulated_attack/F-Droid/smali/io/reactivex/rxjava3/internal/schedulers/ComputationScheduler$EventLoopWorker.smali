.class final Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;
.super Lio/reactivex/rxjava3/core/Scheduler$Worker;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

.field volatile disposed:Z

.field private final poolWorker:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

.field private final serial:Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

.field private final timed:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;)V
    .locals 2

    .line 190
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 192
    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

    .line 193
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 194
    new-instance v1, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

    .line 195
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 196
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;

    .line 203
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 226
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 229
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/DisposableContainer;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method
