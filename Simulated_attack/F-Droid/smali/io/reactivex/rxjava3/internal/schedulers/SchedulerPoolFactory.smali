.class public abstract Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    }
.end annotation


# static fields
.field public static final PURGE_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;-><init>()V

    const/4 v1, 0x1

    const-string v2, "rx3.purge-enabled"

    .line 36
    invoke-static {v1, v2, v1, v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory;->getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/rxjava3/functions/Function;)Z

    move-result v0

    sput-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    return-void
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 68
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sget-boolean p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    return-object v0
.end method

.method static getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/rxjava3/functions/Function;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 42
    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "true"

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 48
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    return p2

    :cond_1
    return p3
.end method
