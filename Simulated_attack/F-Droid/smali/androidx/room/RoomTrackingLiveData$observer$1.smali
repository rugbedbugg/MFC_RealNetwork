.class public final Landroidx/room/RoomTrackingLiveData$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "RoomTrackingLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/RoomTrackingLiveData;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData$observer$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    .line 49
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object p1

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData$observer$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    invoke-virtual {v0}, Landroidx/room/RoomTrackingLiveData;->getInvalidationRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/arch/core/executor/TaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
