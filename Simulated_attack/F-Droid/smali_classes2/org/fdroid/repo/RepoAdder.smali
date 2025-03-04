.class public final Lorg/fdroid/repo/RepoAdder;
.super Ljava/lang/Object;
.source "RepoAdder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\r\u0010\u001e\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008 J&\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&H\u0081@\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u0004\u0018\u00010$H\u0001\u00a2\u0006\u0002\u0008*JF\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u00100\u001a\u0004\u0018\u00010/2\u0008\u00101\u001a\u0004\u0018\u00010/2\u0006\u00102\u001a\u000203H\u0082@\u00a2\u0006\u0002\u00104J\u001f\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u00020/2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0000\u00a2\u0006\u0002\u00087J$\u00108\u001a\u00020\u001f2\u0006\u00106\u001a\u00020/2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&H\u0081@\u00a2\u0006\u0004\u00089\u0010:J\u0018\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020/2\u0006\u0010>\u001a\u00020$H\u0002J,\u0010?\u001a\u00020$2\u0006\u0010,\u001a\u00020-2\u0006\u0010@\u001a\u00020A2\u0008\u00100\u001a\u0004\u0018\u00010/2\u0008\u00101\u001a\u0004\u0018\u00010/H\u0002J\u0010\u0010B\u001a\u00020C2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lorg/fdroid/repo/RepoAdder;",
        "",
        "context",
        "Landroid/content/Context;",
        "db",
        "Lorg/fdroid/database/FDroidDatabase;",
        "tempFileProvider",
        "Lorg/fdroid/index/TempFileProvider;",
        "downloaderFactory",
        "Lorg/fdroid/download/DownloaderFactory;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "repoUriGetter",
        "Lorg/fdroid/repo/RepoUriGetter;",
        "repoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/repo/RepoUriGetter;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V",
        "addRepoState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lorg/fdroid/repo/AddRepoState;",
        "getAddRepoState$database_release",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "fetchJob",
        "Lkotlinx/coroutines/Job;",
        "log",
        "Lmu/KLogger;",
        "repositoryDao",
        "Lorg/fdroid/database/RepositoryDaoInt;",
        "abortAddingRepo",
        "",
        "abortAddingRepo$database_release",
        "addArchiveRepo",
        "",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "proxy",
        "Ljava/net/Proxy;",
        "addArchiveRepo$database_release",
        "(Lorg/fdroid/database/Repository;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addFetchedRepository",
        "addFetchedRepository$database_release",
        "fetchRepo",
        "uri",
        "Landroid/net/Uri;",
        "fingerprint",
        "",
        "username",
        "password",
        "receiver",
        "Lorg/fdroid/repo/RepoPreviewReceiver;",
        "(Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchRepository",
        "url",
        "fetchRepository$database_release",
        "fetchRepositoryInt",
        "fetchRepositoryInt$database_release",
        "(Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFetchResult",
        "Lorg/fdroid/repo/FetchResult;",
        "fetchUrlIn",
        "fetchedRepo",
        "getTempRepo",
        "indexFormatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "hasDisallowInstallUnknownSources",
        "",
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
.field private final addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

.field private fetchJob:Lkotlinx/coroutines/Job;

.field private final httpManager:Lorg/fdroid/download/HttpManager;

.field private final log:Lmu/KLogger;

.field private final repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

.field private final repoUriGetter:Lorg/fdroid/repo/RepoUriGetter;

.field private final repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public static synthetic $r8$lambda$4FEF7b9RRjFvH3hZXXshEkMMZgE(Lorg/fdroid/repo/RepoAdder;JLorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/repo/RepoAdder;->addFetchedRepository$lambda$4(Lorg/fdroid/repo/RepoAdder;JLorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aImyOatjDGCVOIqC7FWX2ha_f_o(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/repo/FetchResult;Lorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/repo/RepoAdder;->addFetchedRepository$lambda$2(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/repo/FetchResult;Lorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/repo/RepoUriGetter;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempFileProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriGetter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriBuilder"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder;->db:Lorg/fdroid/database/FDroidDatabase;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iput-object p4, p0, Lorg/fdroid/repo/RepoAdder;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iput-object p5, p0, Lorg/fdroid/repo/RepoAdder;->httpManager:Lorg/fdroid/download/HttpManager;

    iput-object p6, p0, Lorg/fdroid/repo/RepoAdder;->repoUriGetter:Lorg/fdroid/repo/RepoUriGetter;

    iput-object p7, p0, Lorg/fdroid/repo/RepoAdder;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    iput-object p8, p0, Lorg/fdroid/repo/RepoAdder;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 107
    sget-object p1, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object p3, Lorg/fdroid/repo/RepoAdder$log$1;->INSTANCE:Lorg/fdroid/repo/RepoAdder$log$1;

    invoke-virtual {p1, p3}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    .line 108
    invoke-interface {p2}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.fdroid.database.RepositoryDaoInt"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fdroid/database/RepositoryDaoInt;

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 110
    sget-object p1, Lorg/fdroid/repo/None;->INSTANCE:Lorg/fdroid/repo/None;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/repo/RepoUriGetter;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lorg/fdroid/repo/RepoUriGetter;->INSTANCE:Lorg/fdroid/repo/RepoUriGetter;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lorg/fdroid/repo/RepoAdderKt;->getDefaultRepoUriBuilder()Lorg/fdroid/index/RepoUriBuilder;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 105
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    .line 97
    invoke-direct/range {v2 .. v10}, Lorg/fdroid/repo/RepoAdder;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/repo/RepoUriGetter;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$fetchRepo(Lorg/fdroid/repo/RepoAdder;Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-direct/range {p0 .. p7}, Lorg/fdroid/repo/RepoAdder;->fetchRepo(Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDb$p(Lorg/fdroid/repo/RepoAdder;)Lorg/fdroid/database/FDroidDatabase;
    .locals 0

    .line 96
    iget-object p0, p0, Lorg/fdroid/repo/RepoAdder;->db:Lorg/fdroid/database/FDroidDatabase;

    return-object p0
.end method

.method public static final synthetic access$getFetchResult(Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Lorg/fdroid/database/Repository;)Lorg/fdroid/repo/FetchResult;
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/fdroid/repo/RepoAdder;->getFetchResult(Ljava/lang/String;Lorg/fdroid/database/Repository;)Lorg/fdroid/repo/FetchResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRepositoryDao$p(Lorg/fdroid/repo/RepoAdder;)Lorg/fdroid/database/RepositoryDaoInt;
    .locals 0

    .line 96
    iget-object p0, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    return-object p0
.end method

.method public static synthetic addArchiveRepo$database_release$default(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/Repository;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 334
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/repo/RepoAdder;->addArchiveRepo$database_release(Lorg/fdroid/database/Repository;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final addFetchedRepository$lambda$2(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/repo/FetchResult;Lorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;
    .locals 2

    const-string v0, "this$0"

    .line 307
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fetchResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    invoke-interface {v0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insert(Lorg/fdroid/database/NewRepository;)J

    move-result-wide v0

    .line 303
    instance-of p1, p2, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p3}, Lorg/fdroid/repo/Fetching;->getFetchUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 305
    iget-object p2, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    invoke-interface {p2, v0, v1, p1}, Lorg/fdroid/database/RepositoryDaoInt;->updateUserMirrors(JLjava/util/List;)V

    .line 307
    :cond_0
    iget-object p0, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    invoke-interface {p0, v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "New repository not found in DB"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final addFetchedRepository$lambda$4(Lorg/fdroid/repo/RepoAdder;JLorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    invoke-interface {v0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getUserMirrors()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 317
    invoke-virtual {p3}, Lorg/fdroid/repo/Fetching;->getFetchUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object p0, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    invoke-interface {p0, p1, p2, v1}, Lorg/fdroid/database/RepositoryDaoInt;->updateUserMirrors(JLjava/util/List;)V

    return-object v0

    .line 314
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 315
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No repo with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final fetchRepo(Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/repo/RepoPreviewReceiver;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v0, p7

    instance-of v2, v0, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;

    iget v3, v2, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;

    invoke-direct {v2, v1, v0}, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;-><init>(Lorg/fdroid/repo/RepoAdder;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 201
    iget v2, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    const/4 v13, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v13, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lorg/fdroid/repo/RepoPreviewReceiver;

    iget-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    iget-object v7, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lorg/fdroid/repo/RepoAdder;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v15, v2

    move-object v10, v3

    move-object v9, v4

    move-object v14, v5

    move-object v8, v6

    goto :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 211
    :try_start_1
    sget-object v0, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    invoke-direct {v1, v8, v0, v9, v10}, Lorg/fdroid/repo/RepoAdder;->getTempRepo(Landroid/net/Uri;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v4

    .line 212
    new-instance v2, Lorg/fdroid/repo/RepoV2Fetcher;

    iget-object v15, v1, Lorg/fdroid/repo/RepoAdder;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iget-object v0, v1, Lorg/fdroid/repo/RepoAdder;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v5, v1, Lorg/fdroid/repo/RepoAdder;->httpManager:Lorg/fdroid/download/HttpManager;

    iget-object v6, v1, Lorg/fdroid/repo/RepoAdder;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    move-object v14, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lorg/fdroid/repo/RepoV2Fetcher;-><init>(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Ljava/net/Proxy;)V

    .line 215
    iput-object v1, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$0:Ljava/lang/Object;

    iput-object v8, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$1:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v14, p2

    :try_start_2
    iput-object v14, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$2:Ljava/lang/Object;

    iput-object v9, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$3:Ljava/lang/Object;

    iput-object v10, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$4:Ljava/lang/Object;
    :try_end_2
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v15, p6

    :try_start_3
    iput-object v15, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$5:Ljava/lang/Object;

    iput v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    move-object/from16 v3, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lorg/fdroid/repo/RepoV2Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v0, v12, :cond_4

    return-object v12

    :catch_1
    move-exception v0

    :goto_2
    move-object v7, v1

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    move-object/from16 v15, p6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_3

    .line 217
    :goto_4
    iget-object v2, v7, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    sget-object v3, Lorg/fdroid/repo/RepoAdder$fetchRepo$2;->INSTANCE:Lorg/fdroid/repo/RepoAdder$fetchRepo$2;

    invoke-interface {v2, v0, v3}, Lmu/KLogger;->warn(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 220
    sget-object v0, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    invoke-direct {v7, v8, v0, v9, v10}, Lorg/fdroid/repo/RepoAdder;->getTempRepo(Landroid/net/Uri;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    .line 221
    new-instance v2, Lorg/fdroid/repo/RepoV1Fetcher;

    iget-object v3, v7, Lorg/fdroid/repo/RepoAdder;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iget-object v4, v7, Lorg/fdroid/repo/RepoAdder;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v5, v7, Lorg/fdroid/repo/RepoAdder;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    invoke-direct {v2, v3, v4, v5}, Lorg/fdroid/repo/RepoV1Fetcher;-><init>(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;)V

    const/4 v3, 0x0

    .line 222
    iput-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$0:Ljava/lang/Object;

    iput-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$2:Ljava/lang/Object;

    iput-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$3:Ljava/lang/Object;

    iput-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$4:Ljava/lang/Object;

    iput-object v3, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->L$5:Ljava/lang/Object;

    iput v13, v11, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    move-object/from16 p1, v2

    move-object/from16 p2, v8

    move-object/from16 p3, v0

    move-object/from16 p4, v15

    move-object/from16 p5, v14

    move-object/from16 p6, v11

    invoke-virtual/range {p1 .. p6}, Lorg/fdroid/repo/RepoV1Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_4

    return-object v12

    .line 224
    :cond_4
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic fetchRepositoryInt$database_release$default(Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/repo/RepoAdder;->fetchRepositoryInt$database_release(Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getFetchResult(Ljava/lang/String;Lorg/fdroid/database/Repository;)Lorg/fdroid/repo/FetchResult;
    .locals 8

    .line 229
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder;->repositoryDao:Lorg/fdroid/database/RepositoryDaoInt;

    .line 230
    invoke-interface {v1, v0}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    .line 231
    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 235
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [C

    aput-char v4, v5, v3

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 237
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getMirrors$database_release()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/fdroid/database/Mirror;

    invoke-virtual {v6}, Lorg/fdroid/database/Mirror;->getUrl()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [C

    aput-char v4, v7, v3

    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 241
    sget-object p1, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;->INSTANCE:Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    goto :goto_1

    .line 243
    :cond_3
    sget-object p1, Lorg/fdroid/repo/FetchResult$IsNewRepository;->INSTANCE:Lorg/fdroid/repo/FetchResult$IsNewRepository;

    :goto_1
    return-object p1

    .line 248
    :cond_4
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p2

    new-array v5, v1, [C

    aput-char v4, v5, v3

    invoke-static {p2, v5}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 250
    new-instance p1, Lorg/fdroid/repo/FetchResult$IsExistingRepository;

    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/fdroid/repo/FetchResult$IsExistingRepository;-><init>(J)V

    return-object p1

    .line 254
    :cond_5
    invoke-static {v0, v3, v1, v2}, Lorg/fdroid/database/Repository;->getAllMirrors$default(Lorg/fdroid/database/Repository;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 255
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/fdroid/download/Mirror;

    invoke-virtual {v6}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [C

    aput-char v4, v7, v3

    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v2, v5

    :cond_7
    if-nez v2, :cond_8

    .line 257
    new-instance p1, Lorg/fdroid/repo/FetchResult$IsNewMirror;

    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/fdroid/repo/FetchResult$IsNewMirror;-><init>(J)V

    goto :goto_2

    .line 259
    :cond_8
    new-instance p1, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/fdroid/repo/FetchResult$IsExistingMirror;-><init>(J)V

    :goto_2
    return-object p1

    .line 229
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Certificate was null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getTempRepo(Landroid/net/Uri;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;
    .locals 16

    .line 385
    new-instance v15, Lorg/fdroid/database/Repository;

    const-wide/16 v1, 0x0

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "toString(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    const-string v7, "This is fake and will be replaced by real cert before saving in DB."

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    move-object v0, v15

    move-object/from16 v6, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 385
    invoke-direct/range {v0 .. v14}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method private final hasDisallowInstallUnknownSources(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Landroid/os/UserManager;

    .line 373
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "no_install_unknown_sources"

    if-ge v0, v1, :cond_0

    .line 375
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 376
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no_install_unknown_sources_globally"

    .line 377
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 373
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No UserManager available."

    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final abortAddingRepo$database_release()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 329
    sget-object v1, Lorg/fdroid/repo/None;->INSTANCE:Lorg/fdroid/repo/None;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->fetchJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addArchiveRepo$database_release(Lorg/fdroid/database/Repository;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/Repository;",
            "Ljava/net/Proxy;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 335
    new-instance v1, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;-><init>(Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoAdder;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final addFetchedRepository$database_release()Lorg/fdroid/database/Repository;
    .locals 12

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 266
    sget-object v1, Lorg/fdroid/repo/Adding;->INSTANCE:Lorg/fdroid/repo/Adding;

    invoke-interface {v0, v1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->fetchJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 269
    invoke-static {v0, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 272
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/fdroid/repo/Fetching;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/fdroid/repo/Fetching;

    :cond_2
    if-eqz v2, :cond_c

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 274
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v2}, Lorg/fdroid/repo/Fetching;->getReceivedRepo()Lorg/fdroid/database/Repository;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 278
    invoke-virtual {v2}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 282
    instance-of v3, v1, Lorg/fdroid/repo/FetchResult$IsExistingRepository;

    if-nez v3, :cond_9

    .line 283
    instance-of v3, v1, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    if-nez v3, :cond_8

    .line 284
    instance-of v3, v1, Lorg/fdroid/repo/FetchResult$IsNewRepository;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, v1, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    if-eqz v3, :cond_6

    .line 287
    :goto_0
    new-instance v3, Lorg/fdroid/database/NewRepository;

    .line 288
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepository$database_release()Lorg/fdroid/database/CoreRepository;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fdroid/database/CoreRepository;->getName()Ljava/util/Map;

    move-result-object v5

    .line 289
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepository$database_release()Lorg/fdroid/database/CoreRepository;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fdroid/database/CoreRepository;->getIcon()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :cond_4
    move-object v6, v4

    .line 290
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v8

    .line 292
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 293
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v10

    .line 294
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v11

    move-object v4, v3

    .line 287
    invoke-direct/range {v4 .. v11}, Lorg/fdroid/database/NewRepository;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 296
    new-instance v4, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, v1, v2}, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/repo/FetchResult;Lorg/fdroid/repo/Fetching;)V

    invoke-interface {v0, v4}, Lorg/fdroid/database/FDroidDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/database/Repository;

    goto :goto_1

    .line 292
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Repo had no certificate"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_6
    instance-of v0, v1, Lorg/fdroid/repo/FetchResult$IsNewMirror;

    if-eqz v0, :cond_7

    .line 312
    check-cast v1, Lorg/fdroid/repo/FetchResult$IsNewMirror;

    invoke-virtual {v1}, Lorg/fdroid/repo/FetchResult$IsNewMirror;->getExistingRepoId$database_release()J

    move-result-wide v0

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 313
    new-instance v4, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, v1, v2}, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/repo/RepoAdder;JLorg/fdroid/repo/Fetching;)V

    invoke-interface {v3, v4}, Lorg/fdroid/database/FDroidDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/database/Repository;

    :goto_1
    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 324
    new-instance v2, Lorg/fdroid/repo/Added;

    invoke-direct {v2, v0}, Lorg/fdroid/repo/Added;-><init>(Lorg/fdroid/database/Repository;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-object v0

    .line 313
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 283
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mirror exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repo exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No fetchResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No repo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fetchRepository$database_release(Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v4, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;-><init>(Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder;->fetchJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final fetchRepositoryInt$database_release(Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/Proxy;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p3

    instance-of v1, v0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;

    iget v2, v1, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->label:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;

    invoke-direct {v1, v9, v0}, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;-><init>(Lorg/fdroid/repo/RepoAdder;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 122
    iget v1, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->label:I

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    iget-object v1, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/fdroid/repo/RepoAdder;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fdroid/index/SigningException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v4

    move-object v0, v5

    move-object v5, v2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v9, Lorg/fdroid/repo/RepoAdder;->context:Landroid/content/Context;

    .line 126
    invoke-direct {v9, v0}, Lorg/fdroid/repo/RepoAdder;->hasDisallowInstallUnknownSources(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 127
    new-instance v1, Lorg/fdroid/repo/AddRepoError;

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->UNKNOWN_SOURCES_DISALLOWED:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v1, v2, v12, v11, v12}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 128
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_3
    iget-object v0, v9, Lorg/fdroid/repo/RepoAdder;->repoUriGetter:Lorg/fdroid/repo/RepoUriGetter;

    move-object/from16 v1, p1

    .line 131
    invoke-virtual {v0, v1}, Lorg/fdroid/repo/RepoUriGetter;->getUri(Ljava/lang/String;)Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;

    move-result-object v0

    iget-object v1, v9, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsed URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v1, "content"

    const-string v2, "file"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "toString(...)"

    if-nez v1, :cond_4

    .line 134
    sget-object v1, Lorg/fdroid/download/HttpManager;->Companion:Lorg/fdroid/download/HttpManager$Companion;

    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/fdroid/download/HttpManager$Companion;->isInvalidHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 137
    new-instance v2, Lorg/fdroid/repo/AddRepoError;

    sget-object v3, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v2, v3, v1}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 140
    :cond_4
    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v3, "archive"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v9, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 141
    new-instance v1, Lorg/fdroid/repo/AddRepoError;

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->IS_ARCHIVE_REPO:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v1, v2, v12, v11, v12}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 144
    :cond_5
    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v7, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v15

    .line 147
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 148
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 151
    new-instance v21, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;

    move-object/from16 v1, v21

    move-object v2, v14

    move-object v3, v6

    move-object/from16 v4, p0

    move-object v5, v15

    move-object v11, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v9, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 170
    new-instance v2, Lorg/fdroid/repo/Fetching;

    iget-object v3, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lorg/fdroid/database/Repository;

    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lorg/fdroid/repo/FetchResult;

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object v13, v2

    move-object v5, v14

    move-object v14, v15

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v20}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 174
    :try_start_1
    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getUsername()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/fdroid/repo/RepoUriGetter$NormalizedUri;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v9, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$0:Ljava/lang/Object;

    iput-object v4, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$1:Ljava/lang/Object;

    iput-object v5, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$2:Ljava/lang/Object;

    iput-object v6, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$3:Ljava/lang/Object;

    iput-object v11, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->L$4:Ljava/lang/Object;

    iput v7, v8, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$1;->label:I

    move-object/from16 v1, p0

    move-object v14, v4

    move-object/from16 v4, p2

    move-object v15, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v0

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v8}, Lorg/fdroid/repo/RepoAdder;->fetchRepo(Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lorg/fdroid/index/SigningException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    if-ne v0, v10, :cond_6

    return-object v10

    :cond_6
    move-object v0, v9

    move-object v1, v11

    move-object v5, v13

    move-object v3, v15

    .line 193
    :goto_2
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lorg/fdroid/database/Repository;

    if-nez v4, :cond_7

    .line 195
    iget-object v0, v0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lorg/fdroid/repo/AddRepoError;

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v12, v3, v12}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 197
    :cond_7
    iget-object v0, v0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v8, Lorg/fdroid/repo/Fetching;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lorg/fdroid/repo/FetchResult;

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, v14

    invoke-direct/range {v2 .. v7}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;Z)V

    invoke-interface {v0, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 199
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_4
    move-exception v0

    move-object v5, v9

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v5, v9

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v5, v9

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v5, v9

    goto :goto_7

    .line 188
    :goto_4
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    sget-object v2, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$5;->INSTANCE:Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$5;

    invoke-interface {v1, v0, v2}, Lmu/KLogger;->error(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 189
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lorg/fdroid/repo/AddRepoError;

    sget-object v3, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v2, v3, v0}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 184
    :goto_5
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    sget-object v2, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$4;->INSTANCE:Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$4;

    invoke-interface {v1, v0, v2}, Lmu/KLogger;->error(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 185
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lorg/fdroid/repo/AddRepoError;

    sget-object v3, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v2, v3, v0}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 186
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 180
    :goto_6
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    sget-object v2, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$3;->INSTANCE:Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$3;

    invoke-interface {v1, v0, v2}, Lmu/KLogger;->error(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 181
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lorg/fdroid/repo/AddRepoError;

    sget-object v3, Lorg/fdroid/repo/AddRepoError$ErrorType;->IO_ERROR:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v2, v3, v0}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 182
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 176
    :goto_7
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->log:Lmu/KLogger;

    sget-object v2, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$2;->INSTANCE:Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$2;

    invoke-interface {v1, v0, v2}, Lmu/KLogger;->error(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 177
    iget-object v1, v5, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lorg/fdroid/repo/AddRepoError;

    sget-object v3, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_FINGERPRINT:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-direct {v2, v3, v0}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 178
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final getAddRepoState$database_release()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder;->addRepoState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method
