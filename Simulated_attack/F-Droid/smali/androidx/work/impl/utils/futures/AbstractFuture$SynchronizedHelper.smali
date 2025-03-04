.class final Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;
.super Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1134
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;-><init>(Landroidx/work/impl/utils/futures/AbstractFuture$1;)V

    return-void
.end method


# virtual methods
.method casListeners(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Z
    .locals 1

    .line 1160
    monitor-enter p1

    .line 1161
    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    if-ne v0, p2, :cond_0

    .line 1162
    iput-object p3, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 1163
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 1165
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 1166
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1171
    monitor-enter p1

    .line 1172
    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1173
    iput-object p3, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 1174
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 1176
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 1177
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z
    .locals 1

    .line 1149
    monitor-enter p1

    .line 1150
    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v0, p2, :cond_0

    .line 1151
    iput-object p3, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 1152
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 1154
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 1155
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method putNext(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V
    .locals 0

    .line 1144
    iput-object p2, p1, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    return-void
.end method

.method putThread(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0

    .line 1139
    iput-object p2, p1, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    return-void
.end method
