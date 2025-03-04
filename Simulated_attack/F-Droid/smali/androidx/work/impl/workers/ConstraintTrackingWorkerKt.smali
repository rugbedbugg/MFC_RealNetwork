.class public abstract Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ConstraintTrkngWrkr"

    .line 160
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"ConstraintTrkngWrkr\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setFailed(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->setFailed(Landroidx/work/impl/utils/futures/SettableFuture;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setRetry(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->setRetry(Landroidx/work/impl/utils/futures/SettableFuture;)Z

    move-result p0

    return p0
.end method

.method private static final setFailed(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 1

    .line 157
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final setRetry(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 1

    .line 158
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
