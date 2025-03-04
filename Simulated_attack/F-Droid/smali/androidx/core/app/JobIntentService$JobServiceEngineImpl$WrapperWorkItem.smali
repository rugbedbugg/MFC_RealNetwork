.class final Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    .line 270
    iget-object v0, v0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    .line 271
    iget-object v1, v1, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 272
    invoke-static {v1, v2}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 274
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 265
    invoke-static {v0}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
