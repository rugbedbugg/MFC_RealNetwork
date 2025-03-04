.class public final Lorg/acra/builder/LastActivityManager;
.super Ljava/lang/Object;
.source "LastActivityManager.kt"


# instance fields
.field private final activityStack:Lorg/acra/collections/WeakStack;

.field private final destroyedCondition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/acra/collections/WeakStack;

    invoke-direct {v0}, Lorg/acra/collections/WeakStack;-><init>()V

    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->destroyedCondition:Ljava/util/concurrent/locks/Condition;

    .line 80
    new-instance v0, Lorg/acra/builder/LastActivityManager$1;

    invoke-direct {v0, p0}, Lorg/acra/builder/LastActivityManager$1;-><init>(Lorg/acra/builder/LastActivityManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static final synthetic access$getActivityStack$p(Lorg/acra/builder/LastActivityManager;)Lorg/acra/collections/WeakStack;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    return-object p0
.end method

.method public static final synthetic access$getDestroyedCondition$p(Lorg/acra/builder/LastActivityManager;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/acra/builder/LastActivityManager;->destroyedCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lorg/acra/builder/LastActivityManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/acra/builder/LastActivityManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method public final clearLastActivities()V
    .locals 1

    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 55
    invoke-virtual {v0}, Lorg/acra/collections/WeakStack;->clear()V

    return-void
.end method

.method public final getLastActivities()Ljava/util/List;
    .locals 2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final waitForAllActivitiesDestroy(I)V
    .locals 9

    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 67
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    int-to-long v5, p1

    add-long v7, v1, v5

    cmp-long v7, v7, v3

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/acra/builder/LastActivityManager;->destroyedCondition:Ljava/util/concurrent/locks/Condition;

    sub-long v3, v1, v3

    add-long/2addr v3, v5

    .line 68
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 71
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
