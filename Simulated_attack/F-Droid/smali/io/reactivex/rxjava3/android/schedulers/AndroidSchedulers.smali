.class public abstract Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$MainHolder;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public static synthetic $r8$lambda$rU6g57daHLH3vbmmB880Hk3ow8s()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 0
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->lambda$static$0()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$$ExternalSyntheticLambda0;-><init>()V

    .line 32
    invoke-static {v0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Looper;Z)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->internalFrom(Landroid/os/Looper;Z)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method private static internalFrom(Landroid/os/Looper;Z)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 2

    .line 85
    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method private static synthetic lambda$static$0()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 32
    sget-object v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;

    return-object v0
.end method

.method public static mainThread()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/rxjava3/core/Scheduler;

    .line 42
    invoke-static {v0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->onMainThreadScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
