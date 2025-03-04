.class Landroidx/work/impl/utils/WorkProgressUpdater$1;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/WorkProgressUpdater;->updateProgress(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

.field final synthetic val$data:Landroidx/work/Data;

.field final synthetic val$future:Landroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$id:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/WorkProgressUpdater;Ljava/util/UUID;Landroidx/work/Data;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Landroidx/work/Data;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/util/UUID;

    .line 74
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating progress for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Landroidx/work/Data;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 76
    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 78
    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 79
    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 83
    sget-object v3, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v1, v3, :cond_0

    .line 84
    new-instance v1, Landroidx/work/impl/model/WorkProgress;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Landroidx/work/Data;

    invoke-direct {v1, v0, v2}, Landroidx/work/impl/model/WorkProgress;-><init>(Ljava/lang/String;Landroidx/work/Data;)V

    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 85
    iget-object v0, v0, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkProgressDao;->insert(Landroidx/work/impl/model/WorkProgress;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 87
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring setProgressAsync(...). WorkSpec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is not in a RUNNING state."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 100
    iget-object v0, v0, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 105
    iget-object v0, v0, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    goto :goto_3

    :cond_1
    :try_start_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_2
    :try_start_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 103
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 105
    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 106
    throw v0
.end method
