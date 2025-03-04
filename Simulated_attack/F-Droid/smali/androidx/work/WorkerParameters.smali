.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "WorkerParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$RuntimeExtras;
    }
.end annotation


# instance fields
.field private mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field private mGeneration:I

.field private mId:Ljava/util/UUID;

.field private mInputData:Landroidx/work/Data;

.field private mProgressUpdater:Landroidx/work/ProgressUpdater;

.field private mRunAttemptCount:I

.field private mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private mTags:Ljava/util/Set;

.field private mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/Collection;Landroidx/work/WorkerParameters$RuntimeExtras;IILjava/util/concurrent/Executor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/WorkerFactory;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->mTags:Ljava/util/Set;

    iput-object p4, p0, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iput p5, p0, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    iput p6, p0, Landroidx/work/WorkerParameters;->mGeneration:I

    iput-object p7, p0, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object p9, p0, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/WorkerFactory;

    iput-object p10, p0, Landroidx/work/WorkerParameters;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    iput-object p11, p0, Landroidx/work/WorkerParameters;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    return-void
.end method


# virtual methods
.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getForegroundUpdater()Landroidx/work/ForegroundUpdater;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getInputData()Landroidx/work/Data;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    return-object v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 145
    iget-object v0, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->network:Landroid/net/Network;

    return-object v0
.end method

.method public getProgressUpdater()Landroidx/work/ProgressUpdater;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    return-object v0
.end method

.method public getRunAttemptCount()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object v0
.end method

.method public getTriggeredContentAuthorities()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 134
    iget-object v0, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    return-object v0
.end method

.method public getTriggeredContentUris()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 122
    iget-object v0, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    return-object v0
.end method

.method public getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/WorkerFactory;

    return-object v0
.end method
