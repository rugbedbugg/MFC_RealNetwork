.class public final Lorg/fdroid/index/RepoManager;
.super Ljava/lang/Object;
.source "RepoManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B;\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010*\u001a\u00020+H\u0007J\u0008\u0010,\u001a\u00020+H\u0007J\u0010\u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020/H\u0007J\u001c\u00100\u001a\u00020+2\u0006\u00101\u001a\u0002022\n\u0008\u0002\u00103\u001a\u0004\u0018\u000104H\u0007J\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011J\u0010\u00106\u001a\u0004\u0018\u00010\u00122\u0006\u0010.\u001a\u00020/J\u0012\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:H\u0007J\u0018\u0010;\u001a\u00020+2\u0006\u0010<\u001a\u00020\u00122\u0006\u0010=\u001a\u00020\u0012H\u0007J,\u0010>\u001a\u0004\u0018\u00010/2\u0006\u0010?\u001a\u00020\u00122\u0006\u0010@\u001a\u0002082\n\u0008\u0002\u00103\u001a\u0004\u0018\u000104H\u0087@\u00a2\u0006\u0002\u0010AJ\u0018\u0010B\u001a\u00020+2\u0006\u0010C\u001a\u0002022\u0006\u0010.\u001a\u00020/H\u0007J\u0018\u0010D\u001a\u00020+2\u0006\u0010.\u001a\u00020/2\u0006\u0010@\u001a\u000208H\u0007R\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001d\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lorg/fdroid/index/RepoManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "db",
        "Lorg/fdroid/database/FDroidDatabase;",
        "downloaderFactory",
        "Lorg/fdroid/download/DownloaderFactory;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "repoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V",
        "_repositoriesState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lorg/fdroid/database/Repository;",
        "addRepoState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lorg/fdroid/repo/AddRepoState;",
        "getAddRepoState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "appPrefsDao",
        "Lorg/fdroid/database/AppPrefsDaoInt;",
        "liveAddRepoState",
        "Landroidx/lifecycle/LiveData;",
        "getLiveAddRepoState",
        "()Landroidx/lifecycle/LiveData;",
        "liveRepositories",
        "getLiveRepositories",
        "repoAdder",
        "Lorg/fdroid/repo/RepoAdder;",
        "repoCountDownLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "repositoriesState",
        "getRepositoriesState",
        "repositoryDao",
        "Lorg/fdroid/database/RepositoryDaoInt;",
        "tempFileProvider",
        "Lorg/fdroid/index/TempFileProvider;",
        "abortAddingRepository",
        "",
        "addFetchedRepository",
        "deleteRepository",
        "repoId",
        "",
        "fetchRepositoryPreview",
        "url",
        "",
        "proxy",
        "Ljava/net/Proxy;",
        "getRepositories",
        "getRepository",
        "isSwapUri",
        "",
        "uri",
        "Landroid/net/Uri;",
        "reorderRepositories",
        "repoToReorder",
        "repoTarget",
        "setArchiveRepoEnabled",
        "repository",
        "enabled",
        "(Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setPreferredRepoId",
        "packageName",
        "setRepositoryEnabled",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _repositoriesState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field private final addRepoState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation
.end field

.field private final appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final liveAddRepoState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final liveRepositories:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final repoAdder:Lorg/fdroid/repo/RepoAdder;

.field private final repoCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final repositoriesState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation
.end field

.field private final repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public static synthetic $r8$lambda$50fRrtVwer0xuxS2gDD3VIrRYa8(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/index/RepoManager;->tempFileProvider$lambda$0(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;)V
    .locals 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/index/RepoManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;)V
    .locals 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriBuilder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/index/RepoManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v12, p6

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "db"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "downloaderFactory"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "httpManager"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "repoUriBuilder"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coroutineContext"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lorg/fdroid/index/RepoManager;->db:Lorg/fdroid/database/FDroidDatabase;

    iput-object v12, v0, Lorg/fdroid/index/RepoManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 43
    invoke-interface/range {p2 .. p2}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type org.fdroid.database.RepositoryDaoInt"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/fdroid/database/RepositoryDaoInt;

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 44
    invoke-interface/range {p2 .. p2}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type org.fdroid.database.AppPrefsDaoInt"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/fdroid/database/AppPrefsDaoInt;

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

    .line 45
    new-instance v4, Lorg/fdroid/index/RepoManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lorg/fdroid/index/RepoManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/fdroid/index/RepoManager;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 48
    new-instance v13, Lorg/fdroid/repo/RepoAdder;

    const/4 v7, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v1, v13

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lorg/fdroid/repo/RepoAdder;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/repo/RepoUriGetter;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, v0, Lorg/fdroid/index/RepoManager;->repoAdder:Lorg/fdroid/repo/RepoAdder;

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lorg/fdroid/index/RepoManager;->_repositoriesState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 60
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->repositoriesState:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    .line 61
    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->liveRepositories:Landroidx/lifecycle/LiveData;

    .line 63
    invoke-virtual {v13}, Lorg/fdroid/repo/RepoAdder;->getAddRepoState$database_release()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->addRepoState:Lkotlinx/coroutines/flow/StateFlow;

    .line 64
    invoke-virtual {v13}, Lorg/fdroid/repo/RepoAdder;->getAddRepoState$database_release()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->liveAddRepoState:Landroidx/lifecycle/LiveData;

    .line 72
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lorg/fdroid/index/RepoManager;->repoCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 76
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v4, Lorg/fdroid/index/RepoManager$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lorg/fdroid/index/RepoManager$1;-><init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v2, p6

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 40
    invoke-static {}, Lorg/fdroid/index/IndexUpdaterKt;->getDefaultRepoUriBuilder()Lorg/fdroid/index/RepoUriBuilder;

    move-result-object p5

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 41
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p6

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 35
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/RepoManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$getAppPrefsDao$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/database/AppPrefsDaoInt;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/fdroid/index/RepoManager;->appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

    return-object p0
.end method

.method public static final synthetic access$getDb$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/database/FDroidDatabase;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/fdroid/index/RepoManager;->db:Lorg/fdroid/database/FDroidDatabase;

    return-object p0
.end method

.method public static final synthetic access$getRepoAdder$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/repo/RepoAdder;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/fdroid/index/RepoManager;->repoAdder:Lorg/fdroid/repo/RepoAdder;

    return-object p0
.end method

.method public static final synthetic access$getRepoCountDownLatch$p(Lorg/fdroid/index/RepoManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/fdroid/index/RepoManager;->repoCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getRepositoryDao$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/database/RepositoryDaoInt;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    return-object p0
.end method

.method public static final synthetic access$get_repositoriesState$p(Lorg/fdroid/index/RepoManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/fdroid/index/RepoManager;->_repositoriesState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static synthetic fetchRepositoryPreview$default(Lorg/fdroid/index/RepoManager;Ljava/lang/String;Ljava/net/Proxy;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager;->fetchRepositoryPreview(Ljava/lang/String;Ljava/net/Proxy;)V

    return-void
.end method

.method public static synthetic setArchiveRepoEnabled$default(Lorg/fdroid/index/RepoManager;Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/index/RepoManager;->setArchiveRepoEnabled(Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final tempFileProvider$lambda$0(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "dl-"

    invoke-static {v1, v0, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    const-string v0, "createTempFile(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final abortAddingRepository()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repoAdder:Lorg/fdroid/repo/RepoAdder;

    .line 164
    invoke-virtual {v0}, Lorg/fdroid/repo/RepoAdder;->abortAddingRepo$database_release()V

    return-void
.end method

.method public final addFetchedRepository()V
    .locals 6

    .line 146
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    iget-object v1, p0, Lorg/fdroid/index/RepoManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v2, 0x0

    new-instance v3, Lorg/fdroid/index/RepoManager$addFetchedRepository$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/fdroid/index/RepoManager$addFetchedRepository$1;-><init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deleteRepository(J)V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 120
    invoke-interface {v0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->deleteRepository(J)V

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->_repositoriesState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 123
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/fdroid/database/Repository;

    .line 124
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final fetchRepositoryPreview(Ljava/lang/String;)V
    .locals 2

    .line 0
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lorg/fdroid/index/RepoManager;->fetchRepositoryPreview$default(Lorg/fdroid/index/RepoManager;Ljava/lang/String;Ljava/net/Proxy;ILjava/lang/Object;)V

    return-void
.end method

.method public final fetchRepositoryPreview(Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repoAdder:Lorg/fdroid/repo/RepoAdder;

    .line 136
    invoke-virtual {v0, p1, p2}, Lorg/fdroid/repo/RepoAdder;->fetchRepository$database_release(Ljava/lang/String;Ljava/net/Proxy;)V

    return-void
.end method

.method public final getAddRepoState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->addRepoState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getLiveAddRepoState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->liveAddRepoState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getLiveRepositories()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->liveRepositories:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRepositories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repoCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 103
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repositoriesState:Lkotlinx/coroutines/flow/StateFlow;

    .line 104
    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getRepositoriesState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repositoriesState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getRepository(J)Lorg/fdroid/database/Repository;
    .locals 4

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repoCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repositoriesState:Lkotlinx/coroutines/flow/StateFlow;

    .line 95
    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 288
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

    .line 95
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 289
    :goto_0
    check-cast v1, Lorg/fdroid/database/Repository;

    return-object v1
.end method

.method public final isSwapUri(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    sget-object v0, Lorg/fdroid/repo/RepoUriGetter;->INSTANCE:Lorg/fdroid/repo/RepoUriGetter;

    invoke-virtual {v0, p1}, Lorg/fdroid/repo/RepoUriGetter;->isSwapUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final reorderRepositories(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V
    .locals 7

    const-string v0, "repoToReorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoTarget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    iget-object v2, p0, Lorg/fdroid/index/RepoManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v4, Lorg/fdroid/index/RepoManager$reorderRepositories$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lorg/fdroid/index/RepoManager$reorderRepositories$1;-><init>(Lorg/fdroid/index/RepoManager;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setArchiveRepoEnabled(Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/Repository;",
            "Z",
            "Ljava/net/Proxy;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;

    iget v1, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;

    invoke-direct {v0, p0, p4}, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;-><init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 210
    iget v2, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 216
    invoke-interface {v2, p4}, Lorg/fdroid/database/RepositoryDaoInt;->getArchiveRepoId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    if-eqz p2, :cond_6

    if-nez p4, :cond_5

    :try_start_1
    iget-object p2, p0, Lorg/fdroid/index/RepoManager;->repoAdder:Lorg/fdroid/repo/RepoAdder;

    .line 220
    iput-object p4, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->label:I

    invoke-virtual {p2, p1, p3, v0}, Lorg/fdroid/repo/RepoAdder;->addArchiveRepo$database_release(Lorg/fdroid/database/Repository;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p4

    move-object p4, p1

    move-object p1, v4

    :goto_1
    :try_start_2
    check-cast p4, Ljava/lang/Long;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p1, p4

    .line 222
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string p4, "expected"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move-object p4, p1

    goto :goto_3

    :cond_4
    throw p2

    :cond_5
    iget-object p1, p0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 225
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p2, p3, v3}, Lorg/fdroid/database/RepositoryDaoInt;->setRepositoryEnabled(JZ)V

    goto :goto_3

    :cond_6
    if-eqz p4, :cond_7

    iget-object p1, p0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 228
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lorg/fdroid/database/RepositoryDaoInt;->setRepositoryEnabled(JZ)V

    :cond_7
    :goto_3
    return-object p4
.end method

.method public final setPreferredRepoId(Ljava/lang/String;J)V
    .locals 10

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    iget-object v2, p0, Lorg/fdroid/index/RepoManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v4 .. v9}, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1;-><init>(Lorg/fdroid/index/RepoManager;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setRepositoryEnabled(JZ)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/index/RepoManager;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 113
    invoke-interface {v0, p1, p2, p3}, Lorg/fdroid/database/RepositoryDaoInt;->setRepositoryEnabled(JZ)V

    return-void
.end method
