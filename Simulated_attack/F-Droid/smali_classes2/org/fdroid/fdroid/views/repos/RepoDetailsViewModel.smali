.class public final Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "RepoDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000c\u0010\u001e\u001a\u00020\u001d*\u00020\rH\u0002R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lorg/fdroid/fdroid/views/repos/RepoDetailsState;",
        "liveData",
        "Landroidx/lifecycle/LiveData;",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "repoLiveData",
        "Lorg/fdroid/database/Repository;",
        "getRepoLiveData",
        "repoManager",
        "Lorg/fdroid/index/RepoManager;",
        "kotlin.jvm.PlatformType",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "initRepo",
        "",
        "repoId",
        "",
        "setArchiveRepoEnabled",
        "repo",
        "enabled",
        "",
        "isArchiveEnabled",
        "app_fullRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field private final liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final repoLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final repoManager:Lorg/fdroid/index/RepoManager;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 8

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 30
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v7

    .line 33
    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->liveData:Landroidx/lifecycle/LiveData;

    .line 35
    invoke-virtual {p1}, Lorg/fdroid/index/RepoManager;->getRepositoriesState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;

    invoke-direct {v1, v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->repoLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepoManager$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lorg/fdroid/index/RepoManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$isArchiveEnabled(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lorg/fdroid/database/Repository;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->isArchiveEnabled(Lorg/fdroid/database/Repository;)Z

    move-result p0

    return p0
.end method

.method private final isArchiveEnabled(Lorg/fdroid/database/Repository;)Z
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 77
    invoke-virtual {v0}, Lorg/fdroid/index/RepoManager;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/fdroid/database/Repository;

    .line 78
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->isArchiveRepo()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_0
    check-cast v1, Lorg/fdroid/database/Repository;

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public final getLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->liveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRepoLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->repoLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final initRepo(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 44
    invoke-virtual {v0, p1, p2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 46
    new-instance p2, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;-><init>(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 48
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    .line 50
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->isArchiveEnabled(Lorg/fdroid/database/Repository;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 48
    invoke-direct {v0, p1, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;-><init>(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setArchiveRepoEnabled(Lorg/fdroid/database/Repository;Z)V
    .locals 9

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 57
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v2, v3, v2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->copy$default(Lorg/fdroid/fdroid/views/repos/RepoDetailsState;Lorg/fdroid/database/Repository;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 58
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;

    invoke-direct {v6, p0, p1, p2, v2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lorg/fdroid/database/Repository;ZLkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
